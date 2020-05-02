import 'package:app_pym/data/models/map_pym/entreprise_model.dart';
import 'package:app_pym/domain/entities/map_pym/entreprise.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const model = EntrepriseModel(
    id: 13,
    idBatiment: 38,
    logo: "SEMAG.png",
    mail: "contact@semag13.com",
    nb_salaries: 15,
    nom: 'SEMAG',
    site_internet: "http:\/\/www.ville-gardanne.fr\/La-Semag",
    telephone: "04 42 65 77 20",
  );

  const entity = Entreprise(
    id: 13,
    idBatiment: 38,
    logo: "SEMAG.png",
    mail: "contact@semag13.com",
    nb_salaries: 15,
    nom: 'SEMAG',
    site_internet: "http:\/\/www.ville-gardanne.fr\/La-Semag",
    telephone: "04 42 65 77 20",
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
