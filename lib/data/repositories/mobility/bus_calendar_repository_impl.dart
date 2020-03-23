import 'package:app_pym/core/network/network_info.dart';
import 'package:app_pym/data/datasources/appPYM_local_data_source.dart';
import 'package:app_pym/data/datasources/appPYM_remote_data_source.dart';
import 'package:app_pym/data/mappers/mobility/bus_calendar_mapper.dart';
import 'package:app_pym/domain/entities/mobility/bus_calendar.dart';
import 'package:app_pym/domain/repositories/mobility/bus_calendars_repository.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@prod
@RegisterAs(BusCalendarsRepository)
@lazySingleton
@injectable
class BusCalendarsRepositoryImpl implements BusCalendarsRepository {
  final AppPYMRemoteDataSource remoteDataSource;
  final AppPYMLocalDataSource localDataSource;
  final NetworkInfo networkInfo;
  final BusCalendarMapper mapper;

  const BusCalendarsRepositoryImpl({
    @required this.localDataSource,
    @required this.remoteDataSource,
    @required this.networkInfo,
    @required this.mapper,
  });

  @override
  Future<List<BusCalendar>> getBusCalendar(String repo) {
    return _getBusCalendar(repo);
  }

  Future<List<BusCalendar>> _getBusCalendar(String repo) async {
    if (await networkInfo.result != ConnectivityResult.none) {
      final remoteBusCalendar = await remoteDataSource.fetchBusCalendar();
      await localDataSource.cacheBusCalendar(remoteBusCalendar, repo);
      return remoteBusCalendar.map(mapper.mapTo).toList();
    } else {
      final localBusCalendar = await localDataSource.fetchLastBusCalendar(repo);
      return localBusCalendar.map(mapper.mapTo).toList();
    }
  }
}
