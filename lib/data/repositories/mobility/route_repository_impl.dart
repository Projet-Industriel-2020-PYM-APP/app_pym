import 'package:app_pym/core/network/network_info.dart';
import 'package:app_pym/data/datasources/app_pym_local_data_source.dart';
import 'package:app_pym/data/datasources/app_pym_remote_data_source.dart';
import 'package:app_pym/data/mappers/mobility/route_mapper.dart';
import 'package:app_pym/data/mappers/mobility/trip_mapper.dart';
import 'package:app_pym/data/models/mobility/route_model.dart';
import 'package:app_pym/data/models/mobility/trip_model.dart';
import 'package:app_pym/domain/entities/mobility/route.dart';
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

  const RouteRepositoryImpl({
    @required this.localDataSource,
    @required this.remoteDataSource,
    @required this.networkInfo,
    @required this.routeMapper,
    @required this.tripMapper,
  });

  @override
  Future<List<Route>> fetchRoute() {
    return _fetchRoute();
  }

  Future<List<Route>> _fetchRoute() async {
    if (await networkInfo.result != ConnectivityResult.none) {
      final stream = remoteDataSource.download();
      await localDataSource.writeFile(stream);
    }

    final List<RouteModel> routeModels = await localDataSource.fetchRoutes();
    final List<TripModel> tripModels = await localDataSource.fetchTrips();

    final List<Trip> trips = tripModels.map(tripMapper.mapTo).toList();
    final List<Route> routes = routeModels.map(routeMapper.mapTo).toList()
      ..forEach((route) => route.trips
          .addAll(trips.where((trip) => route.route_id == trip.route_id)));

    return routes;
  }
}
