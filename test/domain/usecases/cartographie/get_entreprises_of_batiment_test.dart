import 'package:app_pym/domain/entities/map_pym/entreprise.dart';
import 'package:app_pym/domain/repositories/map_pym/entreprise_repository.dart';
import 'package:app_pym/domain/usecases/cartographie/get_entreprises_of_batiment.dart';
import 'package:app_pym/injection_container.dart';
import 'package:injectable/injectable.dart' show Environment;
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  GetEntreprisesOfBatiment usecase;
  EntrepriseRepository mockEntrepriseRepository;

  init(env: Environment.test);

  setUp(() {
    mockEntrepriseRepository = sl<EntrepriseRepository>();
    usecase = GetEntreprisesOfBatiment(
        entrepriseRepository: mockEntrepriseRepository);
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

  test(
    'should get from the repository',
    () async {
      // arrange
      when(mockEntrepriseRepository.fetchEntreprisesOfBatiment(any))
          .thenAnswer((_) async => [tEntreprise]);
      // act
      final result = await usecase(13);
      // assert
      expect(result, [tEntreprise]);
      verify(mockEntrepriseRepository.fetchEntreprisesOfBatiment(13));
      verifyNoMoreInteractions(mockEntrepriseRepository);
    },
  );
}
