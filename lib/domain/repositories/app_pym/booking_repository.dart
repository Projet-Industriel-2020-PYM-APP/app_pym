import 'package:app_pym/domain/entities/app_pym/booking.dart';

abstract class BookingRepository {
  Future<void> create(Booking booking);
  Future<void> delete(int booking_id);
  Future<List<Booking>> fetchAllOf(int service_id);
  Future<void> update(Booking booking);
}
