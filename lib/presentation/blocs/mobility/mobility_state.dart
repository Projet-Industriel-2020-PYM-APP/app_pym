part of 'mobility_bloc.dart';

@immutable
abstract class MobilityState extends Equatable {
  const MobilityState();

  @override
  List<Object> get props => [];
}

class MobilityStateBusError extends MobilityState {
  final String message;

  const MobilityStateBusError({@required this.message});

  @override
  List<Object> get props => [message];
}

class MobilityStateInitial extends MobilityState {
  const MobilityStateInitial();
}

class MobilityStateBusAllerLoaded extends MobilityState {
  final List<Bus> bus;

  const MobilityStateBusAllerLoaded({@required this.bus});

  @override
  List<Object> get props => [bus];
}

class MobilityStateBusRetourLoaded extends MobilityState {
  final List<Bus> bus;

  const MobilityStateBusRetourLoaded({@required this.bus});

  @override
  List<Object> get props => [bus];
}

class MobilityStateBusAllerLoading extends MobilityState {
  const MobilityStateBusAllerLoading();
}

class MobilityStateBusRetourLoading extends MobilityState {
  const MobilityStateBusRetourLoading();
}
