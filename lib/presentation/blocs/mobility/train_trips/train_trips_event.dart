part of 'train_trips_bloc.dart';

@immutable
abstract class TrainTripsEvent extends Equatable {
  const TrainTripsEvent();
}

class FetchTrainEvent extends TrainTripsEvent {
  final Direction direction;

  const FetchTrainEvent(this.direction);

  @override
  List<Object> get props => [];
}

class HideTrainEvent extends TrainTripsEvent {
  const HideTrainEvent();

  @override
  List<Object> get props => [];
}
