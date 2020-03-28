part of 'mobility_bloc.dart';

@immutable
abstract class MobilityEvent extends Equatable {
  const MobilityEvent();
}

class FetchBusAllerEvent extends MobilityEvent {
  final String repo;

  const FetchBusAllerEvent(this.repo);

  @override
  List<Object> get props => [repo];
}

class FetchBusRetourEvent extends MobilityEvent {
  final String repo;

  const FetchBusRetourEvent(this.repo);

  @override
  List<Object> get props => [repo];
}
