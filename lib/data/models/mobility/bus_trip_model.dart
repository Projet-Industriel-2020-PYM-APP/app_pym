import 'package:equatable/equatable.dart';

part 'bus_trip_model.g.dart';

class BusTripModel extends Equatable {
  final int service_id;
  final int route_id;
  final int trip_id;
  final int trip_headsign;
  final int direction_id;

  const BusTripModel({
    this.service_id,
    this.route_id,
    this.trip_id,
    this.trip_headsign,
    this.direction_id,
  });

  factory BusTripModel.fromJson(Map<String, dynamic> json) =>
      _$BusTripModelFromJson(json);

  @override
  List<Object> get props => <Object>[
        service_id,
        route_id,
        trip_id,
        trip_headsign,
        direction_id,
      ];

  Map<String, dynamic> toJson() => _$BusTripModelToJson(this);
}
