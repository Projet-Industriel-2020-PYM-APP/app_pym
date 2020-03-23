import 'package:app_pym/domain/entities/mobility/bus_calendar.dart';

abstract class BusCalendarsRepository {
  Future<List<BusCalendar>> getBusCalendar(String repo);
}
