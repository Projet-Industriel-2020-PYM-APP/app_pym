part of 'mobility_bloc.dart';

@immutable
abstract class MobilityEvent extends Equatable {
  const MobilityEvent();
}

class FetchBusAllerEvent extends MobilityEvent {
  const FetchBusAllerEvent();

  @override
  List<Object> get props => null;
}

class HideBusEvent extends MobilityEvent {
  const HideBusEvent();

  @override
  List<Object> get props => null;
}

class FetchBusRetourEvent extends MobilityEvent {
  const FetchBusRetourEvent();

  @override
  List<Object> get props => null;
}

class FirstFetchTrainEvent extends MobilityEvent {
  const FirstFetchTrainEvent();

  @override
  List<Object> get props => null;
}

class FetchTrainAllerEvent extends MobilityEvent {
  const FetchTrainAllerEvent();

  @override
  List<Object> get props => null;
}

class HideTrainEvent extends MobilityEvent {
  const HideTrainEvent();

  @override
  List<Object> get props => null;
}

class FetchTrainRetourEvent extends MobilityEvent {
  const FetchTrainRetourEvent();

  @override
  List<Object> get props => null;
}
