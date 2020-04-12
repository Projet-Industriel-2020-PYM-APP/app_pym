part of 'compass_bloc.dart';

@freezed
abstract class CompassState with _$CompassState {
  const factory CompassState.initial() = CompassInitial;
  const factory CompassState.loading() = CompassLoading;
  const factory CompassState.movingLoading() = CompassMovingLoading;
  const factory CompassState.stopMovingLoading() = CompassStopMovingLoading;
  const factory CompassState.loaded(num bearingBetweenCameraAndNorth) =
      CompassLoaded;
  const factory CompassState.notPermitted({
    @required bool locationIsGranted,
    @required bool locationIsEnabled,
    @required bool cameraIsGranted,
  }) = CompassNotPermitted;
}
