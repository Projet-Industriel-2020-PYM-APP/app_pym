import 'package:app_pym/core/mappers/mapper.dart';
import 'package:app_pym/data/models/mobility/stop_time_model.dart';
import 'package:app_pym/domain/entities/mobility/stop_time.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class StopTimeMapper implements Mapper<StopTime, StopTimeModel> {
  const StopTimeMapper();

  @override
  StopTimeModel mapFrom(StopTime entity) {
    return StopTimeModel(
      trip_id: entity.trip_id,
      arrival_time: entity.arrival_time,
      departure_time: entity.departure_time,
      stop_id: entity.stop_id,
      stop_sequence: entity.stop_sequence,
    );
  }

  @override
  StopTime mapTo(StopTimeModel model) {
    return StopTime(
      trip_id: model.trip_id,
      arrival_time: model.arrival_time,
      departure_time: model.departure_time,
      stop_id: model.stop_id,
      stop_sequence: model.stop_sequence,
      stop: null,
    );
  }
}
