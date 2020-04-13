part of 'stop_details_bloc.dart';

@immutable
abstract class StopDetailsEvent extends Equatable {
  const StopDetailsEvent();
}

class FetchStopDetailsEvent extends StopDetailsEvent {
  const FetchStopDetailsEvent();

  @override
  List<Object> get props => [];
}

class HideStopDetailsEvent extends StopDetailsEvent {
  const HideStopDetailsEvent();

  @override
  List<Object> get props => [];
}
