import 'dart:async';

import 'package:app_pym/core/validators.dart';
import 'package:app_pym/domain/usecases/authentication/forgot_password.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
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
  final ForgotPassword forgotPassword;

  ForgotBloc(this.forgotPassword);

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
  Stream<Transition<ForgotEvent, ForgotState>> transformEvents(
    Stream<ForgotEvent> events,
    Stream<Transition<ForgotEvent, ForgotState>> Function(ForgotEvent)
        transitionFn,
  ) {
    final nonDebounceStream = events.where((event) {
      return event is! EmailChanged;
    });
    final debounceStream = events.where((event) {
      return event is EmailChanged;
    }).debounceTime(const Duration(milliseconds: 300));
    return super.transformEvents(
        nonDebounceStream.mergeWith([debounceStream]), transitionFn);
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
      await forgotPassword(email);
      yield ForgotState.success();
    } on PlatformException catch (e) {
      yield ForgotState.failure(e.message);
    } catch (e) {
      yield ForgotState.failure(e.toString());
    }
  }
}
