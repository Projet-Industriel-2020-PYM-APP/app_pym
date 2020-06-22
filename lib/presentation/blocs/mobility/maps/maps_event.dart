part of 'maps_bloc.dart';

@freezed
abstract class MapsEvent with _$MapsEvent {
  const factory MapsEvent.load({
    @required TripsState tripsState,
    @required ScaffoldState scaffoldState,
  }) = LoadMapsEvent;

  const factory MapsEvent.appStarted() = MapsStartedEvent;
}
