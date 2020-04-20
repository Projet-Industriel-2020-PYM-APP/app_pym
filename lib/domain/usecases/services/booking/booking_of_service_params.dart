import 'package:app_pym/domain/entities/app_pym/booking.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_of_service_params.freezed.dart';

@freezed
abstract class BookingOfServiceParams with _$BookingOfServiceParams {
  const factory BookingOfServiceParams(
    String service_id,
    Booking booking,
  ) = _BookingOfServiceParams;
}
