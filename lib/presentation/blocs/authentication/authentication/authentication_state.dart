part of 'authentication_bloc.dart';

@freezed
abstract class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.authenticated(AppUser user) = Authenticated;
  const factory AuthenticationState.unauthenticated() = Unauthenticated;
}
