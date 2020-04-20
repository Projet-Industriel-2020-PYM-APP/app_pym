part of 'booking_of_service_bloc.dart';

@freezed
abstract class BookingOfServiceEvent with _$BookingOfServiceEvent {
  const factory BookingOfServiceEvent.titleChanged(String title) = TitleChanged;
  const factory BookingOfServiceEvent.add({
    @required String service_id,
    @required Booking booking,
    @required AppUser appUser,
  }) = BookingOfServiceAdd;
  const factory BookingOfServiceEvent.delete({
    @required String service_id,
    @required Booking booking,
    @required AppUser appUser,
  }) = BookingOfServiceDelete;
  const factory BookingOfServiceEvent.update({
    @required String service_id,
    @required Booking booking,
    @required AppUser appUser,
  }) = BookingOfServiceUpdate;
}
