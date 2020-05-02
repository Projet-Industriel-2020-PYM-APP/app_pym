import 'package:app_pym/data/models/map_pym/batiment_model.dart';
import 'package:app_pym/domain/entities/map_pym/batiment.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const model = BatimentModel(
    id: 1,
    accesHandicape: false,
    adresse: "Rue",
    description: "Description",
    nbEtage: 2,
    nom: "Entreprise",
    url: "Super",
    latitude: 1.0,
    longitude: 2.0,
  );

  const entity = Batiment(
    id: 1,
    accesHandicape: false,
    adresse: "Rue",
    description: "Description",
    nbEtage: 2,
    nom: "Entreprise",
    url: "Super",
    latitude: 1.0,
    longitude: 2.0,
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
