import 'package:equatable/equatable.dart';

part 'bus_route_model.g.dart';

class BusRouteModel extends Equatable {
  final int route_id;
  final int route_short_name;
  final String route_long_name;

  const BusRouteModel({
    this.route_id,
    this.route_short_name,
    this.route_long_name,
  });

  factory BusRouteModel.fromJson(Map<String, dynamic> json) =>
      _$BusRouteModelFromJson(json);

  @override
  List<Object> get props => <Object>[
        this.route_id,
        this.route_short_name,
        this.route_long_name,
      ];

  Map<String, dynamic> toJson() => _$BusRouteModelToJson(this);
}
