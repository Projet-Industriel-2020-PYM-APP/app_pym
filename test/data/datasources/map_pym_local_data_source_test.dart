import 'dart:convert';

import 'package:app_pym/core/error/exceptions.dart';
import 'package:app_pym/data/datasources/map_pym_local_data_source.dart';
import 'package:app_pym/data/models/map_pym/batiment_model.dart';
import 'package:app_pym/data/models/map_pym/batiment_position_model.dart';
import 'package:app_pym/data/models/map_pym/entreprise_model.dart';
import 'package:app_pym/injection_container.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart' show Environment;
import 'package:matcher/matcher.dart';
import 'package:mockito/mockito.dart';

import '../../fixtures/fixture_reader.dart';

void main() {
  final tListBatimentPositionModel = List<Map<String, dynamic>>.from(json
          .decode(fixture('map_pym/batiments_position.json')) as List<dynamic>)
      .map((Map<String, dynamic> data) => BatimentPositionModel.fromJson(data))
      .toList();
  final tBatimentModel = BatimentModel.fromJson(
      json.decode(fixture('map_pym/batiment.json')) as Map<String, dynamic>);
  final tListEntrepriseModel = List<Map<String, dynamic>>.from(
          json.decode(fixture('map_pym/entreprises.json')) as List<dynamic>)
      .map((Map<String, dynamic> data) => EntrepriseModel.fromJson(data))
      .toList();
  MapPymLocalDataSourceImpl dataSource;
  Box<List<BatimentPositionModel>> mockBatimentsPositionBox;
  Box<BatimentModel> mockBatimentsBox;
  Box<EntrepriseModel> mockEntreprisesBox;
  init(env: Environment.test);

  setUp(() {
    mockBatimentsPositionBox = sl<Box<List<BatimentPositionModel>>>();
    mockBatimentsBox = sl<Box<BatimentModel>>();
    mockEntreprisesBox = sl<Box<EntrepriseModel>>();

    dataSource = MapPymLocalDataSourceImpl(
      batimentsPositionBox: mockBatimentsPositionBox,
      batimentsBox: mockBatimentsBox,
      entreprisesBox: mockEntreprisesBox,
    );
  });

  group('fetchBatimentPosition', () {
    test(
      'should return ListBatimentPositionModel from Cache when there is one in the cache',
      () async {
        // arrange
        when(mockBatimentsPositionBox.get(any))
            .thenReturn(tListBatimentPositionModel);
        // act
        final result = await dataSource.fetchBatimentsPosition();
        // assert
        verify(mockBatimentsPositionBox.get('/batiments_position'));
        expect(result, equals(tListBatimentPositionModel));
      },
    );

    test(
      'should throw a CacheException when there is not a cached value',
      () async {
        // arrange
        when(mockBatimentsPositionBox.get(any)).thenReturn(null);
        // act
        final call = dataSource.fetchBatimentsPosition;
        // assert
        expect(call, throwsA(const TypeMatcher<CacheException>()));
      },
    );
  });

  group('cacheBatimentPosition', () {
    test(
      'should call Box.put to cache the data',
      () async {
        // act
        await dataSource.cacheBatimentsPosition(tListBatimentPositionModel);
        // assert
        verify(mockBatimentsPositionBox.put(
          '/batiments_position',
          tListBatimentPositionModel,
        ));
      },
    );
  });

  group('fetchBatiment', () {
    test(
      'should return Batiment from Cache when there is one in the cache',
      () async {
        // arrange
        when(mockBatimentsBox.get(any)).thenReturn(tBatimentModel);
        // act
        final result = await dataSource.fetchBatiment(1);
        // assert
        verify(mockBatimentsBox.get('/batiments/1'));
        expect(result, equals(tBatimentModel));
      },
    );

    test(
      'should throw a CacheException when there is not a cached value',
      () async {
        // arrange
        when(mockBatimentsBox.get(any)).thenReturn(null);
        // act
        final call = dataSource.fetchBatiment;
        // assert
        expect(() => call(1), throwsA(const TypeMatcher<CacheException>()));
      },
    );
  });

  group('cacheBatimentPosition', () {
    test(
      'should call Box.put to cache the data',
      () async {
        // act
        await dataSource.cacheBatiment(tBatimentModel);
        // assert
        verify(mockBatimentsBox.put(
          '/batiments/1',
          tBatimentModel,
        ));
      },
    );
  });

  group('fetchEntreprisesOfBatiment', () {
    test(
      'should return tEntrepriseModel from Cache when there is one in the cache',
      () async {
        // arrange
        when(mockEntreprisesBox.values).thenReturn(tListEntrepriseModel);
        // act
        final result = await dataSource.fetchEntreprisesOfBatiment(38);
        // assert
        verify(mockEntreprisesBox.values);
        expect(result.first, equals(tListEntrepriseModel.first));
      },
    );

    test(
      'should throw a CacheException when there is not a cached value',
      () async {
        // arrange
        when(mockEntreprisesBox.get(any)).thenReturn(null);
        // act
        final call = dataSource.fetchBatiment;
        // assert
        expect(() => call(1), throwsA(const TypeMatcher<CacheException>()));
      },
    );
  });

  group('cacheEntreprise', () {
    test(
      'should call Box.put to cache the data',
      () async {
        // act
        await dataSource.cacheEntreprise(tListEntrepriseModel.first);
        // assert
        verify(mockEntreprisesBox.put(
          '/entreprises/${tListEntrepriseModel.first.id}',
          tListEntrepriseModel.first,
        ));
      },
    );
  });

  group('cacheAllEntreprise', () {
    test(
      'should call Box.put to cache the data',
      () async {
        // act
        await dataSource.cacheAllEntreprise(tListEntrepriseModel);
        // assert
        verify(mockEntreprisesBox.put(
          '/entreprises/${tListEntrepriseModel.first.id}',
          tListEntrepriseModel.first,
        ));
      },
    );
  });
}
