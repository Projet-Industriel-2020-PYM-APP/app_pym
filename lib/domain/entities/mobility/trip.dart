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
  final List<Calendar> calendar;
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
}
