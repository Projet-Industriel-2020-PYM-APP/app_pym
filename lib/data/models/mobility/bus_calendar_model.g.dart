part of 'package:app_pym/data/models/mobility/bus_calendar_model.dart';

BusCalendarModel _$BusCalendarModelFromJson(Map<String, dynamic> json) {
  return BusCalendarModel(
    service_id: json['service_id'] as int,
    monday: json['monday'] as int,
    tuesday: json['tuesday'] as int,
    wednesday: json['wednesday'] as int,
    thursday: json['thursday'] as int,
    friday: json['friday'] as int,
    saturday: json['saturday'] as int,
    sunday: json['sunday'] as int,
    start_date: json['start_date'] as int,
    end_date: json['end_date'] as int,
  );
}

Map<String, dynamic> _$BusCalendarModelToJson(BusCalendarModel instance) =>
    <String, dynamic>{
      'service_id': instance.service_id,
      'monday': instance.monday,
      'tuesday': instance.tuesday,
      'wednesday': instance.wednesday,
      'thursday': instance.thursday,
      'friday': instance.friday,
      'saturday': instance.saturday,
      'sunday': instance.sunday,
      'start_date': instance.start_date,
      'end_date': instance.end_date,
    };
