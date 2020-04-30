part of 'authentication_bloc.dart';

@freezed
abstract class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.refresh() = Refresh;
  const factory AuthenticationEvent.loggedIn(AppUser user) = LoggedIn;
  const factory AuthenticationEvent.loggedOut() = LoggedOut;
  const factory AuthenticationEvent.signOut() = SignOut;
  const factory AuthenticationEvent.sendEmailVerification() =
      SendEmailVerification;
}
