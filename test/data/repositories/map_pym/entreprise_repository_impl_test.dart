import 'dart:convert';

import 'package:app_pym/core/error/exceptions.dart';
import 'package:app_pym/core/network/network_info.dart';
import 'package:app_pym/data/datasources/map_pym_local_data_source.dart';
import 'package:app_pym/data/datasources/map_pym_remote_data_source.dart';
import 'package:app_pym/data/models/map_pym/entreprise_model.dart';
import 'package:app_pym/data/repositories/map_pym/entreprise_repository_impl.dart';
import 'package:app_pym/domain/entities/map_pym/entreprise.dart';
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
    final tEntrepriseModel = EntrepriseModel.fromJson(json
        .decode(fixture('map_pym/entreprise.json')) as Map<String, dynamic>);
    final tListEntrepriseModel = [tEntrepriseModel];
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
    const tListEntreprise = [tEntreprise];

    test(
      'should check if the device is online',
      () async {
        // arrange
        when(mockNetworkInfo.result)
            .thenAnswer((_) async => ConnectivityResult.wifi);
        when(mockRemoteDataSource.fetchEntreprisesOfBatiment(any))
            .thenAnswer((_) async => tListEntrepriseModel);
        // act
        await repository.fetchEntreprisesOfBatiment(38);
        // assert
        verify(mockNetworkInfo.result);
      },
    );

    runTestsOnline(() {
      test(
        'should return remote data when the call to remote data source is successful',
        () async {
          // arrange
          when(mockRemoteDataSource.fetchEntreprisesOfBatiment(any))
              .thenAnswer((_) async => tListEntrepriseModel);
          // act
          final result = await repository.fetchEntreprisesOfBatiment(38);
          // assert
          verify(mockRemoteDataSource.fetchEntreprisesOfBatiment(any));
          expect(result, equals(tListEntreprise));
        },
      );

      test(
        'should cache the data locally when the call to remote data source is successful',
        () async {
          // arrange
          when(mockRemoteDataSource.fetchEntreprisesOfBatiment(any))
              .thenAnswer((_) async => tListEntrepriseModel);
          // act
          await repository.fetchEntreprisesOfBatiment(38);
          // assert
          verify(mockRemoteDataSource.fetchEntreprisesOfBatiment(any));
          verify(mockLocalDataSource.cacheAllEntreprise(tListEntrepriseModel));
        },
      );

      test(
        'should return server failure when the call to remote data source is unsuccessful',
        () async {
          // arrange
          when(mockRemoteDataSource.fetchEntreprisesOfBatiment(any))
              .thenThrow(ServerException());
          // act
          final call = repository.fetchEntreprisesOfBatiment;
          try {
            await call(38);
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
          when(mockLocalDataSource.fetchEntreprisesOfBatiment(any))
              .thenAnswer((_) async => tListEntrepriseModel);
          // act
          final result = await repository.fetchEntreprisesOfBatiment(1);
          // assert
          verifyZeroInteractions(mockRemoteDataSource);
          verify(mockLocalDataSource.fetchEntreprisesOfBatiment(any));
          expect(result, equals(tListEntreprise));
        },
      );

      test(
        'should return CacheFailure when there is no cached data present',
        () async {
          // arrange
          when(mockLocalDataSource.fetchEntreprisesOfBatiment(any))
              .thenThrow(CacheException());
          // act
          final call = repository.fetchEntreprisesOfBatiment;
          // assert
          try {
            await call(38);
            fail("exception not thrown");
          } catch (e) {
            expect(e, isInstanceOf<CacheException>());
          }
        },
      );
    });
  });
}
