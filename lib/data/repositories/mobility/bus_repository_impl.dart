import 'package:app_pym/core/network/network_info.dart';
import 'package:app_pym/data/datasources/appPYM_local_data_source.dart';
import 'package:app_pym/data/datasources/appPYM_remote_data_source.dart';
import 'package:app_pym/data/mappers/mobility/bus_mapper.dart';
import 'package:app_pym/domain/entities/mobility/bus.dart';
import 'package:app_pym/domain/repositories/mobility/bus_repository.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@prod
@RegisterAs(BusRepository)
@lazySingleton
@injectable
class BusRepositoryImpl implements BusRepository {
  final AppPYMRemoteDataSource remoteDataSource;
  final AppPYMLocalDataSource localDataSource;
  final NetworkInfo networkInfo;
  final BusMapper mapper;

  const BusRepositoryImpl({
    @required this.localDataSource,
    @required this.remoteDataSource,
    @required this.networkInfo,
    @required this.mapper,
  });

  @override
  Future<List<Bus>> getBus(String repo) {
    return _getBus(repo);
  }

  Future<List<Bus>> _getBus(String repo) async {
    if (await networkInfo.result != ConnectivityResult.none) {
      final remoteBus = await remoteDataSource.fetchBus();
      await localDataSource.cacheBus(remoteBus, repo);
      return remoteBus.map(mapper.mapTo).toList();
    } else {
      final localBus = await localDataSource.fetchLastBus(repo);
      return localBus.map(mapper.mapTo).toList();
    }
  }
}
