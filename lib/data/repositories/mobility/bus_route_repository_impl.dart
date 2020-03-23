import 'package:app_pym/core/network/network_info.dart';
import 'package:app_pym/data/datasources/appPYM_local_data_source.dart';
import 'package:app_pym/data/datasources/appPYM_remote_data_source.dart';
import 'package:app_pym/data/mappers/mobility/bus_route_mapper.dart';
import 'package:app_pym/domain/entities/mobility/bus_route.dart';
import 'package:app_pym/domain/repositories/mobility/bus_routes_repository.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@prod
@RegisterAs(BusRoutesRepository)
@lazySingleton
@injectable
class BusRoutesRepositoryImpl implements BusRoutesRepository {
  final AppPYMRemoteDataSource remoteDataSource;
  final AppPYMLocalDataSource localDataSource;
  final NetworkInfo networkInfo;
  final BusRouteMapper mapper;

  const BusRoutesRepositoryImpl({
    @required this.localDataSource,
    @required this.remoteDataSource,
    @required this.networkInfo,
    @required this.mapper,
  });

  @override
  Future<List<BusRoute>> getBusRoute(String repo) {
    return _getBusRoute(repo);
  }

  Future<List<BusRoute>> _getBusRoute(String repo) async {
    if (await networkInfo.result != ConnectivityResult.none) {
      final remoteBusRoute = await remoteDataSource.fetchBusRoute();
      await localDataSource.cacheBusRoute(remoteBusRoute, repo);
      return remoteBusRoute.map(mapper.mapTo).toList();
    } else {
      final localBusRoute = await localDataSource.fetchLastBusRoute(repo);
      return localBusRoute.map(mapper.mapTo).toList();
    }
  }
}
