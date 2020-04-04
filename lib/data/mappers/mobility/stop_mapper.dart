import 'package:app_pym/core/mappers/mapper.dart';
import 'package:app_pym/data/models/mobility/stop_model.dart';
import 'package:app_pym/domain/entities/mobility/stop.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class StopMapper implements Mapper<Stop, StopModel> {
  const StopMapper();

  @override
  StopModel mapFrom(Stop entity) {
    return StopModel(
      stop_id: entity.stop_id,
      stop_code: entity.stop_code,
      stop_name: entity.stop_name,
      stop_lat: entity.stop_lat,
      stop_long: entity.stop_long,
      location_type: entity.location_type,
    );
  }

  @override
  Stop mapTo(StopModel model) {
    return Stop(
      stop_id: model.stop_id,
      stop_code: model.stop_code,
      stop_name: model.stop_name,
      stop_lat: model.stop_lat,
      stop_long: model.stop_long,
      location_type: model.location_type,
    );
  }
}
