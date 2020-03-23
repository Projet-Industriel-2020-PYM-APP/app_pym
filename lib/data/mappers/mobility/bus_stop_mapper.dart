import 'package:app_pym/core/mappers/mapper.dart';
import 'package:app_pym/data/models/mobility/bus_stop_model.dart';
import 'package:app_pym/domain/entities/mobility/bus_stop.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class BusStopMapper implements Mapper<BusStop, BusStopModel> {
  const BusStopMapper();

  @override
  BusStopModel mapFrom(BusStop entity) {
    return BusStopModel(
      stop_id: entity.stop_id,
      stop_code: entity.stop_code,
      stop_name: entity.stop_name,
      stop_lat: entity.stop_lat,
      stop_long: entity.stop_long,
    );
  }

  @override
  BusStop mapTo(BusStopModel model) {
    return BusStop(
      stop_id: model.stop_id,
      stop_code: model.stop_code,
      stop_name: model.stop_name,
      stop_lat: model.stop_lat,
      stop_long: model.stop_long,
    );
  }
}
