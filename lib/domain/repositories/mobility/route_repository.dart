import 'package:app_pym/domain/entities/mobility/route.dart';

abstract class RouteRepository {
  Stream<Route> fetchRoutes();
}

abstract class SNCFRouteRepository extends RouteRepository {}

abstract class MetropoleRouteRepository extends RouteRepository {}
