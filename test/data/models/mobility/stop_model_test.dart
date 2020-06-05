import 'package:app_pym/data/models/mobility/stop_model.dart';
import 'package:app_pym/domain/entities/mobility/stop.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const model = StopModel(
    stop_id: "133305",
    stop_code: "1020",
    stop_name: "Centre",
    stop_lat: "43.6211020893",
    stop_long: "5.298032832",
    location_type: 0,
  );

  const entity = Stop(
    stop_id: "133305",
    stop_code: "1020",
    stop_name: "Centre",
    stop_lat: "43.6211020893",
    stop_long: "5.298032832",
    location_type: 0,
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
