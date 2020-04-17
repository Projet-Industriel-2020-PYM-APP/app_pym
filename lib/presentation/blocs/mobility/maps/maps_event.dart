part of 'maps_bloc.dart';

@freezed
abstract class MapsEvent with _$MapsEvent {
  const factory MapsEvent.load(List<Trip> busTrips, bool isBus,
      List<Trip> trainTrips, bool isTrain, Direction direction) = LoadMapsEvent;
  const factory MapsEvent.hide(bool isBus, bool isTtrain) = HideMapsEvent;
}
