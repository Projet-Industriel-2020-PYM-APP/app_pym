import 'dart:async';

import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/authentication/app_user.dart';
import 'package:app_pym/domain/usecases/authentication/get_app_user.dart';
import 'package:app_pym/domain/usecases/authentication/send_email_confirmation.dart';
import 'package:app_pym/domain/usecases/authentication/signout.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'authentication_bloc.freezed.dart';
part 'authentication_event.dart';
part 'authentication_state.dart';

@prod
@injectable
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final GetAppUser getAppUser;
  final AuthSignOut signOut;
  final SendEmailConfirmation sendEmailConfirmation;
  StreamSubscription<AppUser> subscription;

  AuthenticationBloc({
    @required this.getAppUser,
    @required this.signOut,
    @required this.sendEmailConfirmation,
  });

  @override
  AuthenticationState get initialState =>
      const AuthenticationState.unauthenticated();

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    yield* event.when(
        refresh: _mapRefreshToState,
        loggedIn: _mapLoggedInToState,
        loggedOut: _mapLoggedOutToState,
        signOut: _mapSignOutToState,
        sendEmailVerification: _mapSendEmailVerificationToState);
  }

  Stream<AuthenticationState> _mapRefreshToState() async* {
    try {
      await subscription?.cancel();
      final user = await getAppUser(const NoParams());
      if (user != null) {
        add(AuthenticationEvent.loggedIn(user));
      } else {
        add(const AuthenticationEvent.loggedOut());
      }
    } catch (_) {
      print("Error");
      yield const AuthenticationState.unauthenticated();
    }
  }

  Stream<AuthenticationState> _mapLoggedInToState(AppUser user) async* {
    yield AuthenticationState.authenticated(user);
  }

  Stream<AuthenticationState> _mapLoggedOutToState() async* {
    yield const AuthenticationState.unauthenticated();
  }

  Stream<AuthenticationState> _mapSignOutToState() async* {
    signOut(const NoParams());
  }

  Stream<AuthenticationState> _mapSendEmailVerificationToState() async* {
    await sendEmailConfirmation(const NoParams());
  }

  @override
  Future<void> close() async {
    await subscription?.cancel();
    return super.close();
  }
}