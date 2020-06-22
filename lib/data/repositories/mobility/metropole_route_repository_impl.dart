import 'package:app_pym/core/constants/mobility.dart';
import 'package:app_pym/core/error/exceptions.dart';
import 'package:app_pym/core/network/network_info.dart';
import 'package:app_pym/data/datasources/metropole_local_data_source.dart';
import 'package:app_pym/data/datasources/metropole_remote_data_source.dart';
import 'package:app_pym/data/models/mobility/calendar_model.dart';
import 'package:app_pym/data/models/mobility/route_model.dart';
import 'package:app_pym/data/models/mobility/stop_model.dart';
import 'package:app_pym/data/models/mobility/stop_time_model.dart';
import 'package:app_pym/data/models/mobility/trip_model.dart';
import 'package:app_pym/domain/entities/mobility/route.dart';
import 'package:app_pym/domain/repositories/mobility/route_repository.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@prod
@LazySingleton(as: MetropoleRouteRepository)
class MetropoleRouteRepositoryImpl implements MetropoleRouteRepository {
  final MetropoleRemoteDataSource remoteDataSource;
  final MetropoleLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  const MetropoleRouteRepositoryImpl({
    @required this.localDataSource,
    @required this.remoteDataSource,
    @required this.networkInfo,
  });

  @override
  Stream<Route> fetchRoutes() {
    return _fetchRoute();
  }

  Stream<Route> _fetchRoute() async* {
    if (await networkInfo.result != ConnectivityResult.none) {
      final timestamp = await remoteDataSource.timestamp;
      if (timestamp != await localDataSource.timestamp) {
        await localDataSource.setTimestamp(timestamp);
        final stream = remoteDataSource.download();
        await localDataSource.writeFile(stream);
      }
    } else if (!(await localDataSource.fileExists)) {
      await localDataSource.writeFile(localDataSource.useAsset());
    }

    List<RouteModel> routeModels;
    List<TripModel> tripModels;
    List<CalendarModel> calendarModels;
    List<StopTimeModel> stopTimeModels;
    List<StopModel> stopModels;
    try {
      routeModels = await localDataSource.fetchRoutes();
    } on CacheException catch (_) {
      await localDataSource.writeFile(localDataSource.useAsset());
      await localDataSource.setTimestamp(DateTime(2019));
      routeModels = await localDataSource.fetchRoutes();
    }
    try {
      tripModels = await localDataSource.fetchTrips();
    } on CacheException catch (_) {
      await localDataSource.writeFile(localDataSource.useAsset());
      await localDataSource.setTimestamp(DateTime(2019));
      tripModels = await localDataSource.fetchTrips();
    }
    try {
      calendarModels = await localDataSource.fetchCalendars();
    } on CacheException catch (_) {
      await localDataSource.writeFile(localDataSource.useAsset());
      await localDataSource.setTimestamp(DateTime(2019));
      calendarModels = await localDataSource.fetchCalendars();
    }
    try {
      stopTimeModels = await localDataSource.fetchStopTimes();
    } on CacheException catch (_) {
      await localDataSource.writeFile(localDataSource.useAsset());
      await localDataSource.setTimestamp(DateTime(2019));
      stopTimeModels = await localDataSource.fetchStopTimes();
    }
    try {
      stopModels = await localDataSource.fetchStops();
    } on CacheException catch (_) {
      await localDataSource.writeFile(localDataSource.useAsset());
      await localDataSource.setTimestamp(DateTime(2019));
      stopModels = await localDataSource.fetchStops();
    }

    //la seule route qui nous intéresse
    final routeModel = routeModels.firstWhere(
        (routeModel) => routeModel.route_id == MobilityConstants.busLine);
    final route = routeModel.toEntity(
      calendarModels: calendarModels,
      stopModels: stopModels,
      stopTimeModels: stopTimeModels,
      tripModels: tripModels,
    );
    yield route;
  }
}
