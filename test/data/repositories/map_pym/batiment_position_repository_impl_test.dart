import 'dart:convert';

import 'package:app_pym/core/error/exceptions.dart';
import 'package:app_pym/core/network/network_info.dart';
import 'package:app_pym/data/datasources/map_pym_local_data_source.dart';
import 'package:app_pym/data/datasources/map_pym_remote_data_source.dart';
import 'package:app_pym/data/mappers/map_pym/batiment_position_mapper.dart';
import 'package:app_pym/data/models/map_pym/batiment_position_model.dart';
import 'package:app_pym/data/repositories/map_pym/batiment_position_repository_impl.dart';
import 'package:app_pym/domain/entities/map_pym/batiment_position.dart';
import 'package:app_pym/injection_container.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' show Environment;
import 'package:mockito/mockito.dart';

import '../../../fixtures/fixture_reader.dart';

void main() {
  BatimentPositionRepositoryImpl repository;
  MapPymRemoteDataSource mockRemoteDataSource;
  BatimentPositionMapper mockBatimentPositionMapper;
  NetworkInfo mockNetworkInfo;
  MapPymLocalDataSource mockLocalDataSource;

  init(env: Environment.test);

  setUp(() {
    mockRemoteDataSource = sl<MapPymRemoteDataSource>();
    mockBatimentPositionMapper = sl<BatimentPositionMapper>();
    mockLocalDataSource = sl<MapPymLocalDataSource>();
    mockNetworkInfo = sl<NetworkInfo>();
    repository = BatimentPositionRepositoryImpl(
      remoteDataSource: mockRemoteDataSource,
      localDataSource: mockLocalDataSource,
      networkInfo: mockNetworkInfo,
      mapper: mockBatimentPositionMapper,
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

  group('fetchBatimentPosition', () {
    final tBatimentPositionModel = BatimentPositionModel.fromJson(
        json.decode(fixture('map_pym/batiment_position.json'))
            as Map<String, dynamic>);
    final tListBatimentPositionModel = [tBatimentPositionModel];
    const tBatimentPosition = BatimentPosition(
      idBatiment: 1,
      latitude: 44,
      longitude: 3,
    );
    const tListBatimentPosition = <BatimentPosition>[tBatimentPosition];

    test(
      'should check if the device is online',
      () async {
        // arrange
        when(mockNetworkInfo.result)
            .thenAnswer((_) async => ConnectivityResult.wifi);
        when(mockRemoteDataSource.fetchBatimentsPosition())
            .thenAnswer((_) async => tListBatimentPositionModel);
        when(mockBatimentPositionMapper.mapTo(any)).thenReturn(null);
        // act
        await repository.fetchBatimentsPosition();
        // assert
        verify(mockNetworkInfo.result);
      },
    );

    runTestsOnline(() {
      test(
        'should return remote data when the call to remote data source is successful',
        () async {
          // arrange
          when(mockRemoteDataSource.fetchBatimentsPosition())
              .thenAnswer((_) async => tListBatimentPositionModel);
          when(mockBatimentPositionMapper.mapTo(tBatimentPositionModel))
              .thenReturn(tBatimentPosition);
          // act
          final result = await repository.fetchBatimentsPosition();
          // assert
          verify(mockRemoteDataSource.fetchBatimentsPosition());
          expect(result, equals(tListBatimentPosition));
        },
      );

      test(
        'should cache the data locally when the call to remote data source is successful',
        () async {
          // arrange
          when(mockRemoteDataSource.fetchBatimentsPosition())
              .thenAnswer((_) async => tListBatimentPositionModel);
          // act
          await repository.fetchBatimentsPosition();
          // assert
          verify(mockRemoteDataSource.fetchBatimentsPosition());
          verify(mockLocalDataSource
              .cacheBatimentsPosition(tListBatimentPositionModel));
        },
      );

      test(
        'should return server failure when the call to remote data source is unsuccessful',
        () async {
          // arrange
          when(mockRemoteDataSource.fetchBatimentsPosition())
              .thenThrow(ServerException());
          // act
          final call = repository.fetchBatimentsPosition;
          try {
            await call();
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
          when(mockLocalDataSource.fetchBatimentsPosition())
              .thenAnswer((_) async => tListBatimentPositionModel);
          when(mockBatimentPositionMapper.mapTo(tBatimentPositionModel))
              .thenReturn(tBatimentPosition);
          // act
          final result = await repository.fetchBatimentsPosition();
          // assert
          verifyZeroInteractions(mockRemoteDataSource);
          verify(mockLocalDataSource.fetchBatimentsPosition());
          expect(result, equals(tListBatimentPosition));
        },
      );

      test(
        'should return CacheFailure when there is no cached data present',
        () async {
          // arrange
          when(mockLocalDataSource.fetchBatimentsPosition())
              .thenThrow(CacheException());
          // act
          final call = repository.fetchBatimentsPosition;
          // assert
          try {
            await call();
            fail("exception not thrown");
          } catch (e) {
            expect(e, isInstanceOf<CacheException>());
          }
        },
      );
    });
  });
}
