import 'package:app_pym/core/constants/mobility.dart';
import 'package:app_pym/core/network/network_info.dart';
import 'package:app_pym/data/datasources/app_pym_local_data_source.dart';
import 'package:app_pym/data/datasources/app_pym_remote_data_source.dart';
import 'package:app_pym/data/mappers/mobility/calendar_mapper.dart';
import 'package:app_pym/data/mappers/mobility/route_mapper.dart';
import 'package:app_pym/data/mappers/mobility/stop_mapper.dart';
import 'package:app_pym/data/mappers/mobility/stop_time_mapper.dart';
import 'package:app_pym/data/mappers/mobility/trip_mapper.dart';
import 'package:app_pym/data/models/mobility/calendar_model.dart';
import 'package:app_pym/data/models/mobility/route_model.dart';
import 'package:app_pym/data/models/mobility/stop_model.dart';
import 'package:app_pym/data/models/mobility/stop_time_model.dart';
import 'package:app_pym/data/models/mobility/trip_model.dart';
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
@RegisterAs(RouteRepository)
@lazySingleton
@injectable
class RouteRepositoryImpl implements RouteRepository {
  final AppPYMRemoteDataSource remoteDataSource;
  final AppPYMLocalDataSource localDataSource;
  final NetworkInfo networkInfo;
  final RouteMapper routeMapper;
  final TripMapper tripMapper;
  final CalendarMapper calendarMapper;
  final StopTimeMapper stopTimeMapper;
  final StopMapper stopMapper;

  const RouteRepositoryImpl({
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
  Future<List<Route>> fetchRoute(TransportType type) {
    return _fetchRoute(type);
  }

  Future<List<Route>> _fetchRoute(TransportType type) async {
    if (await networkInfo.result != ConnectivityResult.none) {
      final stream = remoteDataSource.download(type);
      await localDataSource.writeFile(stream);
    }

    final List<RouteModel> routeModels = await localDataSource.fetchRoutes();
    final List<TripModel> tripModels = await localDataSource.fetchTrips();
    final List<CalendarModel> calendarModels =
        await localDataSource.fetchCalendars();
    final List<StopTimeModel> stopTimeModels =
        await localDataSource.fetchStopTimes();
    final List<StopModel> stopModels = await localDataSource.fetchStops();

    final List<Stop> stops = stopModels.map(stopMapper.mapTo).toList();
    final List<StopTime> stopTimes = stopTimeModels
        .map(stopTimeMapper.mapTo)
        .toList()
          ..forEach((stop_time) => stop_time.stops.addAll(
              stops.where((stop) => stop_time.stop_id == stop.stop_id)));
    final List<Calendar> calendars =
        calendarModels.map(calendarMapper.mapTo).toList();
    final List<Trip> trips = tripModels.map(tripMapper.mapTo).toList()
      ..forEach((trip) => fillTrip(trip, calendars, stopTimes));
    List<String> lines;
    if (type == TransportType.Bus) {
      lines = MobilityConstants.busLines;
    } else {
      lines = MobilityConstants.trainLines;
    }
    final List<Route> routes = routeModels
        .where((routeModel) => lines.contains(routeModel.route_id))
        .map(routeMapper.mapTo)
        .toList()
          ..forEach((route) => route.trips
              .addAll(trips.where((trip) => route.route_id == trip.route_id)));

    return routes;
  }

  void fillTrip(Trip trip, List<Calendar> calendars, List<StopTime> stopTimes) {
    trip.calendar.addAll(
        calendars.where((calendar) => trip.service_id == calendar.service_id));
    trip.stop_time.addAll(
        stopTimes.where((stopTime) => trip.trip_id == stopTime.trip_id));
  }
}
