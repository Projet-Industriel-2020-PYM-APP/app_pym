import 'package:app_pym/core/constants/mobility.dart';
import 'package:equatable/equatable.dart';

class TripModel extends Equatable {
  final String route_id;
  final String trip_id;
  final String trip_headsign;
  final Direction direction_id;

  const TripModel({
    this.route_id,
    this.trip_id,
    this.trip_headsign,
    this.direction_id,
  });

  @override
  List<Object> get props => <Object>[
        route_id,
        trip_id,
        trip_headsign,
        direction_id,
      ];
}
