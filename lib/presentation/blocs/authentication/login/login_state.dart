part of 'login_bloc.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    @required bool isEmailValid,
    @required bool isPasswordValid,
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    String error,
  }) = _LoginState;

  factory LoginState.empty() {
    return const LoginState(
      isEmailValid: true,
      isPasswordValid: true,
      isSubmitting: false,
      isSuccess: false,
      isFailure: false,
    );
  }

  factory LoginState.loading() {
    return const LoginState(
      isEmailValid: true,
      isPasswordValid: true,
      isSubmitting: true,
      isSuccess: false,
      isFailure: false,
    );
  }

  factory LoginState.failure(String error) {
    return LoginState(
      isEmailValid: true,
      isPasswordValid: true,
      isSubmitting: false,
      isSuccess: false,
      isFailure: true,
      error: error,
    );
  }

  factory LoginState.success() {
    return const LoginState(
      isEmailValid: true,
      isPasswordValid: true,
      isSubmitting: false,
      isSuccess: true,
      isFailure: false,
    );
  }
}

extension LoginStateX on LoginState {
  bool get isFormValid => isEmailValid && isPasswordValid;

  LoginState updateEmail({
    bool isEmailValid,
  }) {
    return this.copyWith(
      isEmailValid: isEmailValid,
      isSubmitting: false,
      isSuccess: false,
      isFailure: false,
    );
  }

  LoginState updatePassword({bool isPasswordValid}) {
    return this.copyWith(
      isPasswordValid: isPasswordValid,
      isSubmitting: false,
      isSuccess: false,
      isFailure: false,
    );
  }
}
