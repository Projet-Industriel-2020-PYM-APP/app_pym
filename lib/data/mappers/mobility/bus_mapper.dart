import 'package:app_pym/core/mappers/mapper.dart';
import 'package:app_pym/data/models/mobility/bus_model.dart';
import 'package:app_pym/domain/entities/mobility/bus.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class BusMapper implements Mapper<Bus, BusModel> {
  const BusMapper();

  @override
  BusModel mapFrom(Bus entity) {
    return BusModel(
      route_short_name: entity.route_short_name,
      direction_id: entity.direction_id,
      stop_name: entity.stop_name,
      arrival_time: entity.arrival_time,
      departure_time: entity.departure_time,
      monday: entity.monday,
      tuesday: entity.tuesday,
      wednesday: entity.wednesday,
      thursday: entity.thursday,
      friday: entity.friday,
      saturday: entity.saturday,
      sunday: entity.sunday,
      start_date: entity.start_date,
      end_date: entity.end_date,
      stop_lat: entity.stop_lat,
      stop_long: entity.stop_long,
    );
  }

  @override
  Bus mapTo(BusModel model) {
    return Bus(
      route_short_name: model.route_short_name,
      direction_id: model.direction_id,
      stop_name: model.stop_name,
      arrival_time: model.arrival_time,
      departure_time: model.departure_time,
      monday: model.monday,
      tuesday: model.tuesday,
      wednesday: model.wednesday,
      thursday: model.thursday,
      friday: model.friday,
      saturday: model.saturday,
      sunday: model.sunday,
      start_date: model.start_date,
      end_date: model.end_date,
      stop_lat: model.stop_lat,
      stop_long: model.stop_long,
    );
  }
}
