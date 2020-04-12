part of 'compass_bloc.dart';

@freezed
abstract class CompassEvent with _$CompassEvent {
  const factory CompassEvent.loadHeading() = LoadHeadingEvent;
}
