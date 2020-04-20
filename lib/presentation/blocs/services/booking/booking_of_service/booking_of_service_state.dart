part of 'booking_of_service_bloc.dart';

@freezed
abstract class BookingOfServiceState with _$BookingOfServiceState {
  const factory BookingOfServiceState({
    @required bool isTitleValid,
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    Exception error,
  }) = _BookingOfServiceState;

  factory BookingOfServiceState.empty() {
    return const BookingOfServiceState(
      isTitleValid: false,
      isSubmitting: false,
      isSuccess: false,
      isFailure: false,
    );
  }

  factory BookingOfServiceState.loading() {
    return const BookingOfServiceState(
      isTitleValid: true,
      isSubmitting: true,
      isSuccess: false,
      isFailure: false,
    );
  }

  factory BookingOfServiceState.failure(Exception error) {
    return BookingOfServiceState(
      isTitleValid: true,
      isSubmitting: false,
      isSuccess: false,
      isFailure: true,
      error: error,
    );
  }

  factory BookingOfServiceState.success() {
    return const BookingOfServiceState(
      isTitleValid: true,
      isSubmitting: false,
      isSuccess: true,
      isFailure: false,
    );
  }
}

extension BookingOfServiceStateX on BookingOfServiceState {
  bool get isFormValid => this.isTitleValid;

  BookingOfServiceState updateTitle({
    bool isTitleValid,
  }) {
    return this.copyWith(
      isTitleValid: isTitleValid,
      isSubmitting: false,
      isSuccess: false,
      isFailure: false,
    );
  }
}
