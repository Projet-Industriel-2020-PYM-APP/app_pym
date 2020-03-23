part of 'package:app_pym/data/models/mobility/bus_stop_time_model.dart';

BusStopTimeModel _$BusStopTimeModelFromJson(Map<String, dynamic> json) {
  return BusStopTimeModel(
    trip_id: json['trip_id'] as int,
    arrival_time: json['arrival_time'] as int,
    departure_time: json['departure_time'] as int,
    stop_id: json['stop_id'] as int,
    stop_sequence: json['stop_sequence'] as int,
  );
}

Map<String, dynamic> _$BusStopTimeModelToJson(BusStopTimeModel instance) =>
    <String, dynamic>{
      'trip_id': instance.trip_id,
      'arrival_time': instance.arrival_time,
      'departure_time': instance.departure_time,
      'stop_id': instance.stop_id,
      'stop_sequence': instance.stop_sequence,
    };
