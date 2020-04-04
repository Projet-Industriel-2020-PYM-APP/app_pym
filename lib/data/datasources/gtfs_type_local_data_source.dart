import 'package:app_pym/data/models/mobility/calendar_model.dart';
import 'package:app_pym/data/models/mobility/route_model.dart';
import 'package:app_pym/data/models/mobility/stop_model.dart';
import 'package:app_pym/data/models/mobility/stop_time_model.dart';
import 'package:app_pym/data/models/mobility/trip_model.dart';

abstract class GTFSTypeLocalDataSource {
  Future<List<CalendarModel>> fetchCalendars();
  Future<List<RouteModel>> fetchRoutes();
  Future<List<StopModel>> fetchStops();
  Future<List<StopTimeModel>> fetchStopTimes();
  Future<List<TripModel>> fetchTrips();
  Future<void> writeFile(Stream<List<int>> bytes);
}
