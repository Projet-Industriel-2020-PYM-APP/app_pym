import 'package:equatable/equatable.dart';

class StopTimeModel extends Equatable {
  final String trip_id;
  final String arrival_time;
  final String departure_time;
  final String stop_id;
  final String stop_sequence;

  const StopTimeModel({
    this.trip_id,
    this.arrival_time,
    this.departure_time,
    this.stop_id,
    this.stop_sequence,
  });

  @override
  List<Object> get props => <Object>[
        trip_id,
        arrival_time,
        departure_time,
        stop_id,
        stop_sequence,
      ];
}
