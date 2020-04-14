part of 'maps_bloc.dart';

@freezed
abstract class MapsState with _$MapsState {
  const factory MapsState.initial() = MapsInitial;
  const factory MapsState.loading() = MapsLoading;
  const factory MapsState.loaded(Stream<LatLng> positions) = MapsLoaded;
  const factory MapsState.error(String message) = MapsError;
}
