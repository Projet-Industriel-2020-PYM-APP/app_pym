import 'package:app_pym/domain/entities/map_pym/batiment.dart';
import 'package:app_pym/domain/repositories/map_pym/batiment_repository.dart';
import 'package:app_pym/domain/usecases/cartographie/get_batiment_detail.dart';
import 'package:app_pym/injection_container.dart';
import 'package:injectable/injectable.dart' show Environment;
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  GetBatimentDetail usecase;
  BatimentRepository mockBatimentRepository;

  init(env: Environment.test);

  setUp(() {
    mockBatimentRepository = sl<BatimentRepository>();
    usecase = GetBatimentDetail(batimentRepository: mockBatimentRepository);
  });

  const tBatiment = Batiment(
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

  test(
    'should get from the repository',
    () async {
      // arrange
      when(mockBatimentRepository.fetch(any))
          .thenAnswer((_) async => tBatiment);
      // act
      final result = await usecase(1);
      // assert
      expect(result, tBatiment);
      verify(mockBatimentRepository.fetch(1));
      verifyNoMoreInteractions(mockBatimentRepository);
    },
  );
}
