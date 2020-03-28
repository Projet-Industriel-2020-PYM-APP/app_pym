import 'package:app_pym/core/mappers/mapper.dart';
import 'package:app_pym/data/mappers/mobility/trip_mapper.dart';
import 'package:app_pym/data/models/mobility/route_model.dart';
import 'package:app_pym/domain/entities/mobility/route.dart';
import 'package:app_pym/domain/entities/mobility/trip.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class RouteMapper implements Mapper<Route, RouteModel> {
  final TripMapper tripMapper;
  const RouteMapper({@required this.tripMapper});

  @override
  RouteModel mapFrom(Route entity) {
    return RouteModel(
      route_id: entity.route_id,
      route_long_name: entity.route_long_name,
      route_short_name: entity.route_short_name,
    );
  }

  @override
  Route mapTo(RouteModel model) {
    return Route(
      route_id: model.route_id,
      route_long_name: model.route_long_name,
      route_short_name: model.route_short_name,
      trips: <Trip>[],
    );
  }
}
