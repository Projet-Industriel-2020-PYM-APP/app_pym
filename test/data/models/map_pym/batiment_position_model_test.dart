import 'dart:convert';

import 'package:app_pym/data/models/map_pym/batiment_position_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../fixtures/fixture_reader.dart';

void main() {
  const tBatimentPosition = BatimentPositionModel(
    idBatiment: 1,
    latitude: 44,
    longitude: 3,
  );

  group('fromJson', () {
    test(
      'should return a valid model',
      () async {
        // arrange
        final Map<String, dynamic> jsonMap =
            json.decode(fixture('map_pym/batiment_position.json'))
                as Map<String, dynamic>;
        // act
        final result = BatimentPositionModel.fromJson(jsonMap);
        // assert
        expect(result, tBatimentPosition);
      },
    );
  });

  group('toJson', () {
    test(
      'should return a JSON map containing the proper data',
      () async {
        // act
        final result = tBatimentPosition.toJson();
        // assert
        final expectedMap = {
          "latitude": 44,
          "longitude": 3,
          "idBatiment": 1,
        };
        expect(result, expectedMap);
      },
    );
  });
}
