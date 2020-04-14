import 'package:app_pym/domain/entities/mobility/calendar.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_model.freezed.dart';

@freezed
abstract class CalendarModel with _$CalendarModel {
  const factory CalendarModel({
    String service_id,
    bool monday,
    bool tuesday,
    bool wednesday,
    bool thursday,
    bool friday,
    bool saturday,
    bool sunday,
    String start_date,
    String end_date,
  }) = _CalendarModel;
}

extension CalendarModelX on CalendarModel {
  Calendar toEntity() {
    return Calendar(
      service_id: this.service_id,
      weekdays: [
        this.monday,
        this.tuesday,
        this.wednesday,
        this.thursday,
        this.friday,
        this.saturday,
        this.sunday
      ],
      start_date: this.start_date,
      end_date: this.end_date,
    );
  }
}
