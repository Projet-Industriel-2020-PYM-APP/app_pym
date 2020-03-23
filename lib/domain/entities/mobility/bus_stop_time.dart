import 'package:equatable/equatable.dart';

class BusStopTime extends Equatable {
  final int trip_id;
  final int arrival_time;
  final int departure_time;
  final int stop_id;
  final int stop_sequence;

  const BusStopTime({
    this.trip_id,
    this.arrival_time,
    this.departure_time,
    this.stop_id,
    this.stop_sequence,
  });

  @override
  List<Object> get props => <Object>[
        this.trip_id,
        this.arrival_time,
        this.departure_time,
        this.stop_id,
        this.stop_sequence,
      ];
}
