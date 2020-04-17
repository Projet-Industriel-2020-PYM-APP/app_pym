import 'package:freezed_annotation/freezed_annotation.dart';

part 'stop.freezed.dart';

@freezed
abstract class Stop with _$Stop {
  const factory Stop({
    String stop_id,
    String stop_code,
    String stop_name,
    String stop_lat,
    String stop_long,
    int location_type,
  }) = _Stop;
}
