import 'package:app_pym/core/error/exceptions.dart';
import 'package:app_pym/domain/usecases/cartographie/load_page_and_place_batiments.dart';
import 'package:app_pym/injection_container.dart';
import 'package:app_pym/presentation/blocs/cartographie/ar_view/ar_view_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart' show Environment;
import 'package:mockito/mockito.dart';

void main() {
  ArViewBloc bloc;
  LoadPageAndPlaceBatiments mockLoadPageAndPlaceBatiment;
  MockUnityWidgetController mockController;

  init(env: Environment.test);

  setUp(() {
    mockLoadPageAndPlaceBatiment = sl<LoadPageAndPlaceBatiments>();
    mockController = MockUnityWidgetController();
    bloc = ArViewBloc(mockLoadPageAndPlaceBatiment);
  });

  test('initialState should be ArViewUnloaded', () {
    // assert
    expect(bloc.initialState, equals(const ArViewState.initial()));
  });

  group('FetchFromUnityEvent', () {
    test(
      'should get data from the concrete use case',
      () async {
        // arrange
        final tDateTime = DateTime.now();
        final tPosition = Position(
          latitude: 2,
          longitude: 4,
          heading: 0,
          accuracy: 0,
          altitude: 0,
          mocked: true,
          speed: 0,
          speedAccuracy: 0,
          timestamp: tDateTime,
        );
        when(mockLoadPageAndPlaceBatiment(any))
            .thenAnswer((_) async => tPosition);
        // act
        bloc.add(FetchFromUnityEvent(
          unityWidgetController: mockController,
          bearingBetweenCameraAndNorth: 0.0,
        ));
        await untilCalled(mockLoadPageAndPlaceBatiment(any));
        // assert
        verify(mockLoadPageAndPlaceBatiment(LoadPageAndPlaceBatimentParams(
          controller: mockController,
          bearingBetweenCameraAndNorth: 0.0,
        )));
      },
    );

    test(
      'should emit [ArViewUnloaded, ArViewLoading] when data is gotten successfully',
      () async {
        // arrange
        final tDateTime = DateTime.now();
        final tPosition = Position(
          latitude: 2,
          longitude: 4,
          heading: 0,
          accuracy: 0,
          altitude: 0,
          mocked: true,
          speed: 0,
          speedAccuracy: 0,
          timestamp: tDateTime,
        );
        when(mockLoadPageAndPlaceBatiment(any))
            .thenAnswer((_) async => tPosition);
        // assert later
        const expected = [
          ArViewState.initial(),
          ArViewState.loading(),
        ];
        final Future<void> future = expectLater(bloc, emitsInOrder(expected));
        // act
        bloc.add(FetchFromUnityEvent(
          unityWidgetController: mockController,
          bearingBetweenCameraAndNorth: 0.0,
        ));
        await future;
      },
    );

    test(
      'should emit [ArViewUnloaded, ArViewLoading, ArViewError] when getting data fails from Server',
      () async {
        // arrange
        final tException = ServerException('ServerException');
        when(mockLoadPageAndPlaceBatiment(any)).thenThrow(tException);
        // assert later
        final expected = [
          const ArViewState.initial(),
          const ArViewState.loading(),
          ArViewState.error(tException),
        ];
        final Future<void> future = expectLater(bloc, emitsInOrder(expected));
        // act
        bloc.add(FetchFromUnityEvent(
          unityWidgetController: mockController,
          bearingBetweenCameraAndNorth: 0.0,
        ));
        await future;
      },
    );

    test(
      'should emit [ArViewUnloaded, ArViewLoading, ArViewError] when getting data fails from Cache',
      () async {
        // arrange
        final tException = CacheException('CacheException');
        when(mockLoadPageAndPlaceBatiment(any)).thenThrow(tException);
        // assert later
        final expected = [
          const ArViewState.initial(),
          const ArViewState.loading(),
          ArViewState.error(tException),
        ];
        final Future<void> future = expectLater(bloc, emitsInOrder(expected));
        // act
        bloc.add(FetchFromUnityEvent(
          unityWidgetController: mockController,
          bearingBetweenCameraAndNorth: 0.0,
        ));
        await future;
      },
    );
  });

  group('ArLoadedEvent', () {
    test(
      'should emit [ArViewUnloaded, ArViewLoaded]',
      () async {
        // assert later
        const expected = [
          ArViewState.initial(),
          ArViewState.loaded(),
        ];
        final Future<void> future = expectLater(bloc, emitsInOrder(expected));
        // act
        bloc.add(const ArLoadedEvent());
        await future;
      },
    );
  });
}

class MockUnityWidgetController extends Mock implements UnityWidgetController {}
