import 'package:app_pym/data/mappers/map_pym/batiment_mapper.dart';
import 'package:app_pym/data/models/map_pym/batiment_model.dart';
import 'package:app_pym/domain/entities/map_pym/batiment.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  BatimentMapper mapper;

  setUp(() {
    mapper = const BatimentMapper();
  });

  const tBatimentModel = BatimentModel(
    id: 1,
    accesHandicape: false,
    adresse: "Rue",
    description: "Description",
    nbEtage: 2,
    nom: "Entreprise",
    url: "Super",
  );
  const tBatiment = Batiment(
    id: 1,
    accesHandicape: false,
    adresse: "Rue",
    description: "Description",
    nbEtage: 2,
    nom: "Entreprise",
    url: "Super",
  );

  test(
    'mapFrom',
    () async {
      // act
      final result = mapper.mapFrom(tBatiment);
      // assert
      expect(result, equals(tBatimentModel));
    },
  );

  test(
    'mapTo',
    () async {
      // act
      final result = mapper.mapTo(tBatimentModel);
      // assert
      expect(result, equals(tBatiment));
    },
  );
}
