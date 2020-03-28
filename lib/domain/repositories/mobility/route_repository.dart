import 'package:app_pym/domain/entities/mobility/route.dart';

abstract class RouteRepository {
  Future<List<Route>> fetchRoute();
}
