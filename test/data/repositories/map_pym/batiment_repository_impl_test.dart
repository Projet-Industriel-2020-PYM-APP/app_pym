import 'dart:convert';

import 'package:app_pym/data/datasources/map_pym_local_data_source.dart';
import 'package:app_pym/data/datasources/map_pym_remote_data_source.dart';
import 'package:app_pym/data/mappers/map_pym/batiment_mapper.dart';
import 'package:app_pym/data/models/map_pym/batiment_model.dart';
import 'package:app_pym/data/repositories/map_pym/batiment_repository_impl.dart';
import 'package:app_pym/domain/entities/map_pym/batiment.dart';
import 'package:connectivity/connectivity.dart';
import 'package:app_pym/core/network/network_info.dart';
import 'package:app_pym/injection_container.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' show Environment;
import 'package:mockito/mockito.dart';
import 'package:app_pym/core/error/exceptions.dart';

import '../../../fixtures/fixture_reader.dart';

void main() {
  BatimentRepositoryImpl repository;
  MapPymRemoteDataSource mockRemoteDataSource;
  BatimentMapper mockBatimentMapper;
  NetworkInfo mockNetworkInfo;
  MapPymLocalDataSource mockLocalDataSource;

  init(env: Environment.test);

  setUp(() {
    mockRemoteDataSource = sl<MapPymRemoteDataSource>();
    mockBatimentMapper = sl<BatimentMapper>();
    mockLocalDataSource = sl<MapPymLocalDataSource>();
    mockNetworkInfo = sl<NetworkInfo>();
    repository = BatimentRepositoryImpl(
      remoteDataSource: mockRemoteDataSource,
      localDataSource: mockLocalDataSource,
      networkInfo: mockNetworkInfo,
      mapper: mockBatimentMapper,
    );
  });

  void runTestsOnline(Function body) {
    group('device is online', () {
      setUp(() {
        when(mockNetworkInfo.result)
            .thenAnswer((_) async => ConnectivityResult.wifi);
      });

      body();
    });
  }

  void runTestsOffline(Function body) {
    group('device is offline', () {
      setUp(() {
        when(mockNetworkInfo.result)
            .thenAnswer((_) async => ConnectivityResult.none);
      });

      body();
    });
  }

  group('fetchBatiment', () {
    final tBatimentModel = BatimentModel.fromJson(
        json.decode(fixture('map_pym/batiment.json')) as Map<String, dynamic>);
    const tBatiment = Batiment(
        id: 1,
        accesHandicape: false,
        adresse: "Rue",
        description: "Description",
        nbEtage: 2,
        nom: "Entreprise",
        url: "Super");

    test(
      'should check if the device is online',
      () async {
        // arrange
        when(mockNetworkInfo.result)
            .thenAnswer((_) async => ConnectivityResult.wifi);
        when(mockRemoteDataSource.fetchBatiment(any))
            .thenAnswer((_) async => tBatimentModel);
        when(mockBatimentMapper.mapTo(any)).thenReturn(null);
        // act
        await repository.fetchBatiment(1);
        // assert
        verify(mockNetworkInfo.result);
      },
    );

    runTestsOnline(() {
      test(
        'should return remote data when the call to remote data source is successful',
        () async {
          // arrange
          when(mockRemoteDataSource.fetchBatiment(any))
              .thenAnswer((_) async => tBatimentModel);
          when(mockBatimentMapper.mapTo(tBatimentModel)).thenReturn(tBatiment);
          // act
          final result = await repository.fetchBatiment(1);
          // assert
          verify(mockRemoteDataSource.fetchBatiment(any));
          expect(result, equals(tBatiment));
        },
      );

      test(
        'should cache the data locally when the call to remote data source is successful',
        () async {
          // arrange
          when(mockRemoteDataSource.fetchBatiment(any))
              .thenAnswer((_) async => tBatimentModel);
          // act
          await repository.fetchBatiment(1);
          // assert
          verify(mockRemoteDataSource.fetchBatiment(any));
          verify(mockLocalDataSource.cacheBatiment(tBatimentModel));
        },
      );

      test(
        'should return server failure when the call to remote data source is unsuccessful',
        () async {
          // arrange
          when(mockRemoteDataSource.fetchBatiment(any))
              .thenThrow(ServerException());
          // act
          final call = repository.fetchBatiment;
          try {
            await call(1);
            fail("exception not thrown");
          } catch (e) {
            expect(e, isInstanceOf<ServerException>());
          }
        },
      );
    });

    runTestsOffline(() {
      test(
        'should return last locally cached data when the cached data is present',
        () async {
          // arrange
          when(mockLocalDataSource.fetchBatiment(any))
              .thenAnswer((_) async => tBatimentModel);
          when(mockBatimentMapper.mapTo(tBatimentModel)).thenReturn(tBatiment);
          // act
          final result = await repository.fetchBatiment(1);
          // assert
          verifyZeroInteractions(mockRemoteDataSource);
          verify(mockLocalDataSource.fetchBatiment(any));
          expect(result, equals(tBatiment));
        },
      );

      test(
        'should return CacheFailure when there is no cached data present',
        () async {
          // arrange
          when(mockLocalDataSource.fetchBatiment(any))
              .thenThrow(CacheException());
          // act
          final call = repository.fetchBatiment;
          // assert
          try {
            await call(1);
            fail("exception not thrown");
          } catch (e) {
            expect(e, isInstanceOf<CacheException>());
          }
        },
      );
    });
  });
}
