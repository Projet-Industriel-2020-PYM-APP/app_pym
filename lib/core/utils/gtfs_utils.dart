import 'dart:io';

import 'package:app_pym/core/constants/mobility.dart';
import 'package:app_pym/core/utils/string_utils.dart';
import 'package:app_pym/data/models/mobility/calendar_model.dart';
import 'package:app_pym/data/models/mobility/route_model.dart';
import 'package:app_pym/data/models/mobility/stop_model.dart';
import 'package:app_pym/data/models/mobility/stop_time_model.dart';
import 'package:app_pym/data/models/mobility/trip_model.dart';

extension GTFSUtils on File {
  List<RouteModel> parseRoutes() {
    final List<RouteModel> routes = <RouteModel>[];

    // Field parse
    /// String = field. int = GTFS index.
    final List<String> lines = this.readAsLinesSync();
    final data = lines.first.parseFields();

    // Fill data
    for (var i = 1; i < lines.length; i++) {
      final List<String> fields = lines[i].split(',');
      routes.add(RouteModel(
        route_id: fields[data['route_id']],
        route_short_name: fields[data['route_short_name']].replaceAll('"', ''),
        route_long_name: fields[data['route_long_name']].replaceAll('"', ''),
      ));
    }
    return routes;
  }

  List<TripModel> parseTrips() {
    final List<TripModel> routes = <TripModel>[];

    // Field parse
    /// String = field. int = GTFS index.
    final List<String> lines = this.readAsLinesSync();
    final data = lines.first.parseFields();

    // Fill data
    for (var i = 1; i < lines.length; i++) {
      final List<String> fields = lines[i].split(',');
      routes.add(TripModel(
        service_id: fields[data['service_id']],
        route_id: fields[data['route_id']],
        trip_id: fields[data['trip_id']],
        trip_headsign: fields[data['trip_headsign']],
        direction_id: Sens.values[int.parse(fields[data['direction_id']])],
      ));
    }
    return routes;
  }

  List<CalendarModel> parseCalendars() {
    final List<CalendarModel> calendars = <CalendarModel>[];

    // Field parse
    /// String = field. int = GTFS index.
    final List<String> lines = this.readAsLinesSync();
    final data = lines.first.parseFields();

    // Fill data
    for (var i = 1; i < lines.length; i++) {
      final List<String> fields = lines[i].split(',');
      calendars.add(CalendarModel(
        service_id: fields[data['service_id']],
        monday: fields[data['monday']] == "1",
        tuesday: fields[data['tuesday']] == "1",
        wednesday: fields[data['wednesday']] == "1",
        thursday: fields[data['thursday']] == "1",
        friday: fields[data['friday']] == "1",
        saturday: fields[data['saturday']] == "1",
        sunday: fields[data['sunday']] == "1",
        start_date: fields[data['start_date']],
        end_date: fields[data['end_date']],
      ));
    }
    return calendars;
  }

  List<StopModel> parseStops() {
    final List<StopModel> stops = <StopModel>[];

    // Field parse
    /// String = field. int = GTFS index.
    final List<String> lines = this.readAsLinesSync();
    final data = lines.first.parseFields();

    // Fill data
    for (var i = 1; i < lines.length; i++) {
      final List<String> fields = lines[i].split(',');
      if (!fields[data['stop_id']].startsWith("StopArea")) {
        stops.add(StopModel(
          stop_id: fields[data['stop_id']],
          stop_name: fields[data['stop_name']].replaceAll('"', ''),
          stop_lat: fields[data['stop_lat']],
          stop_long: fields[data['stop_lon']],
        ));
      }
    }
    return stops;
  }

  List<StopTimeModel> parseStopTimes() {
    final List<StopTimeModel> stopTimes = <StopTimeModel>[];

    // Field parse
    /// String = field. int = GTFS index.
    final List<String> lines = this.readAsLinesSync();
    final data = lines.first.parseFields();

    // Fill data
    for (var i = 1; i < lines.length; i++) {
      final List<String> fields = lines[i].split(',');
      stopTimes.add(StopTimeModel(
        trip_id: fields[data['trip_id']],
        arrival_time: fields[data['arrival_time']],
        departure_time: fields[data['departure_time']],
        stop_id: fields[data['stop_id']],
        stop_sequence: fields[data['stop_sequence']],
      ));
    }
    return stopTimes;
  }
}
