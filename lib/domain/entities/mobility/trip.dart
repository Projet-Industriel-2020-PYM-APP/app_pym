import 'package:app_pym/core/constants/mobility.dart';
import 'package:app_pym/domain/entities/mobility/calendar.dart';
import 'package:app_pym/domain/entities/mobility/stop_time.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip.freezed.dart';

@freezed
abstract class Trip with _$Trip {
  const factory Trip({
    String service_id,
    String route_id,
    String trip_id,
    String trip_headsign,
    Direction direction_id,
    Calendar calendar,
    List<StopTime> stop_time,
  }) = _Trip;
}
