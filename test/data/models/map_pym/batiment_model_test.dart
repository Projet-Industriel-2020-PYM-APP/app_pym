import 'dart:convert';

import 'package:app_pym/data/models/map_pym/batiment_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../fixtures/fixture_reader.dart';

void main() {
  const tBatimentModel = BatimentModel(
    id: 1,
    accesHandicape: false,
    adresse: "Rue",
    description: "Description",
    nbEtage: 2,
    nom: "Entreprise",
    url: "Super",
  );

  group('fromJson', () {
    test(
      'should return a valid model',
      () async {
        // arrange
        final Map<String, dynamic> jsonMap = json
            .decode(fixture('map_pym/batiment.json')) as Map<String, dynamic>;
        // act
        final result = BatimentModel.fromJson(jsonMap);
        // assert
        expect(result, tBatimentModel);
      },
    );
  });

  group('toJson', () {
    test(
      'should return a JSON map containing the proper data',
      () async {
        // act
        final result = tBatimentModel.toJson();
        // assert
        final expectedMap = {
          "id": 1,
          "accesHandicape": false,
          "adresse": "Rue",
          "description": "Description",
          "nbEtage": 2,
          "nom": "Entreprise",
          "url": "Super",
        };
        expect(result, expectedMap);
      },
    );
  });
}
