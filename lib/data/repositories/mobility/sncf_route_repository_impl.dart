import 'package:app_pym/core/network/network_info.dart';
import 'package:app_pym/core/constants/mobility.dart';
import 'package:app_pym/data/datasources/sncf_local_data_source.dart';
import 'package:app_pym/data/datasources/sncf_remote_data_source.dart';
import 'package:app_pym/data/models/mobility/route_model.dart';
import 'package:app_pym/domain/entities/mobility/route.dart';
import 'package:app_pym/domain/repositories/mobility/route_repository.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@prod
@LazySingleton(as: SNCFRouteRepository)
class SNCFRouteRepositoryImpl implements SNCFRouteRepository {
  final SNCFRemoteDataSource remoteDataSource;
  final SNCFLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  const SNCFRouteRepositoryImpl({
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
    }

    final routeModels = localDataSource.fetchRoutes();
    final tripModels = localDataSource.fetchTrips();
    final calendarModels = localDataSource.fetchCalendars();
    final stopTimeModels = localDataSource.fetchStopTimes();
    final stopModels = localDataSource.fetchStops();

    //la seule route qui nous intéresse
    final routeModel = (await routeModels).firstWhere((routeModel) =>
        routeModel.route_id.compareTo(MobilityConstants.trainLine) == 0);
    final route = routeModel.toEntity(
      calendarModels: await calendarModels,
      stopModels: await stopModels,
      stopTimeModels: await stopTimeModels,
      tripModels: await tripModels,
    );
    yield route;
  }
}
