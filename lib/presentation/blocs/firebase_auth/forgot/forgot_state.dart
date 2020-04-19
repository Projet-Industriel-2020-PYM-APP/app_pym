part of 'forgot_bloc.dart';

@freezed
abstract class ForgotState with _$ForgotState {
  const factory ForgotState({
    @required bool isEmailValid,
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
  }) = _ForgotState;

  factory ForgotState.empty() {
    return const ForgotState(
      isEmailValid: true,
      isSubmitting: false,
      isSuccess: false,
      isFailure: false,
    );
  }

  factory ForgotState.loading() {
    return const ForgotState(
      isEmailValid: true,
      isSubmitting: true,
      isSuccess: false,
      isFailure: false,
    );
  }

  factory ForgotState.failure() {
    return const ForgotState(
      isEmailValid: true,
      isSubmitting: false,
      isSuccess: false,
      isFailure: true,
    );
  }

  factory ForgotState.success() {
    return const ForgotState(
      isEmailValid: true,
      isSubmitting: false,
      isSuccess: true,
      isFailure: false,
    );
  }
}

extension ForgotStateX on ForgotState {
  bool get isFormValid => this.isEmailValid;

  ForgotState update({
    bool isEmailValid,
    bool isPasswordValid,
  }) {
    return this.copyWith(
      isEmailValid: isEmailValid,
      isSubmitting: false,
      isSuccess: false,
      isFailure: false,
    );
  }
}
