import 'dart:convert';

import 'package:app_pym/core/error/exceptions.dart';
import 'package:app_pym/core/network/network_info.dart';
import 'package:app_pym/data/datasources/map_pym_local_data_source.dart';
import 'package:app_pym/data/datasources/map_pym_remote_data_source.dart';
import 'package:app_pym/data/models/app_pym/contact_model.dart';
import 'package:app_pym/data/repositories/app_pym/contact_repository_impl.dart';
import 'package:app_pym/domain/repositories/app_pym/contact_repository.dart';
import 'package:app_pym/injection_container.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' show Environment;
import 'package:mockito/mockito.dart';

import '../../../fixtures/fixture_reader.dart';

void main() {
  ContactRepository repository;
  MapPymRemoteDataSource mockRemoteDataSource;
  MapPymLocalDataSource mockLocalDataSource;
  NetworkInfo mockNetworkInfo;

  final tListContactModel = (json.decode(fixture('map_pym/contacts.json'))
          as List)
      .map(
          (dynamic data) => ContactModel.fromJson(data as Map<String, dynamic>))
      .toList();

  init(env: Environment.test);

  setUp(() {
    mockRemoteDataSource = sl<MapPymRemoteDataSource>();
    mockLocalDataSource = sl<MapPymLocalDataSource>();
    mockNetworkInfo = sl<NetworkInfo>();
    repository = ContactRepositoryImpl(
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
        await repository.fetch(tListContactModel.first.id);
        // assert
        verify(mockNetworkInfo.result);
      },
    );

    runTestsOnline(() {
      test(
        'should return remote data when the call to remote data source is successful',
        () async {
          // arrange
          final expectedData = tListContactModel
              .firstWhere((e) => e.id == tListContactModel.first.id);
          when(mockRemoteDataSource.fetchContact(tListContactModel.first.id))
              .thenAnswer((_) async => expectedData);
          // act
          final result = await repository.fetch(tListContactModel.first.id);
          // assert
          verify(mockRemoteDataSource.fetchContact(tListContactModel.first.id));
          expect(result, equals(expectedData.toEntity()));
        },
      );

      test(
        'should cache the data locally when the call to remote data source is successful',
        () async {
          // arrange
          final expectedData = tListContactModel
              .firstWhere((e) => e.id == tListContactModel.first.id);
          when(mockRemoteDataSource.fetchContact(tListContactModel.first.id))
              .thenAnswer((_) async => expectedData);
          // act
          await repository.fetch(tListContactModel.first.id);
          // assert
          verify(mockRemoteDataSource.fetchContact(tListContactModel.first.id));
          verify(mockLocalDataSource.cacheContact(expectedData));
        },
      );

      test(
        'should return server failure when the call to remote data source is unsuccessful',
        () async {
          // arrange
          when(mockRemoteDataSource.fetchContact(any))
              .thenAnswer((_) async => throw ServerException());
          // act
          final call = repository.fetch;
          // assert
          expect(() => call(tListContactModel.first.id),
              throwsA(isA<ServerException>()));
        },
      );
    });

    runTestsOffline(() {
      test(
        'should return last locally cached data when the cached data is present',
        () async {
          // arrange
          final expectedData = tListContactModel
              .firstWhere((e) => e.id == tListContactModel.first.id);
          when(mockLocalDataSource.fetchContact(tListContactModel.first.id))
              .thenAnswer((_) => expectedData);
          // act
          final result = await repository.fetch(tListContactModel.first.id);
          // assert
          verifyZeroInteractions(mockRemoteDataSource);
          verify(mockLocalDataSource.fetchContact(tListContactModel.first.id));
          expect(result, equals(expectedData.toEntity()));
        },
      );

      test(
        'should return CacheFailure when there is no cached data present',
        () async {
          // arrange
          when(mockLocalDataSource.fetchContact(any))
              .thenAnswer((_) => throw CacheException());
          // act
          final call = repository.fetch;
          // assert
          expect(() => call(tListContactModel.first.id),
              throwsA(isA<CacheException>()));
        },
      );
    });
  });
}
