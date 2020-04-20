import 'package:app_pym/domain/entities/app_pym/booking.dart';

abstract class BookingRepository {
  Stream<List<Booking>> fetchAllBookingsOf(String service_id);
  Future<void> addBookingTo(String service_id, Booking booking);
  Future<void> deleteBookingOf(String service_id, String booking_id);
  Future<void> updateBookingOf(String service_id, Booking booking);
}
