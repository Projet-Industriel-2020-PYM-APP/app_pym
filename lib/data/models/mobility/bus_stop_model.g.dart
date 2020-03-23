part of 'package:app_pym/data/models/mobility/bus_stop_model.dart';

BusStopModel _$BusStopModelFromJson(Map<String, dynamic> json) {
  return BusStopModel(
    stop_id: json['stop_id'] as int,
    stop_code: json['stop_code'] as int,
    stop_name: json['stop_name'] as String,
    stop_lat: json['stop_lat'] as int,
    stop_long: json['stop_long'] as int,
  );
}

Map<String, dynamic> _$BusStopModelToJson(BusStopModel instance) =>
    <String, dynamic>{
      'stop_id': instance.stop_id,
      'stop_code': instance.stop_code,
      'stop_name': instance.stop_name,
      'stop_lat': instance.stop_lat,
      'stop_long': instance.stop_long,
    };
