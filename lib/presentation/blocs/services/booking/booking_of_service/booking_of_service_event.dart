part of 'booking_of_service_bloc.dart';

@freezed
abstract class BookingOfServiceEvent with _$BookingOfServiceEvent {
  const factory BookingOfServiceEvent.titleChanged(String title) = TitleChanged;
  const factory BookingOfServiceEvent.add({
    @required String service_id,
    @required Booking booking,
  }) = BookingOfServiceAdd;
  const factory BookingOfServiceEvent.delete({
    @required String service_id,
    @required Booking booking,
  }) = BookingOfServiceDelete;
  const factory BookingOfServiceEvent.update({
    @required String service_id,
    @required Booking booking,
  }) = BookingOfServiceUpdate;
}
