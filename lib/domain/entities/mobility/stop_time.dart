import 'package:app_pym/domain/entities/mobility/stop.dart';
import 'package:equatable/equatable.dart';

class StopTime extends Equatable {
  final String trip_id;
  final String arrival_time;
  final String departure_time;
  final String stop_id;
  final String stop_sequence;
  final List<Stop> stops;

  const StopTime({
    this.trip_id,
    this.arrival_time,
    this.departure_time,
    this.stop_id,
    this.stop_sequence,
    this.stops,
  });

  @override
  List<Object> get props => <Object>[
        this.trip_id,
        this.arrival_time,
        this.departure_time,
        this.stop_id,
        this.stop_sequence,
        this.stops,
      ];
}
