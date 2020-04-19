part of 'notification_bloc.dart';

@freezed
abstract class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.appStarted() = NotificationAppStarted;
  const factory NotificationEvent.enable() = NotificationEnable;
  const factory NotificationEvent.disable() = NotificationDisable;
}
