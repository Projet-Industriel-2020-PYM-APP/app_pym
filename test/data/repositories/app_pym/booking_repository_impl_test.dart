import 'dart:convert';

import 'package:app_pym/core/error/exceptions.dart';
import 'package:app_pym/core/network/network_info.dart';
import 'package:app_pym/data/datasources/map_pym_local_data_source.dart';
import 'package:app_pym/data/datasources/map_pym_remote_data_source.dart';
import 'package:app_pym/data/models/app_pym/booking_model.dart';
import 'package:app_pym/data/repositories/app_pym/booking_repository_impl.dart';
import 'package:app_pym/data/services/authentication_service.dart';
import 'package:app_pym/domain/repositories/app_pym/booking_repository.dart';
import 'package:app_pym/injection_container.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' show Environment;
import 'package:mockito/mockito.dart';

import '../../../fixtures/fixture_reader.dart';

void main() {
  BookingRepository repository;
  MapPymRemoteDataSource mockRemoteDataSource;
  NetworkInfo mockNetworkInfo;
  MapPymLocalDataSource mockLocalDataSource;
  AuthenticationService mockAuth;

  final tListBookingModel = (json.decode(fixture('map_pym/bookings.json'))
          as List)
      .map(
          (dynamic data) => BookingModel.fromJson(data as Map<String, dynamic>))
      .toList();

  init(env: Environment.test);

  setUp(() {
    mockRemoteDataSource = sl<MapPymRemoteDataSource>();
    mockLocalDataSource = sl<MapPymLocalDataSource>();
    mockNetworkInfo = sl<NetworkInfo>();
    mockAuth = sl<AuthenticationService>();
    repository = BookingRepositoryImpl(
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

  group('create', () {
    test(
      'should check if is authentified',
      () async {
        // arrange
        when(mockAuth.token).thenReturn('token');
        // act
        await repository.create(tListBookingModel.first.toEntity());
        // assert
        verify(mockAuth.token);
      },
    );

    runWithoutToken(() {
      test(
        'should throw ServerException',
        () async {
          // act
          final call = repository.create;
          // assert
          expect(() => call(tListBookingModel.first.toEntity()),
              throwsA(isA<ServerException>()));
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
          await repository.create(tListBookingModel.first.toEntity());
          // assert
          verify(mockNetworkInfo.result);
        },
      );

      runTestsOnline(() {
        test(
          'should call remote data source',
          () async {
            // act
            await repository.create(tListBookingModel.first.toEntity());
            // assert
            verify(mockRemoteDataSource.createBooking(tListBookingModel.first,
                token: 'token'));
          },
        );

        test(
          'should cache the data locally when the call to remote data source is successful',
          () async {
            // act
            await repository.create(tListBookingModel.first.toEntity());
            // assert
            verify(mockLocalDataSource.cacheBooking(tListBookingModel.first));
          },
        );

        test(
          'should return server failure when the call to remote data source is unsuccessful',
          () async {
            // arrange
            // arrange
            when(mockRemoteDataSource.createBooking(any,
                    token: anyNamed('token')))
                .thenAnswer((_) async => throw ServerException());
            // act
            final call = repository.create;
            // assert
            expect(() => call(tListBookingModel.first.toEntity()),
                throwsA(isA<ServerException>()));
            verifyZeroInteractions(mockLocalDataSource);
          },
        );
      });

      runTestsOffline(() {
        test(
          'should throw ConnectivityException',
          () async {
            // act
            final call = repository.create;
            // assert
            expect(() => call(tListBookingModel.first.toEntity()),
                throwsA(isA<ConnectivityException>()));
            verifyZeroInteractions(mockRemoteDataSource);
            verifyZeroInteractions(mockLocalDataSource);
          },
        );
      });
    });
  });

  group('delete', () {
    test(
      'should check if is authentified',
      () async {
        // arrange
        when(mockAuth.token).thenReturn('token');
        // act
        await repository.delete(tListBookingModel.first.id);
        // assert
        verify(mockAuth.token);
      },
    );

    runWithoutToken(() {
      test(
        'should throw ServerException',
        () async {
          // act
          final call = repository.delete;
          // assert
          expect(() => call(tListBookingModel.first.id),
              throwsA(isA<ServerException>()));
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
          await repository.delete(tListBookingModel.first.id);
          // assert
          verify(mockNetworkInfo.result);
        },
      );

      runTestsOnline(() {
        test(
          'should call remote data source',
          () async {
            // act
            await repository.delete(tListBookingModel.first.id);
            // assert
            verify(mockRemoteDataSource
                .deleteBooking(tListBookingModel.first.id, token: 'token'));
          },
        );

        test(
          'should delete the data locally when the call to remote data source is successful',
          () async {
            // act
            await repository.delete(tListBookingModel.first.id);
            // assert
            verify(
                mockLocalDataSource.deleteBooking(tListBookingModel.first.id));
          },
        );

        test(
          'should return server failure when the call to remote data source is unsuccessful',
          () async {
            // arrange
            when(mockRemoteDataSource.deleteBooking(any,
                    token: anyNamed('token')))
                .thenAnswer((_) async => throw ServerException());
            // act
            final call = repository.delete;
            // assert
            expect(() => call(tListBookingModel.first.id),
                throwsA(isA<ServerException>()));
            verifyZeroInteractions(mockLocalDataSource);
          },
        );
      });

      runTestsOffline(() {
        test(
          'should throw ConnectivityException',
          () async {
            // act
            final call = repository.delete;
            // assert
            expect(() => call(tListBookingModel.first.id),
                throwsA(isA<ConnectivityException>()));
            verifyZeroInteractions(mockRemoteDataSource);
            verifyZeroInteractions(mockLocalDataSource);
          },
        );
      });
    });
  });

  group('fetchAllOf', () {
    test(
      'should check if the device is online',
      () async {
        // arrange
        when(mockNetworkInfo.result)
            .thenAnswer((_) async => ConnectivityResult.wifi);
        // act
        await repository.fetchAllOf(tListBookingModel.first.service_id);
        // assert
        verify(mockNetworkInfo.result);
      },
    );

    runTestsOnline(() {
      test(
        'should return remote data when the call to remote data source is successful',
        () async {
          // arrange
          final expected = tListBookingModel
              .where((e) => e.service_id == tListBookingModel.first.service_id)
              .toList();
          when(mockRemoteDataSource
                  .fetchAllBookingsOf(tListBookingModel.first.service_id))
              .thenAnswer((_) async => expected);
          // act
          final result =
              await repository.fetchAllOf(tListBookingModel.first.service_id);
          // assert
          verify(mockRemoteDataSource
              .fetchAllBookingsOf(tListBookingModel.first.service_id));
          expect(result, equals(expected.map((e) => e.toEntity()).toList()));
        },
      );

      test(
        'should cache the data locally when the call to remote data source is successful',
        () async {
          // arrange
          final expected = tListBookingModel
              .where((e) => e.service_id == tListBookingModel.first.service_id)
              .toList();
          when(mockRemoteDataSource
                  .fetchAllBookingsOf(tListBookingModel.first.service_id))
              .thenAnswer((_) async => expected);
          // act
          await repository.fetchAllOf(tListBookingModel.first.service_id);
          // assert
          verify(mockRemoteDataSource
              .fetchAllBookingsOf(tListBookingModel.first.service_id));
          verify(mockLocalDataSource.cacheAllBookings(expected));
        },
      );

      test(
        'should return server failure when the call to remote data source is unsuccessful',
        () async {
          // arrange
          when(mockRemoteDataSource
                  .fetchAllBookingsOf(tListBookingModel.first.service_id))
              .thenAnswer((_) async => throw ServerException());
          // act
          final call = repository.fetchAllOf;
          // assert
          expect(() => call(tListBookingModel.first.service_id),
              throwsA(isA<ServerException>()));
        },
      );
    });

    runTestsOffline(() {
      test(
        'should return last locally cached data when the cached data is present',
        () async {
          // arrange
          final expected = tListBookingModel
              .where((e) => e.service_id == tListBookingModel.first.service_id)
              .toList();
          when(mockLocalDataSource
                  .fetchAllBookingsOf(tListBookingModel.first.service_id))
              .thenAnswer((_) => expected);
          // act
          final result =
              await repository.fetchAllOf(tListBookingModel.first.service_id);
          // assert
          verifyZeroInteractions(mockRemoteDataSource);
          verify(mockLocalDataSource
              .fetchAllBookingsOf(tListBookingModel.first.service_id));
          expect(result, equals(expected.map((e) => e.toEntity()).toList()));
        },
      );

      test(
        'should return CacheFailure when there is no cached data present',
        () async {
          // arrange
          when(mockLocalDataSource
                  .fetchAllBookingsOf(tListBookingModel.first.service_id))
              .thenAnswer((_) => throw CacheException());
          // act
          final call = repository.fetchAllOf;
          // assert
          expect(() => call(tListBookingModel.first.service_id),
              throwsA(isA<CacheException>()));
        },
      );
    });
  });

  group('update', () {
    test(
      'should check if is authentified',
      () async {
        // arrange
        when(mockAuth.token).thenReturn('token');
        // act
        await repository.update(tListBookingModel.first.toEntity());
        // assert
        verify(mockAuth.token);
      },
    );

    runWithoutToken(() {
      test(
        'should throw ServerException',
        () async {
          // act
          final call = repository.update;
          // assert
          expect(() => call(tListBookingModel.first.toEntity()),
              throwsA(isA<ServerException>()));
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
          await repository.update(tListBookingModel.first.toEntity());
          // assert
          verify(mockNetworkInfo.result);
        },
      );

      runTestsOnline(() {
        test(
          'should call remote data source',
          () async {
            // act
            await repository.update(tListBookingModel.first.toEntity());
            // assert
            verify(mockRemoteDataSource.updateBooking(tListBookingModel.first,
                token: 'token'));
          },
        );

        test(
          'should cache the data locally when the call to remote data source is successful',
          () async {
            // act
            await repository.update(tListBookingModel.first.toEntity());
            // assert
            verify(mockLocalDataSource.cacheBooking(tListBookingModel.first));
          },
        );

        test(
          'should return server failure when the call to remote data source is unsuccessful',
          () async {
            // arrange
            // arrange
            when(mockRemoteDataSource.updateBooking(any,
                    token: anyNamed('token')))
                .thenAnswer((_) async => throw ServerException());
            // act
            final call = repository.update;
            // assert
            expect(() => call(tListBookingModel.first.toEntity()),
                throwsA(isA<ServerException>()));
            verifyZeroInteractions(mockLocalDataSource);
          },
        );
      });

      runTestsOffline(() {
        test(
          'should throw ConnectivityException',
          () async {
            // act
            final call = repository.update;
            // assert
            expect(() => call(tListBookingModel.first.toEntity()),
                throwsA(isA<ConnectivityException>()));
            verifyZeroInteractions(mockRemoteDataSource);
            verifyZeroInteractions(mockLocalDataSource);
          },
        );
      });
    });
  });
}
