import 'package:app_pym/domain/entities/mobility/bus_stop.dart';

abstract class BusStopsRepository {
  Future<List<BusStop>> getBusStop(String repo);
}
