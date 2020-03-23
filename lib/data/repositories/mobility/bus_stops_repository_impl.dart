import 'package:app_pym/data/datasources/appPYM_local_data_source.dart';
import 'package:app_pym/data/datasources/appPYM_remote_data_source.dart';
import 'package:app_pym/core/network/network_info.dart';
import 'package:app_pym/domain/entities/mobility/bus_stop.dart';
import 'package:app_pym/data/mappers/mobility/bus_stop_mapper.dart';
import 'package:app_pym/domain/repositories/mobility/bus_stops_repository.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@prod
@RegisterAs(BusStopsRepository)
@lazySingleton
@injectable
class BusStopsRepositoryImpl implements BusStopsRepository {
  final AppPYMRemoteDataSource remoteDataSource;
  final AppPYMLocalDataSource localDataSource;
  final NetworkInfo networkInfo;
  final BusStopMapper mapper;

  const BusStopsRepositoryImpl({
    @required this.localDataSource,
    @required this.remoteDataSource,
    @required this.networkInfo,
    @required this.mapper,
  });

  @override
  Future<List<BusStop>> getBusStop(String repo) {
    return _getBusStop(repo);
  }

  Future<List<BusStop>> _getBusStop(String repo) async {
    if (await networkInfo.result != ConnectivityResult.none) {
      final remoteBus = await remoteDataSource.fetchBusStop();
      await localDataSource.cacheBusStop(remoteBus, repo);
      return remoteBus.map(mapper.mapTo).toList();
    } else {
      final localBus = await localDataSource.fetchLastBusStop(repo);
      return localBus.map(mapper.mapTo).toList();
    }
  }
}
