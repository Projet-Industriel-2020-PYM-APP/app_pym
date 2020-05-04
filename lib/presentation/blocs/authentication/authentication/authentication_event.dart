part of 'authentication_bloc.dart';

@freezed
abstract class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.refresh() = Refresh;
  const factory AuthenticationEvent.signOut() = SignOut;
  const factory AuthenticationEvent.sendEmailVerification() =
      SendEmailVerification;
}
