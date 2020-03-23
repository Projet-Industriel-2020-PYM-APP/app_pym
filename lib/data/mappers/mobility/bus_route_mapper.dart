import 'package:app_pym/core/mappers/mapper.dart';
import 'package:app_pym/data/models/mobility/bus_route_model.dart';
import 'package:app_pym/domain/entities/mobility/bus_route.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class BusRouteMapper implements Mapper<BusRoute, BusRouteModel> {
  const BusRouteMapper();

  @override
  BusRouteModel mapFrom(BusRoute entity) {
    return BusRouteModel(
      route_id: entity.route_id,
      route_short_name: entity.route_short_name,
      route_long_name: entity.route_long_name,
    );
  }

  @override
  BusRoute mapTo(BusRouteModel model) {
    return BusRoute(
      route_id: model.route_id,
      route_short_name: model.route_short_name,
      route_long_name: model.route_long_name,
    );
  }
}
