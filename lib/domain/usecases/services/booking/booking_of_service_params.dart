import 'package:app_pym/domain/entities/app_pym/booking.dart';
import 'package:app_pym/domain/entities/authentication/app_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_of_service_params.freezed.dart';

@freezed
abstract class BookingOfServiceParams with _$BookingOfServiceParams {
  const factory BookingOfServiceParams({
    @required @nullable Booking booking,
    @required @nullable AppUser appUser,
  }) = _BookingOfServiceParams;
}
