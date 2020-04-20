part of 'fetch_all_bookings_of_service_bloc.dart';

@freezed
abstract class FetchAllBookingsOfServiceState
    with _$FetchAllBookingsOfServiceState {
  const factory FetchAllBookingsOfServiceState.initial() =
      FetchAllBookingsOfServiceInitial;
  const factory FetchAllBookingsOfServiceState.loading() =
      FetchAllBookingsOfServiceLoading;
  const factory FetchAllBookingsOfServiceState.loaded(List<Booking> bookings) =
      FetchAllBookingsOfServiceLoaded;
  const factory FetchAllBookingsOfServiceState.error(String message) =
      FetchAllBookingsOfServiceError;
}
