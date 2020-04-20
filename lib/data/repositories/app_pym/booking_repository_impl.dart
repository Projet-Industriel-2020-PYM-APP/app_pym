import 'package:app_pym/data/datasources/firestore_data_source.dart';
import 'package:app_pym/data/models/app_pym/booking_model.dart';
import 'package:app_pym/domain/entities/app_pym/booking.dart';
import 'package:app_pym/domain/repositories/app_pym/booking_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@prod
@RegisterAs(BookingRepository)
@lazySingleton
@injectable
class BookingRepositoryImpl implements BookingRepository {
  final FirestoreDataSource dataSource;

  const BookingRepositoryImpl({
    @required this.dataSource,
  });

  @override
  Future<void> addBookingTo(String service_id, Booking booking) {
    return dataSource.addBookingTo(service_id, booking.toModel());
  }

  @override
  Future<void> deleteBookingOf(String service_id, String booking_id) {
    return dataSource.deleteBookingOf(service_id, booking_id);
  }

  @override
  Stream<List<Booking>> fetchAllBookingsOf(String service_id) {
    return dataSource
        .fetchAllBookingsOf(service_id)
        .map((list) => list.map((e) => e.toEntity()).toList());
  }

  @override
  Future<void> updateBookingOf(String service_id, Booking booking) {
    return dataSource.updateBookingOf(service_id, booking.toModel());
  }
}
