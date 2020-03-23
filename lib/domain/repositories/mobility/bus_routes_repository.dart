import 'package:app_pym/domain/entities/mobility/bus_route.dart';

abstract class BusRoutesRepository {
  Future<List<BusRoute>> getBusRoute(String repo);
}
