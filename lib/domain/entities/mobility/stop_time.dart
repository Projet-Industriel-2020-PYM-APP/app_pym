import 'package:app_pym/domain/entities/mobility/stop.dart';
import 'package:equatable/equatable.dart';

class StopTime extends Equatable {
  final String trip_id;
  final String arrival_time;
  final String departure_time;
  final String stop_id;
  final String stop_sequence;
  final Stop stop;

  const StopTime({
    this.trip_id,
    this.arrival_time,
    this.departure_time,
    this.stop_id,
    this.stop_sequence,
    this.stop,
  });

  @override
  List<Object> get props => <Object>[
        this.trip_id,
        this.arrival_time,
        this.departure_time,
        this.stop_id,
        this.stop_sequence,
        this.stop,
      ];

  // ignore: avoid_returning_this
  StopTime union(List<Stop> stops) {
    final stop = stops.where((stop) => this.stop_id == stop.stop_id).first;
    return this.copyWith(stop: stop);
  }

  StopTime copyWith({
    String trip_id,
    String arrival_time,
    String departure_time,
    String stop_id,
    String stop_sequence,
    Stop stop,
  }) {
    return StopTime(
      trip_id: trip_id ?? this.trip_id,
      arrival_time: arrival_time ?? this.arrival_time,
      departure_time: departure_time ?? this.departure_time,
      stop_id: stop_id ?? this.stop_id,
      stop_sequence: stop_sequence ?? this.stop_sequence,
      stop: stop ?? this.stop,
    );
  }
}
