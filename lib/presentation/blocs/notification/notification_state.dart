part of 'notification_bloc.dart';

@freezed
abstract class NotificationState with _$NotificationState {
  const factory NotificationState.initial() = NotificationInitial;
  const factory NotificationState.loaded() = NotificationLoadedEvent;
  const factory NotificationState.enabled() = NotificationEnabled;
  const factory NotificationState.disabled() = NotificationDisabled;
}
