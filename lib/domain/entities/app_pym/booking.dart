import 'package:app_pym/data/models/app_pym/booking_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking.freezed.dart';

@freezed
abstract class Booking with _$Booking {
  const factory Booking({
    String id,
    DateTime start_date,
    DateTime end_date,
    String title,
  }) = _Booking;
}

extension BookingX on Booking {
  BookingModel toModel() {
    return BookingModel(
      id: this.id,
      start_date: this.start_date,
      end_date: this.end_date,
      title: this.title,
    );
  }
}
