import 'dart:convert';

import 'package:app_pym/data/datasources/map_pym_remote_data_source.dart';
import 'package:app_pym/data/models/map_pym/batiment_model.dart';
import 'package:app_pym/data/models/map_pym/batiment_position_model.dart';
import 'package:app_pym/data/models/map_pym/entreprise_model.dart';
import 'package:app_pym/injection_container.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:matcher/matcher.dart';
import 'package:mockito/mockito.dart';
import 'package:app_pym/core/error/exceptions.dart';
import 'package:injectable/injectable.dart' show Environment;

import '../../fixtures/fixture_reader.dart';

void main() {
  MapPymRemoteDataSourceImpl dataSource;
  http.Client mockHttpClient;

  init(env: Environment.test);

  setUp(() {
    mockHttpClient = sl<http.Client>();
    dataSource = MapPymRemoteDataSourceImpl(client: mockHttpClient);
  });

  void setUpMockHttpClientSuccess200() {
    when(
      mockHttpClient.get('https://admin.map-pym.com/api/batiments_position'),
    ).thenAnswer((_) async =>
        http.Response(fixture('map_pym/batiments_position.json'), 200));
    when(
      mockHttpClient.get('https://admin.map-pym.com/api/batiments'),
    ).thenAnswer(
        (_) async => http.Response(fixture('map_pym/batiments.json'), 200));
    when(
      mockHttpClient.get('https://admin.map-pym.com/api/entreprises'),
    ).thenAnswer(
        (_) async => http.Response(fixture('map_pym/entreprises.json'), 200));
  }

  void setUpMockHttpClientFailure404() {
    when(mockHttpClient.get(any))
        .thenAnswer((_) async => http.Response('Something went wrong', 404));
  }

  group('fetchBatimentPosition', () {
    final tListBatimentPositionModel = List<Map<String, dynamic>>.from(
            json.decode(fixture('map_pym/batiments_position.json'))
                as List<dynamic>)
        .map(
            (Map<String, dynamic> data) => BatimentPositionModel.fromJson(data))
        .toList();

    test(
      "should perform a GET request on a URL",
      () async {
        // arrange
        setUpMockHttpClientSuccess200();
        // act
        await dataSource.fetchBatimentsPosition();
        // assert
        verify(mockHttpClient.get(
          'https://admin.map-pym.com/api/batiments_position',
        ));
      },
    );

    test(
      'should return tListBatimentPositionModel when the response code is 200 (success)',
      () async {
        // arrange
        setUpMockHttpClientSuccess200();
        // act
        final result = await dataSource.fetchBatimentsPosition();
        // assert
        expect(result, equals(tListBatimentPositionModel));
      },
    );

    test(
      'should throw a ServerException when the response code is 404 or other',
      () async {
        // arrange
        setUpMockHttpClientFailure404();
        // act
        final call = dataSource.fetchBatimentsPosition;
        // assert
        expect(call, throwsA(const TypeMatcher<ServerException>()));
      },
    );
  });

  group('fetchBatiment', () {
    final tBatimentModel = BatimentModel.fromJson(
        json.decode(fixture('map_pym/batiment.json')) as Map<String, dynamic>);

    test(
      "should perform a GET request on a URL",
      () async {
        // arrange
        setUpMockHttpClientSuccess200();
        // act
        await dataSource.fetchBatiment(1);
        // assert
        verify(mockHttpClient.get(
          'https://admin.map-pym.com/api/batiments',
        ));
      },
    );

    test(
      'should return tBatimentModel when the response code is 200 (success)',
      () async {
        // arrange
        setUpMockHttpClientSuccess200();
        // act
        final result = await dataSource.fetchBatiment(1);
        // assert
        expect(result, equals(tBatimentModel));
      },
    );

    test(
      'should throw a ServerException when the response code is 404 or other',
      () async {
        // arrange
        setUpMockHttpClientFailure404();
        // act
        final call = dataSource.fetchBatiment;
        // assert
        expect(() => call(1), throwsA(const TypeMatcher<ServerException>()));
      },
    );
  });

  group('fetchEntreprisesOfBatiment', () {
    final tEntrepriseModel = EntrepriseModel.fromJson(json
        .decode(fixture('map_pym/entreprise.json')) as Map<String, dynamic>);

    test(
      "should perform a GET request on a URL",
      () async {
        // arrange
        setUpMockHttpClientSuccess200();
        // act
        await dataSource.fetchEntreprisesOfBatiment(38);
        // assert
        verify(mockHttpClient.get(
          'https://admin.map-pym.com/api/entreprises',
        ));
      },
    );

    test(
      'should return tEntrepriseModel when the response code is 200 (success)',
      () async {
        // arrange
        setUpMockHttpClientSuccess200();
        // act
        final result = await dataSource.fetchEntreprisesOfBatiment(38);
        // assert
        expect(result, equals([tEntrepriseModel]));
      },
    );

    test(
      'should throw a ServerException when the response code is 404 or other',
      () async {
        // arrange
        setUpMockHttpClientFailure404();
        // act
        final call = dataSource.fetchEntreprisesOfBatiment;
        // assert
        expect(() => call(38), throwsA(const TypeMatcher<ServerException>()));
      },
    );
  });
}
