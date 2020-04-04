part of 'bus_trips_bloc.dart';

@immutable
abstract class BusTripsEvent extends Equatable {
  const BusTripsEvent();
}

class FetchBusEvent extends BusTripsEvent {
  final Direction direction;

  const FetchBusEvent(this.direction);

  @override
  List<Object> get props => [];
}

class HideBusEvent extends BusTripsEvent {
  const HideBusEvent();

  @override
  List<Object> get props => [];
}
