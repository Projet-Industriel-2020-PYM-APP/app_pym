import 'package:app_pym/core/constants/mobility.dart';
import 'package:app_pym/core/network/network_info.dart';
import 'package:app_pym/data/datasources/sncf_local_data_source.dart';
import 'package:app_pym/data/datasources/sncf_remote_data_source.dart';
import 'package:app_pym/data/mappers/mobility/calendar_mapper.dart';
import 'package:app_pym/data/mappers/mobility/route_mapper.dart';
import 'package:app_pym/data/mappers/mobility/stop_mapper.dart';
import 'package:app_pym/data/mappers/mobility/stop_time_mapper.dart';
import 'package:app_pym/data/mappers/mobility/trip_mapper.dart';
import 'package:app_pym/domain/entities/mobility/calendar.dart';
import 'package:app_pym/domain/entities/mobility/route.dart';
import 'package:app_pym/domain/entities/mobility/stop.dart';
import 'package:app_pym/domain/entities/mobility/stop_time.dart';
import 'package:app_pym/domain/entities/mobility/trip.dart';
import 'package:app_pym/domain/repositories/mobility/route_repository.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@prod
@RegisterAs(SNCFRouteRepository)
@lazySingleton
@injectable
class SNCFRouteRepositoryImpl implements SNCFRouteRepository {
  final SNCFRemoteDataSource remoteDataSource;
  final SNCFLocalDataSource localDataSource;
  final NetworkInfo networkInfo;
  final RouteMapper routeMapper;
  final TripMapper tripMapper;
  final CalendarMapper calendarMapper;
  final StopTimeMapper stopTimeMapper;
  final StopMapper stopMapper;

  const SNCFRouteRepositoryImpl({
    @required this.localDataSource,
    @required this.remoteDataSource,
    @required this.networkInfo,
    @required this.routeMapper,
    @required this.tripMapper,
    @required this.calendarMapper,
    @required this.stopTimeMapper,
    @required this.stopMapper,
  });

  @override
  Stream<Route> fetchRoutes() {
    return _fetchRoute();
  }

  Stream<Route> _fetchRoute() async* {
    if (await networkInfo.result != ConnectivityResult.none) {
      final timestamp = await remoteDataSource.timestamp;
      if (timestamp != localDataSource.timestamp) {
        await localDataSource.setTimestamp(timestamp);
        final stream = remoteDataSource.download();
        await localDataSource.writeFile(stream);
      }
    }

    final routeModels = localDataSource.fetchRoutes();
    final tripModels = localDataSource.fetchTrips();
    final calendarModels = localDataSource.fetchCalendars();
    final stopTimeModels = localDataSource.fetchStopTimes();
    final stopModels = localDataSource.fetchStops();

    final List<Stop> stops = (await stopModels).map(stopMapper.mapTo).toList();
    final List<StopTime> stopTimes =
        (await stopTimeModels).map((stopTimeModel) {
      final stopTime = stopTimeMapper.mapTo(stopTimeModel);
      return stopTime.union(stops);
    }).toList();

    final List<Calendar> calendars =
        (await calendarModels).map(calendarMapper.mapTo).toList();

    final List<Trip> trips = (await tripModels).map((tripModel) {
      final trip = tripMapper.mapTo(tripModel);
      return trip.union(calendars, stopTimes);
    }).toList();

    for (final routeModel in await routeModels) {
      final route = routeMapper.mapTo(routeModel);
      yield route.union(trips);
    }
  }
}
