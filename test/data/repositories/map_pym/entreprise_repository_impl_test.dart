import 'dart:convert';

import 'package:app_pym/core/error/exceptions.dart';
import 'package:app_pym/core/network/network_info.dart';
import 'package:app_pym/data/datasources/map_pym_local_data_source.dart';
import 'package:app_pym/data/datasources/map_pym_remote_data_source.dart';
import 'package:app_pym/data/models/map_pym/entreprise_model.dart';
import 'package:app_pym/data/repositories/map_pym/entreprise_repository_impl.dart';
import 'package:app_pym/injection_container.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' show Environment;
import 'package:mockito/mockito.dart';

import '../../../fixtures/fixture_reader.dart';

void main() {
  EntrepriseRepositoryImpl repository;
  MapPymRemoteDataSource mockRemoteDataSource;
  NetworkInfo mockNetworkInfo;
  MapPymLocalDataSource mockLocalDataSource;

  final tListEntrepriseModel =
      (json.decode(fixture('map_pym/entreprises.json')) as List)
          .map((dynamic data) =>
              EntrepriseModel.fromJson(data as Map<String, dynamic>))
          .toList();

  init(env: Environment.test);

  setUp(() {
    mockRemoteDataSource = sl<MapPymRemoteDataSource>();
    mockLocalDataSource = sl<MapPymLocalDataSource>();
    mockNetworkInfo = sl<NetworkInfo>();
    repository = EntrepriseRepositoryImpl(
      remoteDataSource: mockRemoteDataSource,
      localDataSource: mockLocalDataSource,
      networkInfo: mockNetworkInfo,
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

  group('fetchEntrepriseOfBatiment', () {
    test(
      'should check if the device is online',
      () async {
        // arrange
        when(mockNetworkInfo.result)
            .thenAnswer((_) async => ConnectivityResult.wifi);
        // act
        await repository
            .fetchEntreprisesOfBatiment(tListEntrepriseModel.first.idBatiment);
        // assert
        verify(mockNetworkInfo.result);
      },
    );

    runTestsOnline(() {
      test(
        'should return remote data when the call to remote data source is successful',
        () async {
          // arrange
          final expectedData = tListEntrepriseModel
              .where(
                  (e) => e.idBatiment == tListEntrepriseModel.first.idBatiment)
              .toList();
          when(mockRemoteDataSource.fetchEntreprisesOfBatiment(
                  tListEntrepriseModel.first.idBatiment))
              .thenAnswer((_) async => expectedData);
          // act
          final result = await repository.fetchEntreprisesOfBatiment(
              tListEntrepriseModel.first.idBatiment);
          // assert
          verify(mockRemoteDataSource.fetchEntreprisesOfBatiment(
              tListEntrepriseModel.first.idBatiment));
          expect(
              result, equals(expectedData.map((e) => e.toEntity()).toList()));
        },
      );

      test(
        'should cache the data locally when the call to remote data source is successful',
        () async {
          // arrange
          final expectedData = tListEntrepriseModel
              .where(
                  (e) => e.idBatiment == tListEntrepriseModel.first.idBatiment)
              .toList();
          when(mockRemoteDataSource.fetchEntreprisesOfBatiment(
                  tListEntrepriseModel.first.idBatiment))
              .thenAnswer((_) async => expectedData);
          // act
          await repository.fetchEntreprisesOfBatiment(
              tListEntrepriseModel.first.idBatiment);
          // assert
          verify(mockRemoteDataSource.fetchEntreprisesOfBatiment(
              tListEntrepriseModel.first.idBatiment));
          verify(mockLocalDataSource.cacheAllEntreprise(expectedData));
        },
      );

      test(
        'should return server failure when the call to remote data source is unsuccessful',
        () async {
          // arrange
          when(mockRemoteDataSource.fetchEntreprisesOfBatiment(any))
              .thenAnswer((_) => throw ServerException());
          // act
          final call = repository.fetchEntreprisesOfBatiment;
          // assert
          expect(() => call(tListEntrepriseModel.first.idBatiment),
              throwsA(isA<ServerException>()));
        },
      );
    });

    runTestsOffline(() {
      test(
        'should return last locally cached data when the cached data is present',
        () async {
          // arrange
          final expectedData = tListEntrepriseModel
              .where(
                  (e) => e.idBatiment == tListEntrepriseModel.first.idBatiment)
              .toList();
          when(mockLocalDataSource.fetchEntreprisesOfBatiment(
                  tListEntrepriseModel.first.idBatiment))
              .thenAnswer((_) => expectedData);
          // act
          final result = await repository.fetchEntreprisesOfBatiment(
              tListEntrepriseModel.first.idBatiment);
          // assert
          verifyZeroInteractions(mockRemoteDataSource);
          verify(mockLocalDataSource.fetchEntreprisesOfBatiment(
              tListEntrepriseModel.first.idBatiment));
          expect(
              result, equals(expectedData.map((e) => e.toEntity()).toList()));
        },
      );

      test(
        'should return CacheFailure when there is no cached data present',
        () async {
          // arrange
          when(mockLocalDataSource.fetchEntreprisesOfBatiment(any))
              .thenAnswer((_) => throw CacheException());
          // act
          final call = repository.fetchEntreprisesOfBatiment;
          // assert
          expect(() => call(tListEntrepriseModel.first.idBatiment),
              throwsA(isA<CacheException>()));
        },
      );
    });
  });
}
