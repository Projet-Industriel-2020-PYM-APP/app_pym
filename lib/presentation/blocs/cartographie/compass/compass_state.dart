part of 'compass_bloc.dart';

abstract class CompassState extends Equatable {
  const CompassState();
}

class CompassInitial extends CompassState {
  const CompassInitial();

  @override
  List<Object> get props => [];
}

class CompassLoading extends CompassState {
  const CompassLoading();

  @override
  List<Object> get props => [];
}

class CompassMovingLoading extends CompassState {
  const CompassMovingLoading();

  @override
  List<Object> get props => [];
}

class CompassStopMovingLoading extends CompassState {
  const CompassStopMovingLoading();

  @override
  List<Object> get props => [];
}

class CompassLoaded extends CompassState {
  final num bearingBetweenCameraAndNorth;

  const CompassLoaded(this.bearingBetweenCameraAndNorth);

  @override
  List<Object> get props => [];
}

class CompassNotPermitted extends CompassState {
  final bool locationIsGranted;
  final bool locationIsEnabled;
  final bool cameraIsGranted;

  const CompassNotPermitted({
    @required this.locationIsGranted,
    @required this.locationIsEnabled,
    @required this.cameraIsGranted,
  });

  @override
  List<Object> get props => [
        this.locationIsGranted,
        this.locationIsEnabled,
        this.cameraIsGranted,
      ];
}
