import 'dart:convert';

import 'package:app_pym/data/datasources/map_pym_local_data_source.dart';
import 'package:app_pym/data/datasources/map_pym_remote_data_source.dart';
import 'package:app_pym/data/models/map_pym/batiment_model.dart';
import 'package:app_pym/data/repositories/map_pym/batiment_repository_impl.dart';
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
  NetworkInfo mockNetworkInfo;
  MapPymLocalDataSource mockLocalDataSource;

  init(env: Environment.test);

  final tListBatimentModel =
      (json.decode(fixture('map_pym/batiments.json')) as List)
          .map((dynamic data) =>
              BatimentModel.fromJson(data as Map<String, dynamic>))
          .toList();

  setUp(() {
    mockRemoteDataSource = sl<MapPymRemoteDataSource>();
    mockLocalDataSource = sl<MapPymLocalDataSource>();
    mockNetworkInfo = sl<NetworkInfo>();
    repository = BatimentRepositoryImpl(
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

  group('fetch', () {
    test(
      'should check if the device is online',
      () async {
        // arrange
        when(mockNetworkInfo.result)
            .thenAnswer((_) async => ConnectivityResult.wifi);
        // act
        await repository.fetch(tListBatimentModel.first.id);
        // assert
        verify(mockNetworkInfo.result);
      },
    );

    runTestsOnline(() {
      test(
        'should return remote data when the call to remote data source is successful',
        () async {
          // arrange
          when(mockRemoteDataSource.fetchBatiment(tListBatimentModel.first.id))
              .thenAnswer((_) async => tListBatimentModel.first);
          // act
          final result = await repository.fetch(tListBatimentModel.first.id);
          // assert
          verify(
              mockRemoteDataSource.fetchBatiment(tListBatimentModel.first.id));
          expect(result, equals(tListBatimentModel.first.toEntity()));
        },
      );

      test(
        'should cache the data locally when the call to remote data source is successful',
        () async {
          // arrange
          when(mockRemoteDataSource.fetchBatiment(tListBatimentModel.first.id))
              .thenAnswer((_) async => tListBatimentModel.first);
          // act
          await repository.fetch(tListBatimentModel.first.id);
          // assert
          verify(
              mockRemoteDataSource.fetchBatiment(tListBatimentModel.first.id));
          verify(mockLocalDataSource.cacheBatiment(tListBatimentModel.first));
        },
      );

      test(
        'should return server failure when the call to remote data source is unsuccessful',
        () async {
          // arrange
          when(mockRemoteDataSource.fetchBatiment(any))
              .thenAnswer((_) async => throw ServerException());
          // act
          final call = repository.fetch;
          // assert
          expect(() => call(tListBatimentModel.first.id),
              throwsA(isA<ServerException>()));
        },
      );
    });

    runTestsOffline(() {
      test(
        'should return last locally cached data when the cached data is present',
        () async {
          // arrange
          when(mockLocalDataSource.fetchBatiment(tListBatimentModel.first.id))
              .thenAnswer((_) => tListBatimentModel.first);
          // act
          final result = await repository.fetch(tListBatimentModel.first.id);
          // assert
          verifyZeroInteractions(mockRemoteDataSource);
          verify(
              mockLocalDataSource.fetchBatiment(tListBatimentModel.first.id));
          expect(result, equals(tListBatimentModel.first.toEntity()));
        },
      );

      test(
        'should return CacheFailure when there is no cached data present',
        () async {
          // arrange
          when(mockLocalDataSource.fetchBatiment(any))
              .thenAnswer((_) => throw CacheException());
          // act
          final call = repository.fetch;
          // assert
          expect(() => call(tListBatimentModel.first.id),
              throwsA(isA<CacheException>()));
        },
      );
    });
  });

  group('fetchAll', () {
    test(
      'should check if the device is online',
      () async {
        // arrange
        when(mockNetworkInfo.result)
            .thenAnswer((_) async => ConnectivityResult.wifi);
        // act
        await repository.fetchAll();
        // assert
        verify(mockNetworkInfo.result);
      },
    );

    runTestsOnline(() {
      test(
        'should return remote data when the call to remote data source is successful',
        () async {
          // arrange
          when(mockRemoteDataSource.fetchAllBatiment())
              .thenAnswer((_) async => tListBatimentModel);
          // act
          final result = await repository.fetchAll();
          // assert
          verify(mockRemoteDataSource.fetchAllBatiment());
          expect(result,
              equals(tListBatimentModel.map((e) => e.toEntity()).toList()));
        },
      );

      test(
        'should cache the data locally when the call to remote data source is successful',
        () async {
          // arrange
          when(mockRemoteDataSource.fetchAllBatiment())
              .thenAnswer((_) async => tListBatimentModel);
          // act
          await repository.fetchAll();
          // assert
          verify(mockRemoteDataSource.fetchAllBatiment());
          verify(mockLocalDataSource.cacheAllBatiment(tListBatimentModel));
        },
      );

      test(
        'should return server failure when the call to remote data source is unsuccessful',
        () async {
          // arrange
          when(mockRemoteDataSource.fetchAllBatiment())
              .thenAnswer((_) async => throw ServerException());
          // act
          final call = repository.fetchAll();
          // assert
          expect(call, throwsA(isA<ServerException>()));
        },
      );
    });

    runTestsOffline(() {
      test(
        'should return last locally cached data when the cached data is present',
        () async {
          // arrange
          when(mockLocalDataSource.fetchAllBatiment())
              .thenAnswer((_) => tListBatimentModel);
          // act
          final result = await repository.fetchAll();
          // assert
          verifyZeroInteractions(mockRemoteDataSource);
          verify(mockLocalDataSource.fetchAllBatiment());
          expect(result,
              equals(tListBatimentModel.map((e) => e.toEntity()).toList()));
        },
      );

      test(
        'should return CacheFailure when there is no cached data present',
        () async {
          // arrange
          when(mockLocalDataSource.fetchAllBatiment())
              .thenAnswer((_) => throw CacheException());
          // act
          final call = repository.fetchAll();
          // assert
          expect(call, throwsA(isA<CacheException>()));
        },
      );
    });
  });
}
