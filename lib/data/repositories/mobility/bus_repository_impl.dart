import 'package:app_pym/core/network/network_info.dart';
import 'package:app_pym/data/datasources/appPYM_local_data_source.dart';
import 'package:app_pym/data/datasources/appPYM_remote_data_source.dart';
import 'package:app_pym/data/mappers/mobility/bus_mapper.dart';
import 'package:app_pym/domain/entities/mobility/bus.dart';
import 'package:app_pym/domain/repositories/mobility/bus_repository.dart';
import 'package:app_pym/presentation/widgets/mobility/bus_aller_display.dart';
import 'package:app_pym/presentation/widgets/mobility/bus_retour_display.dart';
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
  Future<List<Bus>> fetchBus(String repo, int direction) {
    return _fetchBus(repo, direction);
  }

  Future<List<Bus>> _fetchBus(String repo, int direction) async {
    if (await networkInfo.result != ConnectivityResult.none) {
      final remoteBus = await remoteDataSource.fetchBus(direction);
      await localDataSource.cacheBus(remoteBus, repo);
      return sortForDisplay(remoteBus.map(mapper.mapTo).toList(), direction);
    } else {
      final localBus = await localDataSource.fetchLastBus(repo);
      return sortForDisplay(localBus.map(mapper.mapTo).toList(), direction);
    }
  }
}

List<Bus> sortForDisplay(List<Bus> unsortedBus, int direction) {
  List<Bus> order = new List();
  for (Bus index in unsortedBus) {
    if (direction == 1) {
      if (index.stop_name == busRetourStopList[0]) {
        order.add(index);
      }
    } else {
      if (index.stop_name == busAllerStopList[0]) {
        order.add(index);
      }
    }
  }
  order.sort((a, b) => a.time.compareTo(b.time));
  List<Bus> sortedBus = new List();
  int length;
  for (Bus orderIndex in order) {
    for (int index = 0; index < unsortedBus.length ~/ length; index++) {
      if (unsortedBus[index * length].trip_id == orderIndex.trip_id) {
        for (int i = 0; i < length; i++) {
          sortedBus.add(unsortedBus[index + i]);
        }
      }
    }
  }
  return sortedBus;
}
