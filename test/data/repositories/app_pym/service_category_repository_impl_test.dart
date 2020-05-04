import 'dart:convert';

import 'package:app_pym/core/error/exceptions.dart';
import 'package:app_pym/core/network/network_info.dart';
import 'package:app_pym/data/datasources/map_pym_local_data_source.dart';
import 'package:app_pym/data/datasources/map_pym_remote_data_source.dart';
import 'package:app_pym/data/models/app_pym/service_categorie_model.dart';
import 'package:app_pym/data/repositories/app_pym/service_categorie_repository_impl.dart';
import 'package:app_pym/domain/repositories/app_pym/service_categorie_repository.dart';
import 'package:app_pym/injection_container.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' show Environment;
import 'package:mockito/mockito.dart';

import '../../../fixtures/fixture_reader.dart';

void main() {
  ServiceCategorieRepository repository;
  MapPymRemoteDataSource mockRemoteDataSource;
  MapPymLocalDataSource mockLocalDataSource;
  NetworkInfo mockNetworkInfo;

  final tListServiceCategorieModel =
      (json.decode(fixture('map_pym/service_categories.json')) as List)
          .map((dynamic data) =>
              ServiceCategorieModel.fromJson(data as Map<String, dynamic>))
          .toList();

  init(env: Environment.test);

  setUp(() {
    mockRemoteDataSource = sl<MapPymRemoteDataSource>();
    mockLocalDataSource = sl<MapPymLocalDataSource>();
    mockNetworkInfo = sl<NetworkInfo>();
    repository = ServiceCategorieRepositoryImpl(
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
          when(mockRemoteDataSource.fetchAllServiceCategories())
              .thenAnswer((_) async => tListServiceCategorieModel);
          // act
          final result = await repository.fetchAll();
          // assert
          verify(mockRemoteDataSource.fetchAllServiceCategories());
          expect(
              result,
              equals(tListServiceCategorieModel
                  .map((e) => e.toEntity())
                  .toList()));
        },
      );

      test(
        'should cache the data locally when the call to remote data source is successful',
        () async {
          // arrange
          when(mockRemoteDataSource.fetchAllServiceCategories())
              .thenAnswer((_) async => tListServiceCategorieModel);
          // act
          await repository.fetchAll();
          // assert
          verify(mockRemoteDataSource.fetchAllServiceCategories());
          verify(mockLocalDataSource
              .cacheAllServiceCategories(tListServiceCategorieModel));
        },
      );

      test(
        'should return server failure when the call to remote data source is unsuccessful',
        () async {
          // arrange
          when(mockRemoteDataSource.fetchAllServiceCategories())
              .thenAnswer((_) async => throw ServerException());
          // act
          final call = repository.fetchAll;
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
          when(mockLocalDataSource.fetchAllServiceCategories())
              .thenAnswer((_) => tListServiceCategorieModel);
          // act
          final result = await repository.fetchAll();
          // assert
          verifyZeroInteractions(mockRemoteDataSource);
          verify(mockLocalDataSource.fetchAllServiceCategories());
          expect(
              result,
              equals(tListServiceCategorieModel
                  .map((e) => e.toEntity())
                  .toList()));
        },
      );

      test(
        'should return CacheFailure when there is no cached data present',
        () async {
          // arrange
          when(mockLocalDataSource.fetchAllServiceCategories())
              .thenAnswer((_) => throw CacheException());
          // act
          final call = repository.fetchAll;
          // assert
          expect(call, throwsA(isA<CacheException>()));
        },
      );
    });
  });
}
