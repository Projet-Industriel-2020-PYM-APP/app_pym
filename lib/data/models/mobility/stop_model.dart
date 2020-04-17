import 'package:app_pym/domain/entities/mobility/stop.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stop_model.freezed.dart';

@freezed
abstract class StopModel with _$StopModel {
  const factory StopModel({
    String stop_id,
    String stop_code,
    String stop_name,
    String stop_lat,
    String stop_long,
    int location_type,
  }) = _StopModel;
}

extension StopModelX on StopModel {
  Stop toEntity() {
    return Stop(
      stop_id: this.stop_id,
      stop_code: this.stop_code,
      stop_name: this.stop_name,
      stop_lat: this.stop_lat,
      stop_long: this.stop_long,
      location_type: this.location_type,
    );
  }
}
