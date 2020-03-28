import 'package:app_pym/domain/entities/mobility/trip.dart';
import 'package:equatable/equatable.dart';

class Route extends Equatable {
  final String route_id;
  final String route_short_name;
  final String route_long_name;
  final List<Trip> trips;

  const Route({
    this.route_id,
    this.route_short_name,
    this.route_long_name,
    this.trips,
  });

  @override
  List<Object> get props => <Object>[
        this.route_id,
        this.route_short_name,
        this.route_long_name,
        this.trips,
      ];
}
