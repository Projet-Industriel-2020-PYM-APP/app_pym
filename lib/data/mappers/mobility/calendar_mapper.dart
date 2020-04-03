import 'package:app_pym/core/constants/mobility.dart';
import 'package:app_pym/core/mappers/mapper.dart';
import 'package:app_pym/data/models/mobility/calendar_model.dart';
import 'package:app_pym/domain/entities/mobility/calendar.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class CalendarMapper implements Mapper<Calendar, CalendarModel> {
  const CalendarMapper();

  @override
  CalendarModel mapFrom(Calendar entity) {
    return CalendarModel(
      service_id: entity.service_id,
      monday: entity.weekdays[0],
      tuesday: entity.weekdays[1],
      wednesday: entity.weekdays[2],
      thursday: entity.weekdays[3],
      friday: entity.weekdays[4],
      saturday: entity.weekdays[5],
      sunday: entity.weekdays[6],
      start_date: entity.start_date,
      end_date: entity.end_date,
    );
  }

  @override
  Calendar mapTo(CalendarModel model) {
    return Calendar(
      service_id: model.service_id,
      weekdays: [
        model.monday,
        model.tuesday,
        model.wednesday,
        model.thursday,
        model.friday,
        model.saturday,
        model.sunday
      ],
      start_date: model.start_date,
      end_date: model.end_date,
    );
  }

  String mapToString(Calendar calendar) {
    StringBuffer calendarString;
    final List<String> separe = MobilityConstants.separators;
    calendarString.write(calendar.service_id + separe[2]);
    for (final bool day in calendar.weekdays) {
      calendarString.write((day as String) + separe[3]);
    }
    calendarString
        .write(calendar.start_date + separe[2] + calendar.end_date + separe[2]);
    return calendarString.toString();
  }

  Calendar mapFromString(String calendarString) {
    final List<String> elements =
        calendarString.split(MobilityConstants.separators[2]);
    return Calendar(
      service_id: elements[0],
      weekdays: elements[1]
          .split(MobilityConstants.separators[3])
          .map((day) => day as bool)
          .toList(),
      start_date: elements[2],
      end_date: elements[3],
    );
  }
}
