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
      trip_id: entity.trip_id,
      stop_name: entity.stop_name,
      arrival_time: entity.time,
    );
  }

  @override
  Bus mapTo(BusModel model) {
    return Bus(
      trip_id: model.trip_id,
      stop_name: model.stop_name,
      time: model.arrival_time,
      days: days(model.sunday),
    );
  }
}

String days(int sunday) {
  if (sunday == 1) {
    return ("TLJ");
  } else
    return ("L au S");
}
