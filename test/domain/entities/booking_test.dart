import 'package:app_pym/data/models/app_pym/booking_model.dart';
import 'package:app_pym/domain/entities/app_pym/booking.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final DateTime tDate = DateTime.now();
  final BookingModel model = BookingModel(
    id: 0,
    title: "title",
    service_id: 0,
    start_date: tDate.toUtc(),
    end_date: tDate.toUtc(),
    superpose: true,
  );
  final Booking entity = Booking(
    id: 0,
    title: "title",
    service_id: 0,
    start_date: tDate.toLocal(),
    end_date: tDate.toLocal(),
    superpose: true,
  );
  group('toModel', () {
    test(
      'should return a valid model',
      () async {
        // act
        final result = entity.toModel();
        // assert
        expect(result, equals(model));
      },
    );
  });
}
