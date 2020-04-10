part of 'maps_bloc.dart';

@immutable
abstract class MapsState extends Equatable {
  const MapsState();

  @override
  List<Object> get props => [];
}

class MapsError extends MapsState {
  final String message;

  const MapsError({@required this.message});

  @override
  List<Object> get props => [message];
}

class MapsInitial extends MapsState {
  const MapsInitial();
}

class MapsLoaded extends MapsState {
  final LatLng position;

  const MapsLoaded(this.position);

  @override
  List<Object> get props => [position];
}

class MapsLoading extends MapsState {
  const MapsLoading();
}
