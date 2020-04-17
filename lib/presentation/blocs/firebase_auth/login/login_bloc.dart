import 'dart:async';

import 'package:app_pym/core/validators.dart';
import 'package:app_pym/domain/usecases/firebase_auth/signin.dart';
import 'package:app_pym/domain/usecases/firebase_auth/signup.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart' show DebounceExtensions, MergeExtension;

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

@prod
@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final FirebaseAuthSignIn firebaseAuthSignIn;
  final FirebaseAuthSignUp firebaseAuthSignUp;

  LoginBloc(this.firebaseAuthSignIn, this.firebaseAuthSignUp);

  @override
  LoginState get initialState => LoginState.empty();

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    yield* event.when(
        emailChanged: _mapEmailChangedToState,
        passwordChanged: _mapPasswordChangedToState,
        withCredentialsPressed: _mapWithCredentialsPressedToState,
        signUp: _mapFormSubmittedToState);
  }

  @override
  Stream<LoginState> transformEvents(
    Stream<LoginEvent> events,
    Stream<LoginState> Function(LoginEvent event) next,
  ) {
    final nonDebounceStream = events.where((event) {
      return event is! EmailChanged && event is! PasswordChanged;
    });
    final debounceStream = events.where((event) {
      return event is EmailChanged || event is PasswordChanged;
    }).debounceTime(const Duration(milliseconds: 300));
    return super
        .transformEvents(nonDebounceStream.mergeWith([debounceStream]), next);
  }

  Stream<LoginState> _mapEmailChangedToState(String email) async* {
    yield state.updateEmail(
      isEmailValid: Validators.isValidEmail(email),
    );
  }

  Stream<LoginState> _mapWithCredentialsPressedToState(
    String email,
    String password,
  ) async* {
    yield LoginState.loading();
    try {
      await firebaseAuthSignIn(SignInCredentials(email, password));
      yield LoginState.success();
    } on PlatformException catch (e) {
      yield LoginState.failure(e.message);
    } catch (e) {
      yield LoginState.failure(e.toString());
    }
  }

  Stream<LoginState> _mapPasswordChangedToState(String password) async* {
    yield state.updatePassword(
      isPasswordValid: Validators.isValidPassword(password),
    );
  }

  Stream<LoginState> _mapFormSubmittedToState(
    String email,
    String password,
  ) async* {
    yield LoginState.loading();
    try {
      await firebaseAuthSignUp(SignUpCredentials(email, password));
      yield LoginState.success();
    } on PlatformException catch (e) {
      yield LoginState.failure(e.message);
    } catch (e) {
      yield LoginState.failure(e.toString());
    }
  }
}
