import 'package:app_pym/data/models/mobility/calendar_model.dart';
import 'package:app_pym/domain/entities/mobility/calendar.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const model = CalendarModel(
    service_id: "0",
    monday: true,
    tuesday: true,
    wednesday: true,
    thursday: true,
    friday: true,
    saturday: false,
    sunday: false,
    start_date: "20191026",
    end_date: "20201010",
  );

  const entity = Calendar(
    service_id: "0",
    weekdays: [
      true,
      true,
      true,
      true,
      true,
      false,
      false,
    ],
    start_date: "20191026",
    end_date: "20201010",
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
