import 'dart:async';
import 'package:bloc/bloc.dart';

import 'package:flutter/foundation.dart';
import 'package:app_pym/core/validators.dart';
import 'package:app_pym/domain/usecases/firebase_auth/signup.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart' show DebounceExtensions, MergeExtension;

part 'register_bloc.freezed.dart';
part 'register_event.dart';
part 'register_state.dart';

@prod
@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final FirebaseAuthSignUp firebaseAuthSignUp;

  RegisterBloc(this.firebaseAuthSignUp);

  @override
  RegisterState get initialState => RegisterState.empty();

  @override
  Stream<RegisterState> transformEvents(
    Stream<RegisterEvent> events,
    Stream<RegisterState> Function(RegisterEvent event) next,
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

  @override
  Stream<RegisterState> mapEventToState(
    RegisterEvent event,
  ) async* {
    event.when(
      emailChanged: _mapEmailChangedToState,
      passwordChanged: _mapPasswordChangedToState,
      submitted: _mapFormSubmittedToState,
    );
  }

  Stream<RegisterState> _mapEmailChangedToState(String email) async* {
    yield state.update(
      isEmailValid: Validators.isValidEmail(email),
    );
  }

  Stream<RegisterState> _mapPasswordChangedToState(String password) async* {
    yield state.update(
      isPasswordValid: Validators.isValidPassword(password),
    );
  }

  Stream<RegisterState> _mapFormSubmittedToState(
    String email,
    String password,
  ) async* {
    yield RegisterState.loading();
    try {
      await firebaseAuthSignUp(SignUpCredentials(email, password));
      yield RegisterState.success();
    } catch (_) {
      yield RegisterState.failure();
    }
  }
}
