import 'dart:math';

import 'package:app_pym/data/devices/geolocator_device.dart';
import 'package:app_pym/domain/entities/map_pym/batiment.dart';
import 'package:app_pym/domain/entities/map_pym/batiment_position.dart';
import 'package:app_pym/domain/repositories/map_pym/batiment_position_repository.dart';
import 'package:app_pym/domain/repositories/map_pym/batiment_repository.dart';
import 'package:app_pym/domain/usecases/cartographie/load_page_and_place_batiments.dart';
import 'package:app_pym/injection_container.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart' show Environment;
import 'package:mockito/mockito.dart';

void main() {
  LoadPageAndPlaceBatiment usecase;
  BatimentPositionRepository mockBatimentPositionRepository;
  BatimentRepository mockBatimentRepository;
  GeolocatorDevice mockGeolocatorDevice;
  UnityWidgetController mockUnityWidgetController;

  init(env: Environment.test);

  setUp(() {
    mockBatimentPositionRepository = sl<BatimentPositionRepository>();
    mockGeolocatorDevice = sl<GeolocatorDevice>();
    mockBatimentRepository = sl<BatimentRepository>();
    mockUnityWidgetController = MockUnityWidgetController();
    usecase = LoadPageAndPlaceBatiment(
      batimentPositionRepository: mockBatimentPositionRepository,
      batimentRepository: mockBatimentRepository,
      geolocatorDevice: mockGeolocatorDevice,
    );
  });

  test(
    'should work',
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
      const tBatimentPosition = BatimentPosition(
        idBatiment: 1,
        latitude: 44,
        longitude: 3,
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
      const tListBatimentPosition = [tBatimentPosition];
      when(mockGeolocatorDevice.positions)
          .thenAnswer((_) => Stream.fromIterable([tPosition]));
      when(mockGeolocatorDevice.bearingBetween(any, any, any, any))
          .thenAnswer((_) => pi);
      when(mockBatimentPositionRepository.fetchBatimentsPosition())
          .thenAnswer((_) async => tListBatimentPosition);
      when(mockBatimentRepository.fetchBatiment(tBatimentPosition.idBatiment))
          .thenAnswer((_) async => tBatiment);

      // act
      final Future<Position> result = usecase(Params(
        bearingBetweenCameraAndNorth: 0.0,
        controller: mockUnityWidgetController,
      ));
      // assert
      expect(await result, equals(tPosition));
      verify(mockGeolocatorDevice.positions);
      verify(mockGeolocatorDevice.bearingBetween(2, 4, 44, 3));

      verify(
          mockBatimentRepository.fetchBatiment(tBatimentPosition.idBatiment));
      verify<dynamic>(mockUnityWidgetController.postMessage(
        'CompassSpawner',
        'FlutterSpawn',
        any,
      )).called(4);
      verify<dynamic>(mockUnityWidgetController.postMessage(
        'BatimentSpawner',
        'FlutterSpawn',
        any,
      )).called(1);
    },
  );
}

class MockUnityWidgetController extends Mock implements UnityWidgetController {}
