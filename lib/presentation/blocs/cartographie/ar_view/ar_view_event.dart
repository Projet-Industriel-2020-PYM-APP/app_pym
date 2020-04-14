part of 'ar_view_bloc.dart';

@freezed
abstract class ArViewEvent with _$ArViewEvent {
  const factory ArViewEvent.fetchFromUnity({
    @required UnityWidgetController unityWidgetController,
    @required num bearingBetweenCameraAndNorth,
  }) = FetchFromUnityEvent;

  const factory ArViewEvent.loaded() = ArLoadedEvent;
}
