part of 'fetch_all_bookings_of_service_bloc.dart';

@freezed
abstract class FetchAllBookingsOfServiceEvent
    with _$FetchAllBookingsOfServiceEvent {
  const factory FetchAllBookingsOfServiceEvent.fetch(int service_id) =
      FetchAllBookingsOfServiceFetch;
  const factory FetchAllBookingsOfServiceEvent.refresh(
      List<Booking> bookings, DateTime date) = FetchAllBookingsOfServiceRefresh;
}
