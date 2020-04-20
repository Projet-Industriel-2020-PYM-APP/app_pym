import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/app_pym/booking.dart';
import 'package:app_pym/domain/repositories/app_pym/booking_repository.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class FetchAllBookingsOfService extends Usecase<Stream<List<Booking>>, String> {
  final BookingRepository repository;

  const FetchAllBookingsOfService(this.repository);

  @override
  Stream<List<Booking>> call(String service_id) {
    return repository.fetchAllBookingsOf(service_id);
  }
}
