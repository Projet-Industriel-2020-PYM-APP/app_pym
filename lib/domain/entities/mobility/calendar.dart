import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar.freezed.dart';

@freezed
abstract class Calendar with _$Calendar {
  const factory Calendar({
    String service_id,
    List<bool> weekdays,
    String start_date,
    String end_date,
  }) = _Calendar;
}
