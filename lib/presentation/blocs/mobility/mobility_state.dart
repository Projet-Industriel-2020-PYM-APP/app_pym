part of 'mobility_bloc.dart';

@immutable
abstract class MobilityState extends Equatable {
  const MobilityState();

  @override
  List<Object> get props => [];
}

class MobilityStateError extends MobilityState {
  final String message;

  const MobilityStateError({@required this.message});

  @override
  List<Object> get props => [message];
}

class MobilityStateInitial extends MobilityState {
  const MobilityStateInitial();
}

class MobilityStateBusAllerLoaded extends MobilityState {
  final List<Trip> busAllerTrips;

  const MobilityStateBusAllerLoaded({@required this.busAllerTrips});

  @override
  List<Object> get props => [busAllerTrips];
}

class MobilityStateBusAllerLoading extends MobilityState {
  const MobilityStateBusAllerLoading();
}

class MobilityStateBusRetourLoaded extends MobilityState {
  final List<Trip> busRetourTrips;

  const MobilityStateBusRetourLoaded({@required this.busRetourTrips});

  @override
  List<Object> get props => [busRetourTrips];
}

class MobilityStateBusRetourLoading extends MobilityState {
  const MobilityStateBusRetourLoading();
}

class MobilityStateTrainAllerLoaded extends MobilityState {
  final List<Trip> trainAllerTrips;

  const MobilityStateTrainAllerLoaded({@required this.trainAllerTrips});

  @override
  List<Object> get props => [trainAllerTrips];
}

class MobilityStateTrainAllerLoading extends MobilityState {
  const MobilityStateTrainAllerLoading();
}

class MobilityStateTrainRetourLoaded extends MobilityState {
  final List<Trip> trainRetourTrips;

  const MobilityStateTrainRetourLoaded({@required this.trainRetourTrips});

  @override
  List<Object> get props => [trainRetourTrips];
}

class MobilityStateTrainRetourLoading extends MobilityState {
  const MobilityStateTrainRetourLoading();
}
