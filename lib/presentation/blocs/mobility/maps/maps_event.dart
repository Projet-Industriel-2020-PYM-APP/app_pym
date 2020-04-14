part of 'maps_bloc.dart';

@freezed
abstract class MapsEvent with _$MapsEvent {
  const factory MapsEvent.fetch(GoogleMapController controller) =
      FetchMapsEvent;
  const factory MapsEvent.hide() = HideMapsEvent;
}
