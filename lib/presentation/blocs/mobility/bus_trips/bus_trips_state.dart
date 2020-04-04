part of 'bus_trips_bloc.dart';

@immutable
abstract class BusTripsState extends Equatable {
  const BusTripsState();

  @override
  List<Object> get props => [];
}

class BusTripsError extends BusTripsState {
  final String message;

  const BusTripsError({@required this.message});

  @override
  List<Object> get props => [message];
}

class BusTripsInitial extends BusTripsState {
  const BusTripsInitial();
}

class BusTripsLoaded extends BusTripsState {
  final List<Trip> trips;
  final Direction direction;

  const BusTripsLoaded({
    @required this.trips,
    @required this.direction,
  });

  @override
  List<Object> get props => [trips];
}

class BusTripsLoading extends BusTripsState {
  const BusTripsLoading();
}
