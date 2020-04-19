part of 'authentication_bloc.dart';

@freezed
abstract class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.appStated() = AppStarted;
  const factory AuthenticationEvent.loggedIn() = LoggedIn;
  const factory AuthenticationEvent.loggedOut() = LoggedOut;
}
