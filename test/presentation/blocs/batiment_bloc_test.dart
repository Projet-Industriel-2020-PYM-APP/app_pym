import 'package:app_pym/core/error/exceptions.dart';
import 'package:app_pym/domain/entities/map_pym/batiment.dart';
import 'package:app_pym/domain/usecases/cartographie/get_batiment_detail.dart';
import 'package:app_pym/injection_container.dart';
import 'package:app_pym/presentation/blocs/cartographie/batiment/batiment_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' show Environment;
import 'package:mockito/mockito.dart';

void main() {
  BatimentBloc bloc;
  GetBatimentDetail mockGetBatimentDetail;

  init(env: Environment.test);

  setUp(() {
    mockGetBatimentDetail = sl<GetBatimentDetail>();

    bloc = BatimentBloc(mockGetBatimentDetail);
  });

  test('initialState should be BatimentInitial', () {
    // assert
    expect(bloc.initialState, equals(const BatimentInitial()));
  });

  group('GetBatimentDetailEvent', () {
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
      isVisibleAR: true,
      img_url: "https://via.placeholder.com/300/09f/fff.png",
    );

    test(
      'should get data from the concrete use case',
      () async {
        // arrange
        when(mockGetBatimentDetail(any)).thenAnswer((_) async => tBatiment);
        // act
        bloc.add(const GetBatimentDetailEvent(1));
        await untilCalled(mockGetBatimentDetail(any));
        // assert
        verify(mockGetBatimentDetail(1));
      },
    );

    test(
      'should emit [BatimentInitial, BatimentLoading, BatimentLoaded] when data is gotten successfully',
      () async {
        // arrange
        when(mockGetBatimentDetail(any)).thenAnswer((_) async => tBatiment);
        // assert later
        const expected = [
          BatimentInitial(),
          BatimentLoading(),
          BatimentLoaded(tBatiment),
        ];
        final Future<void> future = expectLater(bloc, emitsInOrder(expected));
        // act
        bloc.add(const GetBatimentDetailEvent(1));
        await future;
      },
    );

    test(
      'should emit [BatimentInitial, BatimentLoading, BatimentError] when getting data fails',
      () async {
        // arrange
        final tError = ServerException('ServerException');
        when(mockGetBatimentDetail(any)).thenThrow(tError);
        // assert later
        final expected = [
          const BatimentInitial(),
          const BatimentLoading(),
          BatimentError(tError),
        ];
        final Future<void> future = expectLater(bloc, emitsInOrder(expected));
        // act
        bloc.add(const GetBatimentDetailEvent(1));
        await future;
      },
    );

    test(
      'should emit [BatimentInitial, BatimentLoading, BatimentError] with a proper message for the error when getting data fails',
      () async {
        // arrange
        final tError = CacheException('CacheException');
        when(mockGetBatimentDetail(any)).thenThrow(tError);
        // assert later
        final expected = [
          const BatimentInitial(),
          const BatimentLoading(),
          BatimentError(tError),
        ];
        final Future<void> future = expectLater(bloc, emitsInOrder(expected));
        // act
        bloc.add(const GetBatimentDetailEvent(1));
        await future;
      },
    );
  });
}
