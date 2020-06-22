import 'package:app_pym/data/models/mobility/stop_model.dart';
import 'package:app_pym/data/models/mobility/stop_time_model.dart';
import 'package:app_pym/domain/entities/mobility/stop.dart';
import 'package:app_pym/domain/entities/mobility/stop_time.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const tStopModels = <StopModel>[
    StopModel(
      stop_id: "133305",
      stop_code: "1021",
      stop_name: "Centre",
      stop_lat: "43.6211020893",
      stop_long: "5.298032832",
      location_type: 0,
    ),
    StopModel(
      stop_id: "133306",
      stop_code: "1020",
      stop_name: "Centre 2",
      stop_lat: "43.6211020893",
      stop_long: "5.298032832",
      location_type: 0,
    ),
  ];
  const model = StopTimeModel(
    trip_id: "737841",
    arrival_time: "06:00:00",
    departure_time: "06:00:00",
    stop_id: "133305",
    stop_sequence: "1",
  );

  const entity = StopTime(
    trip_id: "737841",
    arrival_time: "06:00:00",
    departure_time: "06:00:00",
    stop_id: "133305",
    stop_sequence: "1",
    stop: Stop(
      stop_id: "133305",
      stop_code: "1021",
      stop_name: "Centre",
      stop_lat: "43.6211020893",
      stop_long: "5.298032832",
      location_type: 0,
    ),
  );

  group('toEntity', () {
    test(
      'should return a valid entity',
      () async {
        // act
        final result = model.toEntity(stopModels: tStopModels);
        // assert
        expect(result, equals(entity));
      },
    );
  });
}
