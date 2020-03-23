import 'package:app_pym/domain/entities/mobility/bus_stop_time.dart';

abstract class BusStopTimesRepository {
  Future<List<BusStopTime>> getBusTime(String repo);
}
