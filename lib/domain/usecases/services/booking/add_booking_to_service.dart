import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/repositories/app_pym/booking_repository.dart';
import 'package:app_pym/domain/usecases/services/booking/booking_of_service_params.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class AddBookingToService
    extends Usecase<Future<void>, BookingOfServiceParams> {
  final BookingRepository repository;

  const AddBookingToService(this.repository);

  @override
  Future<void> call(BookingOfServiceParams params) {
    return repository.addBookingTo(params.service_id, params.booking);
  }
}
