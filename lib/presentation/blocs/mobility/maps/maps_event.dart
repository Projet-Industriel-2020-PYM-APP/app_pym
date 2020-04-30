part of 'maps_bloc.dart';

@freezed
abstract class MapsEvent with _$MapsEvent {
  const factory MapsEvent.load(
      {@required bool isBus,
      @required bool isTrain,
      @required Direction direction,
      List<Trip> busTrips,
      List<Trip> trainTrips}) = LoadMapsEvent;
  const factory MapsEvent.hide(
      {@required bool isBus,
      @required bool isTrain,
      @required Direction direction}) = HideMapsEvent;
}
