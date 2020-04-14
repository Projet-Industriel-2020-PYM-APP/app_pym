import 'package:app_pym/core/error/exceptions.dart';
import 'package:app_pym/domain/entities/map_pym/entreprise.dart';
import 'package:app_pym/domain/usecases/cartographie/get_entreprises_of_batiment.dart';
import 'package:app_pym/injection_container.dart';
import 'package:app_pym/presentation/blocs/cartographie/entreprise/entreprise_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' show Environment;
import 'package:mockito/mockito.dart';

void main() {
  EntrepriseBloc bloc;
  GetEntreprisesOfBatiment mockGetEntreprisesOfBatiment;

  init(env: Environment.test);

  setUp(() {
    mockGetEntreprisesOfBatiment = sl<GetEntreprisesOfBatiment>();

    bloc = EntrepriseBloc(mockGetEntreprisesOfBatiment);
  });

  test('initialState should be EntrepriseInitial', () {
    // assert
    expect(bloc.initialState, equals(const EntrepriseInitial()));
  });

  group('GetEntreprisesOfBatimentEvent', () {
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
      'should get data from the concrete use case',
      () async {
        // arrange
        when(mockGetEntreprisesOfBatiment(any))
            .thenAnswer((_) async => [tEntreprise]);
        // act
        bloc.add(const GetEntreprisesOfBatimentEvent(38));
        await untilCalled(mockGetEntreprisesOfBatiment(any));
        // assert
        verify(mockGetEntreprisesOfBatiment(38));
        await bloc.close();
      },
    );

    test(
      'should emit [EntrepriseInitial, EntrepriseLoading, EntreprisesOfBatimentLoaded] when data is gotten successfully',
      () async {
        // arrange
        when(mockGetEntreprisesOfBatiment(any))
            .thenAnswer((_) async => [tEntreprise]);
        // assert later
        const expected = <EntrepriseState>[
          EntrepriseInitial(),
          EntrepriseLoading(),
          EntreprisesOfBatimentLoaded([tEntreprise]),
        ];
        final Future<void> future = expectLater(bloc, emitsInOrder(expected));
        // act
        bloc.add(const GetEntreprisesOfBatimentEvent(1));
        await future;
        await bloc.close();
      },
    );

    test(
      'should emit [EntrepriseInitial, EntrepriseLoading, EntrepriseError] when getting data fails',
      () async {
        // arrange
        final tError = ServerException('ServerException');
        when(mockGetEntreprisesOfBatiment(any)).thenThrow(tError);
        // assert later
        final expected = [
          const EntrepriseInitial(),
          const EntrepriseLoading(),
          EntrepriseError(tError),
        ];
        final Future<void> future = expectLater(bloc, emitsInOrder(expected));
        // act
        bloc.add(const GetEntreprisesOfBatimentEvent(1));
        await future;
        await bloc.close();
      },
    );
  });
}
