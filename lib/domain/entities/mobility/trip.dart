import 'package:app_pym/core/constants/mobility.dart';
import 'package:app_pym/domain/entities/mobility/calendar.dart';
import 'package:app_pym/domain/entities/mobility/stop_time.dart';
import 'package:equatable/equatable.dart';

class Trip extends Equatable {
  final String service_id;
  final String route_id;
  final String trip_id;
  final String trip_headsign;
  final Direction direction_id;
  final Calendar calendar;
  final List<StopTime> stop_time;

  const Trip({
    this.service_id,
    this.route_id,
    this.trip_id,
    this.trip_headsign,
    this.direction_id,
    this.calendar,
    this.stop_time,
  });

  Trip copyWith({
    String service_id,
    String route_id,
    String trip_id,
    String trip_headsign,
    Direction direction_id,
    Calendar calendar,
    List<StopTime> stop_time,
  }) {
    return Trip(
      service_id: service_id ?? this.service_id,
      route_id: route_id ?? this.route_id,
      trip_id: trip_id ?? this.trip_id,
      trip_headsign: trip_headsign ?? this.trip_headsign,
      direction_id: direction_id ?? this.direction_id,
      calendar: calendar ?? this.calendar,
      stop_time: stop_time ?? this.stop_time,
    );
  }

  @override
  List<Object> get props => <Object>[
        service_id,
        route_id,
        trip_id,
        trip_headsign,
        direction_id,
        calendar,
        stop_time,
      ];

  Trip union(List<Calendar> calendars, List<StopTime> stopTimes) {
    final calendar = calendars
        .where((calendar) => this.service_id == calendar.service_id)
        .first;
    this.stop_time.addAll(
        stopTimes.where((stopTime) => this.trip_id == stopTime.trip_id));
    return this.copyWith(calendar: calendar);
  }
}
