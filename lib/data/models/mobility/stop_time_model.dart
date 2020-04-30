import 'package:app_pym/data/models/mobility/stop_model.dart';
import 'package:app_pym/domain/entities/mobility/stop_time.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stop_time_model.freezed.dart';

@freezed
abstract class StopTimeModel with _$StopTimeModel {
  const factory StopTimeModel({
    String trip_id,
    String arrival_time,
    String departure_time,
    String stop_id,
    String stop_sequence,
  }) = _StopTimeModel;
}

extension StopTimeModelX on StopTimeModel {
  StopTime toEntity({@required List<StopModel> stopModels}) {
    return StopTime(
      trip_id: this.trip_id,
      arrival_time: this.arrival_time,
      departure_time: this.departure_time,
      stop_id: this.stop_id,
      stop_sequence: this.stop_sequence,
      stop: stopModels
          .firstWhere(
              (stopModel) => this.stop_id.compareTo(stopModel.stop_id) == 0)
          .toEntity(),
    );
  }
}
