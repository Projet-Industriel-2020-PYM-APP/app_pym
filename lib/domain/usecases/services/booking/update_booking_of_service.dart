import 'package:app_pym/core/error/exceptions.dart';
import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/repositories/app_pym/booking_repository.dart';
import 'package:app_pym/domain/usecases/services/booking/booking_of_service_params.dart';
import 'package:injectable/injectable.dart';

/// Update a booking of a service
///
/// Returns void if success.
///
/// Throws [NotAuthenticatedException] if no AppUser exists.
///
/// Throws [EmailNotVerifiedException] if the email of the AppUser is
/// not confirmed
@prod
@lazySingleton
class UpdateBookingOfService
    extends Usecase<Future<void>, BookingOfServiceParams> {
  final BookingRepository repository;

  const UpdateBookingOfService(this.repository);

  @override
  Future<void> call(BookingOfServiceParams params) {
    if (params.appUser == null) {
      throw NotAuthenticatedException();
    } else if (!params.appUser.is_email_verified) {
      throw EmailNotVerifiedException();
    }
    return repository.update(params.booking);
  }
}
