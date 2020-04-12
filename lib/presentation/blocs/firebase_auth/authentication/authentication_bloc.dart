import 'dart:async';

import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/firebase_auth/app_user.dart';
import 'package:app_pym/domain/usecases/firebase_auth/get_user.dart';
import 'package:app_pym/domain/usecases/firebase_auth/is_signed_in.dart';
import 'package:app_pym/domain/usecases/firebase_auth/signout.dart';
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
  final IsSignedIn isSignedIn;
  final FirebaseAuthSignOut signOut;

  AuthenticationBloc({
    @required this.getAppUser,
    @required this.isSignedIn,
    @required this.signOut,
  });

  @override
  AuthenticationState get initialState =>
      const AuthenticationState.uninitialized();

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    yield* event.when(
      appStated: _mapAppStartedToState,
      loggedIn: _mapLoggedInToState,
      loggedOut: _mapLoggedOutToState,
    );
  }

  Stream<AuthenticationState> _mapAppStartedToState() async* {
    try {
      final status = await isSignedIn(const NoParams());
      if (status) {
        add(const AuthenticationEvent.loggedIn());
      } else {
        yield const AuthenticationState.unauthenticated();
      }
    } catch (_) {
      yield const AuthenticationState.unauthenticated();
    }
  }

  Stream<AuthenticationState> _mapLoggedInToState() async* {
    yield AuthenticationState.authenticated(getAppUser(const NoParams()));
  }

  Stream<AuthenticationState> _mapLoggedOutToState() async* {
    yield const AuthenticationState.unauthenticated();
    await signOut(const NoParams());
  }
}
