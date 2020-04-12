import 'dart:async';

import 'package:app_pym/core/validators.dart';
import 'package:app_pym/data/datasources/firebase_auth_data_source.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart' show DebounceExtensions, MergeExtension;

part 'forgot_bloc.freezed.dart';
part 'forgot_event.dart';
part 'forgot_state.dart';

@prod
@injectable
class ForgotBloc extends Bloc<ForgotEvent, ForgotState> {
  final FirebaseAuthDataSource firebaseAuthDataSource;

  ForgotBloc(this.firebaseAuthDataSource);

  @override
  ForgotState get initialState => ForgotState.empty();

  @override
  Stream<ForgotState> mapEventToState(
    ForgotEvent event,
  ) async* {
    yield* event.when(
      emailChanged: _mapEmailChangedToState,
      submitted: _mapFormSubmittedToState,
    );
  }

  @override
  Stream<ForgotState> transformEvents(
    Stream<ForgotEvent> events,
    Stream<ForgotState> Function(ForgotEvent event) next,
  ) {
    final nonDebounceStream = events.where((event) {
      return event is! EmailChanged;
    });
    final debounceStream = events.where((event) {
      return event is EmailChanged;
    }).debounceTime(const Duration(milliseconds: 300));
    return super
        .transformEvents(nonDebounceStream.mergeWith([debounceStream]), next);
  }

  Stream<ForgotState> _mapEmailChangedToState(String email) async* {
    yield state.update(
      isEmailValid: Validators.isValidEmail(email),
    );
  }

  Stream<ForgotState> _mapFormSubmittedToState(
    String email,
  ) async* {
    yield ForgotState.loading();
    try {
      await firebaseAuthDataSource.forgotPassword(email);
      yield ForgotState.success();
    } catch (_) {
      yield ForgotState.failure();
    }
  }
}
