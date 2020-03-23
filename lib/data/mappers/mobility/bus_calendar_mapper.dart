import 'package:app_pym/core/mappers/mapper.dart';
import 'package:app_pym/data/models/mobility/bus_calendar_model.dart';
import 'package:app_pym/domain/entities/mobility/bus_calendar.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class BusCalendarMapper implements Mapper<BusCalendar, BusCalendarModel> {
  const BusCalendarMapper();

  @override
  BusCalendarModel mapFrom(BusCalendar entity) {
    return BusCalendarModel(
      service_id: entity.service_id,
      monday: entity.monday,
      tuesday: entity.tuesday,
      wednesday: entity.wednesday,
      thursday: entity.thursday,
      friday: entity.friday,
      saturday: entity.saturday,
      sunday: entity.sunday,
      start_date: entity.start_date,
      end_date: entity.end_date,
    );
  }

  @override
  BusCalendar mapTo(BusCalendarModel model) {
    return BusCalendar(
      service_id: model.service_id,
      monday: model.monday,
      tuesday: model.tuesday,
      wednesday: model.wednesday,
      thursday: model.thursday,
      friday: model.friday,
      saturday: model.saturday,
      sunday: model.sunday,
      start_date: model.start_date,
      end_date: model.end_date,
    );
  }
}
