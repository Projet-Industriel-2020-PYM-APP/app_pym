import 'package:equatable/equatable.dart';

part 'bus_model.g.dart';

class BusModel extends Equatable {
  final int trip_id;
  final String stop_name;
  final String arrival_time;
  final int sunday;

  const BusModel({
    this.trip_id,
    this.stop_name,
    this.arrival_time,
    this.sunday,
  });

  factory BusModel.fromJson(Map<String, dynamic> json) =>
      _$BusModelFromJson(json);

  @override
  List<Object> get props => <Object>[
        this.trip_id,
        this.stop_name,
        this.arrival_time,
        this.sunday,
      ];

  Map<String, dynamic> toJson() => _$BusModelToJson(this);
}
