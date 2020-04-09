import 'dart:convert';

import 'package:app_pym/data/models/map_pym/entreprise_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../fixtures/fixture_reader.dart';

void main() {
  const tEntreprise = EntrepriseModel(
    id: 13,
    idBatiment: 38,
    logo: "SEMAG.png",
    mail: "contact@semag13.com",
    nb_salaries: 15,
    nom: 'SEMAG',
    site_internet: "http:\/\/www.ville-gardanne.fr\/La-Semag",
    telephone: "04 42 65 77 20",
  );

  group('fromJson', () {
    test(
      'should return a valid model',
      () async {
        // arrange
        final Map<String, dynamic> jsonMap = json
            .decode(fixture('map_pym/entreprise.json')) as Map<String, dynamic>;
        // act
        final result = EntrepriseModel.fromJson(jsonMap);
        // assert
        expect(result, tEntreprise);
      },
    );
  });

  group('toJson', () {
    test(
      'should return a JSON map containing the proper data',
      () async {
        // act
        final result = tEntreprise.toJson();
        // assert
        final expectedMap = {
          "id": 13,
          "nom": "SEMAG",
          "site_internet": "http:\/\/www.ville-gardanne.fr\/La-Semag",
          "nb_salaries": 15,
          "telephone": "04 42 65 77 20",
          "mail": "contact@semag13.com",
          "logo": "SEMAG.png",
          "idBatiment": 38
        };
        expect(result, expectedMap);
      },
    );
  });
}
