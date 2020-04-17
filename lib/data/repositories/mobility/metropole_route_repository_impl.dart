import 'package:app_pym/core/network/network_info.dart';
import 'package:app_pym/data/datasources/metropole_local_data_source.dart';
import 'package:app_pym/data/datasources/metropole_remote_data_source.dart';
import 'package:app_pym/data/models/mobility/route_model.dart';
import 'package:app_pym/domain/entities/mobility/route.dart';
import 'package:app_pym/domain/repositories/mobility/route_repository.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@prod
@RegisterAs(MetropoleRouteRepository)
@lazySingleton
@injectable
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

    for (final routeModel in await routeModels) {
      final route = routeModel.toEntity(
        calendarModels: await calendarModels,
        stopModels: await stopModels,
        stopTimeModels: await stopTimeModels,
        tripModels: await tripModels,
      );
      yield route;
    }
  }
}
