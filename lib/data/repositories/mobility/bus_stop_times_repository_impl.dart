import 'package:app_pym/data/datasources/appPYM_local_data_source.dart';
import 'package:app_pym/data/datasources/appPYM_remote_data_source.dart';
import 'package:app_pym/data/mappers/mobility/bus_stop_time_mapper.dart';
import 'package:app_pym/domain/entities/mobility/bus_stop_time.dart';
import 'package:app_pym/domain/repositories/mobility/bus_stop_times_repository.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/network/network_info.dart';

@prod
@RegisterAs(BusStopTimesRepository)
@lazySingleton
@injectable
class BusStopTimesRepositoryImpl implements BusStopTimesRepository {
  final AppPYMRemoteDataSource remoteDataSource;
  final AppPYMLocalDataSource localDataSource;
  final NetworkInfo networkInfo;
  final BusStopTimeMapper mapper;

  const BusStopTimesRepositoryImpl({
    @required this.localDataSource,
    @required this.remoteDataSource,
    @required this.networkInfo,
    @required this.mapper,
  });

  @override
  Future<List<BusStopTime>> getBusTime(String repo) {
    return _getBusTime(repo);
  }

  Future<List<BusStopTime>> _getBusTime(String repo) async {
    if (await networkInfo.result != ConnectivityResult.none) {
      final remoteBusTime = await remoteDataSource.fetchBusTime();
      await localDataSource.cacheBusTime(remoteBusTime, repo);
      return remoteBusTime.map(mapper.mapTo).toList();
    } else {
      final localBusTime = await localDataSource.fetchLastBusTime(repo);
      return localBusTime.map(mapper.mapTo).toList();
    }
  }
}
