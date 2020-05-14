import 'package:app_pym/data/models/app_pym/booking_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking.freezed.dart';

@freezed
abstract class Booking with _$Booking {
  const factory Booking({
    @required int id,
    @required int service_id,
    @required DateTime start_date,
    @required DateTime end_date,
    @required String title,
  }) = _Booking;
}

extension BookingX on Booking {
  BookingModel toModel() {
    return BookingModel(
      id: this.id,
      service_id: this.service_id,
      start_date: this.start_date.toUtc(),
      end_date: this.end_date.toUtc(),
      title: this.title,
    );
  }
}
