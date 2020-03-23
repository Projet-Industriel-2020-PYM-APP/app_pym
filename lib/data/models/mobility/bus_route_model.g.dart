part of 'package:app_pym/data/models/mobility/bus_route_model.dart';

BusRouteModel _$BusRouteModelFromJson(Map<String, dynamic> json) {
  return BusRouteModel(
    route_id: json['route_id'] as int,
    route_short_name: json['route_short_name'] as int,
    route_long_name: json['route_long_name'] as String,
  );
}

Map<String, dynamic> _$BusRouteModelToJson(BusRouteModel instance) =>
    <String, dynamic>{
      'route_id': instance.route_id,
      'route_short_name': instance.route_short_name,
      'route_long_name': instance.route_long_name,
    };
