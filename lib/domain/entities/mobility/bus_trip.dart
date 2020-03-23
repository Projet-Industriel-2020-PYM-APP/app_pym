import 'package:equatable/equatable.dart';

class BusTrip extends Equatable {
  final int service_id;
  final int route_id;
  final int trip_id;
  final int trip_headsign;
  final int direction_id;

  const BusTrip({
    this.service_id,
    this.route_id,
    this.trip_id,
    this.trip_headsign,
    this.direction_id,
  });

  @override
  List<Object> get props => <Object>[
        this.service_id,
        this.route_id,
        this.trip_id,
        this.trip_headsign,
        this.direction_id,
      ];
}
