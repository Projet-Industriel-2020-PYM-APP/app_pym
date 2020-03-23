part of 'package:app_pym/data/models/mobility/bus_model.dart';

BusModel _$BusModelFromJson(Map<String, dynamic> json) {
  return BusModel(
    route_short_name: json['route_short_name'] as String,
    direction_id: json['direction_id'] as int,
    stop_name: json['stop_name'] as String,
    arrival_time: json['arrival_time'] as int,
    departure_time: json['departure_time'] as int,
    monday: json['monday'] as int,
    tuesday: json['tuesday'] as int,
    wednesday: json['wednesday'] as int,
    thursday: json['thursday'] as int,
    friday: json['friday'] as int,
    saturday: json['saturday'] as int,
    sunday: json['sunday'] as int,
    start_date: json['start_date'] as int,
    end_date: json['end_date'] as int,
    stop_lat: json['stop_lat'] as int,
    stop_long: json['stop_long'] as int,
  );
}

Map<String, dynamic> _$BusModelToJson(BusModel instance) => <String, dynamic>{
      'route_short_name': instance.route_short_name,
      'direction_id': instance.direction_id,
      'stop_name': instance.stop_name,
      'arrival_time': instance.arrival_time,
      'departure_time': instance.departure_time,
      'monday': instance.monday,
      'tuesday': instance.tuesday,
      'wednesday': instance.wednesday,
      'thursday': instance.thursday,
      'friday': instance.friday,
      'saturday': instance.saturday,
      'sunday': instance.sunday,
      'start_date': instance.start_date,
      'end_date': instance.end_date,
      'stop_lat': instance.stop_lat,
      'stop_long': instance.stop_long,
    };
