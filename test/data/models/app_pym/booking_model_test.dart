import 'package:app_pym/data/models/app_pym/booking_model.dart';
import 'package:app_pym/domain/entities/app_pym/booking.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final DateTime tDate = DateTime.now();
  final BookingModel model = BookingModel(
    id: 0,
    title: "title",
    service_id: 0,
    start_date: tDate,
    end_date: tDate,
  );
  final Booking entity = Booking(
    id: 0,
    title: "title",
    service_id: 0,
    start_date: tDate,
    end_date: tDate,
  );
  group('toEntity', () {
    test(
      'should return a valid entity',
      () async {
        // act
        final result = model.toEntity();
        // assert
        expect(result, equals(entity));
      },
    );
  });
}
