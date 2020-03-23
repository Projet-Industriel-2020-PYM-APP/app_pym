part of 'package:app_pym/data/models/mobility/bus_trip_model.dart';

BusTripModel _$BusTripModelFromJson(Map<String, dynamic> json) {
  return BusTripModel(
    service_id: json['service_id'] as int,
    route_id: json['route_id'] as int,
    trip_id: json['trip_id'] as int,
    trip_headsign: json['trip_headsign'] as int,
    direction_id: json['direction_id'] as int,
  );
}

Map<String, dynamic> _$BusTripModelToJson(BusTripModel instance) =>
    <String, dynamic>{
      'service_id': instance.service_id,
      'route_id': instance.route_id,
      'trip_id': instance.trip_id,
      'trip_headsign': instance.trip_headsign,
      'direction_id': instance.direction_id,
    };
