import 'dart:io';

import 'package:app_pym/core/constants/mobility.dart';
import 'package:app_pym/data/models/mobility/route_model.dart';
import 'package:app_pym/data/models/mobility/trip_model.dart';

extension GTFSUtils on File {
  List<RouteModel> parseRoutes() {
    final List<RouteModel> routes = <RouteModel>[];

    // Field parse
    /// String = field. int = GTFS index.
    final List<String> lines = this.readAsLinesSync();
    final data = lines.first.parseFields();

    // Fill daata
    for (var i = 1; i < lines.length; i++) {
      final List<String> fields = lines[i].split(',');
      routes.add(RouteModel(
        route_id: fields[data['route_id']],
        route_short_name: fields[data['route_short_name']],
        route_long_name: fields[data['route_long_name']],
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

    // Fill daata
    for (var i = 1; i < lines.length; i++) {
      final List<String> fields = lines[i].split(',');
      routes.add(TripModel(
        route_id: fields[data['route_id']],
        trip_id: fields[data['trip_id']],
        trip_headsign: fields[data['trip_headsign']],
        direction_id: Direction.values[int.parse(fields[data['direction_id']])],
      ));
    }
    return routes;
  }
}

extension on String {
  Map<String, int> parseFields() {
    final Map<String, int> data = <String, int>{};
    final List<String> fields = this.split(',');
    for (var i = 0; i < fields.length; i++) {
      data.putIfAbsent(fields[i], () => i);
    }
    return data;
  }
}
