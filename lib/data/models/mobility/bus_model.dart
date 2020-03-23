import 'package:equatable/equatable.dart';

part 'bus_model.g.dart';

class BusModel extends Equatable {
  final String route_short_name;
  final int direction_id;
  final String stop_name;
  final int arrival_time;
  final int departure_time;
  final int monday;
  final int tuesday;
  final int wednesday;
  final int thursday;
  final int friday;
  final int saturday;
  final int sunday;
  final int start_date;
  final int end_date;
  final int stop_lat;
  final int stop_long;

  const BusModel({
    this.route_short_name,
    this.direction_id,
    this.stop_name,
    this.arrival_time,
    this.departure_time,
    this.monday,
    this.tuesday,
    this.wednesday,
    this.thursday,
    this.friday,
    this.saturday,
    this.sunday,
    this.start_date,
    this.end_date,
    this.stop_lat,
    this.stop_long,
  });

  factory BusModel.fromJson(Map<String, dynamic> json) =>
      _$BusModelFromJson(json);

  @override
  List<Object> get props => <Object>[
        this.route_short_name,
        this.direction_id,
        this.stop_name,
        this.arrival_time,
        this.departure_time,
        this.monday,
        this.tuesday,
        this.wednesday,
        this.thursday,
        this.friday,
        this.saturday,
        this.sunday,
        this.start_date,
        this.end_date,
        this.stop_lat,
        this.stop_long,
      ];

  Map<String, dynamic> toJson() => _$BusModelToJson(this);
}
