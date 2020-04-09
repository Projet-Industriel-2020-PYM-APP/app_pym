part of 'compass_bloc.dart';

abstract class CompassEvent extends Equatable {
  const CompassEvent();
}

class LoadHeadingEvent extends CompassEvent {
  const LoadHeadingEvent();

  @override
  List<Object> get props => [];
}
