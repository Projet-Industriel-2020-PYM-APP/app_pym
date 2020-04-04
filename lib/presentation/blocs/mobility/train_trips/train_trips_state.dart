part of 'train_trips_bloc.dart';

@immutable
abstract class TrainTripsState extends Equatable {
  const TrainTripsState();

  @override
  List<Object> get props => [];
}

class TrainTripsError extends TrainTripsState {
  final String message;

  const TrainTripsError({@required this.message});

  @override
  List<Object> get props => [message];
}

class TrainTripsInitial extends TrainTripsState {
  const TrainTripsInitial();
}

class TrainTripsLoaded extends TrainTripsState {
  final List<Trip> trips;
  final Direction direction;

  const TrainTripsLoaded({
    @required this.trips,
    @required this.direction,
  });

  @override
  List<Object> get props => [trips];
}

class TrainTripsLoading extends TrainTripsState {
  const TrainTripsLoading();
}
