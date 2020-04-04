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
}
