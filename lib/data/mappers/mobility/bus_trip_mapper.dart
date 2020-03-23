import 'package:app_pym/core/mappers/mapper.dart';
import 'package:app_pym/data/models/mobility/bus_trip_model.dart';
import 'package:app_pym/domain/entities/mobility/bus_trip.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class BusTripMapper implements Mapper<BusTrip, BusTripModel> {
  const BusTripMapper();

  @override
  BusTripModel mapFrom(BusTrip entity) {
    return BusTripModel(
      service_id: entity.service_id,
      route_id: entity.route_id,
      trip_id: entity.trip_id,
      trip_headsign: entity.trip_headsign,
      direction_id: entity.direction_id,
    );
  }

  @override
  BusTrip mapTo(BusTripModel model) {
    return BusTrip(
      service_id: model.service_id,
      route_id: model.route_id,
      trip_id: model.trip_id,
      trip_headsign: model.trip_headsign,
      direction_id: model.direction_id,
    );
  }
}
