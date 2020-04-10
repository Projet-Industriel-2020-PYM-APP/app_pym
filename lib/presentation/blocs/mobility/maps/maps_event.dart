part of 'maps_bloc.dart';

@immutable
abstract class MapsEvent extends Equatable {
  const MapsEvent();
}

class FetchMapsEvent extends MapsEvent {
  const FetchMapsEvent();

  @override
  List<Object> get props => [];
}

class HideMapsEvent extends MapsEvent {
  const HideMapsEvent();

  @override
  List<Object> get props => [];
}
