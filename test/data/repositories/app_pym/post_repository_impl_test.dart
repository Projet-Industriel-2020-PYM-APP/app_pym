import 'dart:convert';

import 'package:app_pym/data/datasources/map_pym_local_data_source.dart';
import 'package:app_pym/data/datasources/map_pym_remote_data_source.dart';
import 'package:app_pym/data/models/app_pym/post_model.dart';
import 'package:app_pym/data/repositories/app_pym/post_repository_impl.dart';
import 'package:app_pym/domain/repositories/app_pym/post_repository.dart';
import 'package:connectivity/connectivity.dart';
import 'package:app_pym/injection_container.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' show Environment;
import 'package:mockito/mockito.dart';
import 'package:app_pym/core/error/exceptions.dart';
import 'package:app_pym/core/network/network_info.dart';

import '../../../fixtures/fixture_reader.dart';

void main() {
  PostRepository repository;
  MapPymRemoteDataSource mockRemoteDataSource;
  MapPymLocalDataSource mockLocalDataSource;
  NetworkInfo mockNetworkInfo;

  final tListPostModel = (json.decode(fixture('map_pym/posts.json')) as List)
      .map((dynamic data) => PostModel.fromJson(data as Map<String, dynamic>))
      .toList();

  init(env: Environment.test);

  setUp(() {
    mockRemoteDataSource = sl<MapPymRemoteDataSource>();
    mockLocalDataSource = sl<MapPymLocalDataSource>();
    mockNetworkInfo = sl<NetworkInfo>();
    repository = PostRepositoryImpl(
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
          when(mockRemoteDataSource.fetchAllPosts())
              .thenAnswer((_) async => tListPostModel);
          // act
          final result = await repository.fetchAll();
          // assert
          verify(mockRemoteDataSource.fetchAllPosts());
          expect(
              result, equals(tListPostModel.map((e) => e.toEntity()).toList()));
        },
      );

      test(
        'should cache the data locally when the call to remote data source is successful',
        () async {
          // arrange
          when(mockRemoteDataSource.fetchAllPosts())
              .thenAnswer((_) async => tListPostModel);
          // act
          await repository.fetchAll();
          // assert
          verify(mockRemoteDataSource.fetchAllPosts());
          verify(mockLocalDataSource.cacheAllPosts(tListPostModel));
        },
      );

      test(
        'should return server failure when the call to remote data source is unsuccessful',
        () async {
          // arrange
          when(mockRemoteDataSource.fetchAllPosts())
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
          when(mockLocalDataSource.fetchAllPosts())
              .thenAnswer((_) => tListPostModel);
          // act
          final result = await repository.fetchAll();
          // assert
          verifyZeroInteractions(mockRemoteDataSource);
          verify(mockLocalDataSource.fetchAllPosts());
          expect(
              result, equals(tListPostModel.map((e) => e.toEntity()).toList()));
        },
      );

      test(
        'should return CacheFailure when there is no cached data present',
        () async {
          // arrange
          when(mockLocalDataSource.fetchAllPosts())
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
