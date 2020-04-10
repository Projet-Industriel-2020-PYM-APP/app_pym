import 'package:app_pym/core/mappers/mapper.dart';
import 'package:app_pym/data/models/mobility/trip_model.dart';
import 'package:app_pym/domain/entities/mobility/stop_time.dart';
import 'package:app_pym/domain/entities/mobility/trip.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class TripMapper implements Mapper<Trip, TripModel> {
  const TripMapper();

  @override
  TripModel mapFrom(Trip entity) {
    return TripModel(
      service_id: entity.service_id,
      trip_id: entity.trip_id,
      direction_id: entity.direction_id,
      route_id: entity.route_id,
      trip_headsign: entity.trip_headsign,
    );
  }

  @override
  Trip mapTo(TripModel model) {
    return Trip(
      service_id: model.service_id,
      trip_id: model.trip_id,
      direction_id: model.direction_id,
      route_id: model.route_id,
      trip_headsign: model.trip_headsign,
      calendar: null,
      stop_time: <StopTime>[],
    );
  }
}
