import 'dart:convert';

import 'package:app_pym/core/error/exceptions.dart';
import 'package:app_pym/core/network/network_info.dart';
import 'package:app_pym/data/datasources/map_pym_local_data_source.dart';
import 'package:app_pym/data/datasources/map_pym_remote_data_source.dart';
import 'package:app_pym/data/models/authentication/app_user_model.dart';
import 'package:app_pym/data/repositories/authentication/app_user_repository_impl.dart';
import 'package:app_pym/data/services/authentication_service.dart';
import 'package:app_pym/injection_container.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' show Environment;
import 'package:mockito/mockito.dart';

import '../../../fixtures/fixture_reader.dart';

void main() {
  AppUserRepositoryImpl repository;
  MapPymRemoteDataSource mockRemoteDataSource;
  NetworkInfo mockNetworkInfo;
  MapPymLocalDataSource mockLocalDataSource;
  AuthenticationService mockAuth;

  final tAppUserModel = AppUserModel.fromJson(
      json.decode(fixture('map_pym/app_user.json')) as Map<String, dynamic>);

  init(env: Environment.test);

  setUp(() {
    mockRemoteDataSource = sl<MapPymRemoteDataSource>();
    mockLocalDataSource = sl<MapPymLocalDataSource>();
    mockNetworkInfo = sl<NetworkInfo>();
    mockAuth = sl<AuthenticationService>();
    repository = AppUserRepositoryImpl(
      remoteDataSource: mockRemoteDataSource,
      localDataSource: mockLocalDataSource,
      networkInfo: mockNetworkInfo,
      auth: mockAuth,
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

  void runWithToken(Function body) {
    group('with token', () {
      setUp(() {
        when(mockAuth.token).thenReturn('token');
      });

      body();
    });
  }

  void runWithoutToken(Function body) {
    group('without token', () {
      setUp(() {
        when(mockAuth.token).thenReturn(null);
      });

      body();
    });
  }

  group('fetch', () {
    test(
      'should check if is authentified',
      () async {
        // arrange
        when(mockAuth.token).thenReturn('token');
        // act
        await repository.fetch();
        // assert
        verify(mockAuth.token);
      },
    );

    runWithoutToken(() {
      test(
        'should return null',
        () async {
          // act
          final result = await repository.fetch();
          // assert
          expect(result, isNull);
        },
      );
    });

    runWithToken(() {
      test(
        'should check if the device is online',
        () async {
          // arrange
          when(mockNetworkInfo.result)
              .thenAnswer((_) async => ConnectivityResult.wifi);
          // act
          await repository.fetch();
          // assert
          verify(mockNetworkInfo.result);
        },
      );

      runTestsOnline(() {
        test(
          'should return remote data when the call to remote data source is successful',
          () async {
            // arrange
            when(mockRemoteDataSource.fetchUser(any))
                .thenAnswer((_) async => tAppUserModel);
            // act
            final result = await repository.fetch();
            // assert
            verify(mockRemoteDataSource.fetchUser(any));
            expect(result, equals(tAppUserModel.toEntity()));
          },
        );

        test(
          'should cache the data locally when the call to remote data source is successful',
          () async {
            // arrange
            when(mockRemoteDataSource.fetchUser(any))
                .thenAnswer((_) async => tAppUserModel);
            // act
            await repository.fetch();
            // assert
            verify(mockRemoteDataSource.fetchUser(any));
            verify(mockLocalDataSource.cacheUser(tAppUserModel));
          },
        );

        test(
          'should return server failure when the call to remote data source is unsuccessful',
          () async {
            // arrange
            when(mockRemoteDataSource.fetchUser(any))
                .thenAnswer((_) async => throw ServerException());
            // act
            final call = repository.fetch;
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
            when(mockLocalDataSource.fetchUser())
                .thenAnswer((_) => tAppUserModel);
            // act
            final result = await repository.fetch();
            // assert
            verifyZeroInteractions(mockRemoteDataSource);
            verify(mockLocalDataSource.fetchUser());
            expect(result, equals(tAppUserModel.toEntity()));
          },
        );

        test(
          'should return CacheFailure when there is no cached data present',
          () async {
            // arrange
            when(mockLocalDataSource.fetchUser())
                .thenAnswer((_) => throw CacheException());
            // act
            final call = repository.fetch;
            // assert
            expect(call, throwsA(isA<CacheException>()));
          },
        );
      });
    });
  });

  group('setUserData', () {
    test(
      'should return null',
      () async {
        // act
        final result = await repository.fetch();
        // assert
        expect(result, isNull);
      },
    );
  });

  runWithToken(() {
    test(
      'should check if the device is online',
      () async {
        // arrange
        when(mockNetworkInfo.result)
            .thenAnswer((_) async => ConnectivityResult.wifi);
        // act
        await repository.setUserData(tAppUserModel.toEntity());
        // assert
        verify(mockNetworkInfo.result);
      },
    );

    runTestsOnline(() {
      test(
        'should run when the call to remote data source is successful',
        () async {
          // arrange
          // act
          await repository.setUserData(tAppUserModel.toEntity());
          // assert
          verify(mockRemoteDataSource.setUserData(tAppUserModel));
        },
      );

      test(
        'should cache the data locally when the call to remote data source is successful',
        () async {
          // arrange
          // act
          await repository.setUserData(tAppUserModel.toEntity());
          // assert
          verify(mockLocalDataSource.cacheUser(tAppUserModel));
        },
      );

      test(
        'should return server failure when the call to remote data source is unsuccessful',
        () async {
          // arrange
          when(mockRemoteDataSource.setUserData(any))
              .thenAnswer((_) async => throw ServerException());
          // act
          final call = repository.setUserData;
          // assert
          expect(() => call(tAppUserModel.toEntity()),
              throwsA(isA<ServerException>()));
        },
      );
    });

    runTestsOffline(() {
      test(
        'should return ClientException',
        () async {
          // arrange
          // act
          final call = repository.setUserData(tAppUserModel.toEntity());
          // assert
          expect(call, throwsA(isA<ConnectivityException>()));
        },
      );
    });
  });
}
