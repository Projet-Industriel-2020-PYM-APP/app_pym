import 'package:app_pym/domain/entities/mobility/stop.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stop_time.freezed.dart';

@freezed
abstract class StopTime with _$StopTime {
  const factory StopTime({
    String trip_id,
    String arrival_time,
    String departure_time,
    String stop_id,
    String stop_sequence,
    Stop stop,
  }) = _StopTime;
}
