import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/app_pym/booking.dart';
import 'package:app_pym/domain/repositories/app_pym/booking_repository.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
class FetchAllBookingsOfService extends Usecase<Future<List<Booking>>, int> {
  final BookingRepository repository;

  const FetchAllBookingsOfService(this.repository);

  @override
  Future<List<Booking>> call(int service_id) {
    return repository.fetchAllOf(service_id);
  }
}
