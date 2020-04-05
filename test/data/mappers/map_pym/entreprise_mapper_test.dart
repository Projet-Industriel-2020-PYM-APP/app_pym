import 'package:app_pym/data/mappers/map_pym/entreprise_mapper.dart';
import 'package:app_pym/data/models/map_pym/entreprise_model.dart';
import 'package:app_pym/domain/entities/map_pym/entreprise.dart';
import 'package:app_pym/injection_container.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' show Environment;

void main() {
  EntrepriseMapper mapper;

  init(env: Environment.test);

  setUp(() {
    mapper = const EntrepriseMapper();
  });

  const tEntreprise = Entreprise(
    id: 13,
    idBatiment: 38,
    logo: "SEMAG.png",
    mail: "contact@semag13.com",
    nb_salaries: 15,
    nom: 'SEMAG',
    site_internet: "http:\/\/www.ville-gardanne.fr\/La-Semag",
    telephone: "04 42 65 77 20",
  );
  const tEntrepriseModel = EntrepriseModel(
    id: 13,
    idBatiment: 38,
    logo: "SEMAG.png",
    mail: "contact@semag13.com",
    nb_salaries: 15,
    nom: 'SEMAG',
    site_internet: "http:\/\/www.ville-gardanne.fr\/La-Semag",
    telephone: "04 42 65 77 20",
  );

  test(
    'mapFrom',
    () async {
      // act
      final result = mapper.mapFrom(tEntreprise);
      // assert
      expect(result, equals(tEntrepriseModel));
    },
  );

  test(
    'mapTo',
    () async {
      // act
      final result = mapper.mapTo(tEntrepriseModel);
      // assert
      expect(result, equals(tEntreprise));
    },
  );
}
