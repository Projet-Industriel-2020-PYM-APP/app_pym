import 'package:equatable/equatable.dart';

part 'bus_stop_time_model.g.dart';

class BusStopTimeModel extends Equatable {
  final int trip_id;
  final int arrival_time;
  final int departure_time;
  final int stop_id;
  final int stop_sequence;

  const BusStopTimeModel({
    this.trip_id,
    this.arrival_time,
    this.departure_time,
    this.stop_id,
    this.stop_sequence,
  });

  factory BusStopTimeModel.fromJson(Map<String, dynamic> json) =>
      _$BusStopTimeModelFromJson(json);

  @override
  List<Object> get props => <Object>[
        trip_id,
        arrival_time,
        departure_time,
        stop_id,
        stop_sequence,
      ];

  Map<String, dynamic> toJson() => _$BusStopTimeModelToJson(this);
}
