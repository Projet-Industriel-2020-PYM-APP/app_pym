import 'package:app_pym/core/network/network_info.dart';
import 'package:app_pym/data/datasources/appPYM_local_data_source.dart';
import 'package:app_pym/data/datasources/appPYM_remote_data_source.dart';
import 'package:app_pym/data/mappers/mobility/bus_trip_mapper.dart';
import 'package:app_pym/domain/entities/mobility/bus_trip.dart';
import 'package:app_pym/domain/repositories/mobility/bus_trips_repository.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@prod
@RegisterAs(BusTripsRepository)
@lazySingleton
@injectable
class BusTripsRepositoryImpl implements BusTripsRepository {
  final AppPYMRemoteDataSource remoteDataSource;
  final AppPYMLocalDataSource localDataSource;
  final NetworkInfo networkInfo;
  final BusTripMapper mapper;

  const BusTripsRepositoryImpl({
    @required this.localDataSource,
    @required this.remoteDataSource,
    @required this.networkInfo,
    @required this.mapper,
  });

  @override
  Future<List<BusTrip>> getBusTrip(String repo) {
    return _getBusTrip(repo);
  }

  Future<List<BusTrip>> _getBusTrip(String repo) async {
    if (await networkInfo.result != ConnectivityResult.none) {
      final remoteBusTrip = await remoteDataSource.fetchBusTrip();
      await localDataSource.cacheBusTrip(remoteBusTrip, repo);
      return remoteBusTrip.map(mapper.mapTo).toList();
    } else {
      final localBusTrip = await localDataSource.fetchLastBusTrip(repo);
      return localBusTrip.map(mapper.mapTo).toList();
    }
  }
}
