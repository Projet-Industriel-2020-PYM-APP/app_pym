part of 'forgot_bloc.dart';

@freezed
abstract class ForgotEvent with _$ForgotEvent {
  const factory ForgotEvent.emailChanged(String email) = EmailChanged;
  const factory ForgotEvent.submitted(String email) = Submitted;
}
