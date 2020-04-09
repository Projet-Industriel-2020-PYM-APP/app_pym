part of 'ar_view_bloc.dart';

abstract class ArViewEvent extends Equatable {
  const ArViewEvent();
}

class FetchFromUnityEvent extends ArViewEvent {
  final UnityWidgetController unityWidgetController;

  /// Degrees
  final num bearingBetweenCameraAndNorth;

  const FetchFromUnityEvent({
    @required this.unityWidgetController,
    @required this.bearingBetweenCameraAndNorth,
  });

  @override
  List<Object> get props => [unityWidgetController];
}

class ArLoadedEvent extends ArViewEvent {
  const ArLoadedEvent();

  @override
  List<Object> get props => [];
}
