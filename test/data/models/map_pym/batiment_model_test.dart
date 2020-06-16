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
    isVisibleAR: true,
    img_url: "https://via.placeholder.com/300/09f/fff.png",
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
    isVisibleAR: true,
    img_url: "https://via.placeholder.com/300/09f/fff.png",
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
