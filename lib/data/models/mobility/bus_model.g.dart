part of 'package:app_pym/data/models/mobility/bus_model.dart';

BusModel _$BusModelFromJson(Map<String, dynamic> json) {
  return BusModel(
    trip_id: json['trip_id'] as int,
    stop_name: json['stop_name'] as String,
    arrival_time: json['arrival_time'] as String,
    sunday: json['sunday'] as int,
  );
}

Map<String, dynamic> _$BusModelToJson(BusModel instance) => <String, dynamic>{
      'trip_id': instance.trip_id,
      'stop_name': instance.stop_name,
      'arrival_time': instance.arrival_time,
      'sunday': instance.sunday,
    };
