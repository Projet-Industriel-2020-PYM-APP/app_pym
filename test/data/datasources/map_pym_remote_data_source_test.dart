import 'dart:convert';
import 'dart:io';

import 'package:app_pym/core/error/exceptions.dart';
import 'package:app_pym/data/datasources/map_pym_remote_data_source.dart';
import 'package:app_pym/data/models/app_pym/booking_model.dart';
import 'package:app_pym/data/models/app_pym/contact_categorie_model.dart';
import 'package:app_pym/data/models/app_pym/contact_model.dart';
import 'package:app_pym/data/models/app_pym/post_model.dart';
import 'package:app_pym/data/models/app_pym/service_categorie_model.dart';
import 'package:app_pym/data/models/app_pym/service_model.dart';
import 'package:app_pym/data/models/authentication/app_user_model.dart';
import 'package:app_pym/data/models/map_pym/batiment_model.dart';
import 'package:app_pym/data/models/map_pym/entreprise_model.dart';
import 'package:app_pym/injection_container.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart' show Environment;
import 'package:matcher/matcher.dart';
import 'package:mockito/mockito.dart';

import '../../fixtures/fixture_reader.dart';

void main() {
  MapPymRemoteDataSourceImpl dataSource;
  http.Client mockHttpClient;

  final tListBatimentModel =
      (json.decode(fixture('map_pym/batiments.json')) as List)
          .map((dynamic data) =>
              BatimentModel.fromJson(data as Map<String, dynamic>))
          .toList();
  final tListContactModel = (json.decode(fixture('map_pym/contacts.json'))
          as List)
      .map(
          (dynamic data) => ContactModel.fromJson(data as Map<String, dynamic>))
      .toList();
  final tListServiceModel =
      (json.decode(fixture('map_pym/services.json')) as List).map(
          (dynamic data) =>
              ServiceModel.fromJson(data as Map<String, dynamic>));
  final tListBookingModel = (json.decode(fixture('map_pym/bookings.json'))
          as List)
      .map(
          (dynamic data) => BookingModel.fromJson(data as Map<String, dynamic>))
      .toList();
  final tListContactCategorieModel =
      (json.decode(fixture('map_pym/contact_categories.json')) as List)
          .map((dynamic data) =>
              ContactCategorieModel.fromJson(data as Map<String, dynamic>))
          .toList();
  final tListServiceCategorieModel =
      (json.decode(fixture('map_pym/service_categories.json')) as List)
          .map((dynamic data) =>
              ServiceCategorieModel.fromJson(data as Map<String, dynamic>))
          .toList();
  final tListEntrepriseModel =
      (json.decode(fixture('map_pym/entreprises.json')) as List)
          .map((dynamic data) =>
              EntrepriseModel.fromJson(data as Map<String, dynamic>))
          .toList();
  final tListPostModel = (json.decode(fixture('map_pym/posts.json')) as List)
      .map((dynamic data) => PostModel.fromJson(data as Map<String, dynamic>))
      .toList();
  final tAppUserModel = AppUserModel.fromJson(
      json.decode(fixture('map_pym/app_user.json')) as Map<String, dynamic>);

  init(env: Environment.test);

  setUp(() {
    mockHttpClient = sl<http.Client>();
    dataSource = MapPymRemoteDataSourceImpl(client: mockHttpClient);
  });

  void setUpMockHttpClientSuccess200() {
    when(
      mockHttpClient.post(
        argThat(endsWith('ajouter')),
        headers: anyNamed('headers'),
        body: anyNamed('body'),
      ),
    ).thenAnswer((_) async => http.Response('Ajouté', 200));
    when(
      mockHttpClient.delete(
        any,
        headers: anyNamed('headers'),
      ),
    ).thenAnswer((_) async => http.Response('Supprimé', 200));
    when(
      mockHttpClient.patch(
        any,
        headers: anyNamed('headers'),
        body: anyNamed('body'),
      ),
    ).thenAnswer((_) async => http.Response('Modifié', 200));
    when(
      mockHttpClient.get('https://admin.map-pym.com/api/batiments'),
    ).thenAnswer(
        (_) async => http.Response(fixture('map_pym/batiments.json'), 200));
    when(
      mockHttpClient.get('https://admin.map-pym.com/api/contacts'),
    ).thenAnswer(
        (_) async => http.Response(fixture('map_pym/contacts.json'), 200));
    when(
      mockHttpClient.get('https://admin.map-pym.com/api/bookings'),
    ).thenAnswer(
        (_) async => http.Response(fixture('map_pym/bookings.json'), 200));
    when(
      mockHttpClient.get('https://admin.map-pym.com/api/entreprises'),
    ).thenAnswer(
        (_) async => http.Response(fixture('map_pym/entreprises.json'), 200));
    when(
      mockHttpClient.get('https://admin.map-pym.com/api/contact_categories'),
    ).thenAnswer((_) async =>
        http.Response(fixture('map_pym/contact_categories.json'), 200));
    when(
      mockHttpClient.get('https://admin.map-pym.com/api/service_categories'),
    ).thenAnswer((_) async =>
        http.Response(fixture('map_pym/service_categories.json'), 200));
    when(
      mockHttpClient.get('https://admin.map-pym.com/api/services'),
    ).thenAnswer(
        (_) async => http.Response(fixture('map_pym/services.json'), 200));
    when(
      mockHttpClient.get('https://admin.map-pym.com/api/posts'),
    ).thenAnswer(
        (_) async => http.Response(fixture('map_pym/posts.json'), 200));
    when(
      mockHttpClient.get('https://admin.map-pym.com/api/user',
          headers: anyNamed('headers')),
    ).thenAnswer(
        (_) async => http.Response(fixture('map_pym/app_user.json'), 200));
  }

  void setUpMockHttpClientFailure404() {
    when(mockHttpClient.get(any))
        .thenAnswer((_) async => http.Response('Something went wrong', 404));
    when(
      mockHttpClient.get(any, headers: anyNamed('headers')),
    ).thenAnswer((_) async => http.Response('Something went wrong', 404));
    when(
      mockHttpClient.delete(
        any,
        headers: anyNamed('headers'),
      ),
    ).thenAnswer((_) async => http.Response('Something went wrong', 404));
    when(
      mockHttpClient.patch(
        any,
        headers: anyNamed('headers'),
        body: anyNamed('body'),
      ),
    ).thenAnswer((_) async => http.Response('Something went wrong', 404));
    when(
      mockHttpClient.post(
        any,
        headers: anyNamed('headers'),
        body: anyNamed('body'),
      ),
    ).thenAnswer((_) async => http.Response('Something went wrong', 404));
  }

  group('createBooking', () {
    test(
      "should perform a POST request on a URL",
      () async {
        // arrange
        setUpMockHttpClientSuccess200();
        // act
        await dataSource.createBooking(tListBookingModel.first, token: 'token');
        // assert
        verify(mockHttpClient.post(
          'https://admin.map-pym.com/api/bookings/ajouter',
          headers: {
            HttpHeaders.authorizationHeader: "Bearing token",
            HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
          },
          body: json.encode(tListBookingModel.first.toJson()),
        ));
      },
    );

    test(
      'should throw a ServerException when the response code is 404 or other',
      () async {
        // arrange
        setUpMockHttpClientFailure404();
        // act
        final call = dataSource.createBooking;
        // assert
        expect(() => call(tListBookingModel.first, token: 'token'),
            throwsA(isA<ServerException>()));
      },
    );
  });

  group('deleteBooking', () {
    test(
      "should perform a DELETE request on a URL",
      () async {
        // arrange
        setUpMockHttpClientSuccess200();
        // act
        await dataSource.deleteBooking(tListBookingModel.first.id,
            token: 'token');
        // assert
        verify(mockHttpClient.delete(
          'https://admin.map-pym.com/api/bookings/${tListBookingModel.first.id}/supprimer',
          headers: {
            HttpHeaders.authorizationHeader: "Bearing token",
            HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
          },
        ));
      },
    );

    test(
      'should throw a ServerException when the response code is 404 or other',
      () async {
        // arrange
        setUpMockHttpClientFailure404();
        // act
        final call = dataSource.deleteBooking;
        // assert
        expect(() => call(tListBookingModel.first.id, token: 'token'),
            throwsA(isA<ServerException>()));
      },
    );
  });

  group('fetchAllBatiment', () {
    test(
      "should perform a GET request on a URL",
      () async {
        // arrange
        setUpMockHttpClientSuccess200();
        // act
        await dataSource.fetchAllBatiment();
        // assert
        verify(mockHttpClient.get(
          'https://admin.map-pym.com/api/batiments',
        ));
      },
    );

    test(
      'should return tListBatimentModel when the response code is 200 (success)',
      () async {
        // arrange
        setUpMockHttpClientSuccess200();
        // act
        final result = await dataSource.fetchAllBatiment();
        // assert
        expect(result, equals(tListBatimentModel));
      },
    );

    test(
      'should throw a ServerException when the response code is 404 or other',
      () async {
        // arrange
        setUpMockHttpClientFailure404();
        // act
        final call = dataSource.fetchAllBatiment;
        // assert
        expect(call, throwsA(isA<ServerException>()));
      },
    );
  });

  group('fetchAllBookingsOf', () {
    test(
      "should perform a GET request on a URL",
      () async {
        // arrange
        setUpMockHttpClientSuccess200();
        // act
        await dataSource.fetchAllBookingsOf(tListBookingModel.first.service_id);
        // assert
        verify(mockHttpClient.get(
          'https://admin.map-pym.com/api/bookings',
        ));
      },
    );

    test(
      'should return tListBatimentModel when the response code is 200 (success)',
      () async {
        // arrange
        setUpMockHttpClientSuccess200();
        // act
        final result = await dataSource
            .fetchAllBookingsOf(tListBookingModel.first.service_id);
        // assert
        final expected = tListBookingModel
            .where((e) => e.service_id == tListBookingModel.first.service_id)
            .toList();
        expect(result, equals(expected));
      },
    );

    test(
      'should throw a ServerException when the response code is 404 or other',
      () async {
        // arrange
        setUpMockHttpClientFailure404();
        // act
        final call = dataSource.fetchAllBookingsOf;
        // assert
        expect(() => call(tListBookingModel.first.service_id),
            throwsA(isA<ServerException>()));
      },
    );
  });

  group('fetchAllContactCategories', () {
    test(
      "should perform a GET request on a URL",
      () async {
        // arrange
        setUpMockHttpClientSuccess200();
        // act
        await dataSource.fetchAllContactCategories();
        // assert
        verify(mockHttpClient.get(
          'https://admin.map-pym.com/api/contact_categories',
        ));
      },
    );

    test(
      'should return tListContactCategorieModel when the response code is 200 (success)',
      () async {
        // arrange
        setUpMockHttpClientSuccess200();
        // act
        final result = await dataSource.fetchAllContactCategories();
        // assert
        expect(result, equals(tListContactCategorieModel));
      },
    );

    test(
      'should throw a ServerException when the response code is 404 or other',
      () async {
        // arrange
        setUpMockHttpClientFailure404();
        // act
        final call = dataSource.fetchAllContactCategories;
        // assert
        expect(call, throwsA(isA<ServerException>()));
      },
    );
  });

  group('fetchAllServiceCategories', () {
    test(
      "should perform a GET request on a URL",
      () async {
        // arrange
        setUpMockHttpClientSuccess200();
        // act
        await dataSource.fetchAllServiceCategories();
        // assert
        verify(mockHttpClient.get(
          'https://admin.map-pym.com/api/service_categories',
        ));
      },
    );

    test(
      'should return tListServiceCategorieModel when the response code is 200 (success)',
      () async {
        // arrange
        setUpMockHttpClientSuccess200();
        // act
        final result = await dataSource.fetchAllServiceCategories();
        // assert
        expect(result, equals(tListServiceCategorieModel));
      },
    );

    test(
      'should throw a ServerException when the response code is 404 or other',
      () async {
        // arrange
        setUpMockHttpClientFailure404();
        // act
        final call = dataSource.fetchAllServiceCategories;
        // assert
        expect(call, throwsA(isA<ServerException>()));
      },
    );
  });

  group('fetchBatiment', () {
    test(
      "should perform a GET request on a URL",
      () async {
        // arrange
        setUpMockHttpClientSuccess200();
        // act
        await dataSource.fetchBatiment(tListBatimentModel.first.id);
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
        final result =
            await dataSource.fetchBatiment(tListBatimentModel.first.id);
        // assert
        expect(result, equals(tListBatimentModel.first));
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
        expect(() => call(tListBatimentModel.first.id),
            throwsA(isA<ServerException>()));
      },
    );
  });

  group('fetchContact', () {
    test(
      "should perform a GET request on a URL",
      () async {
        // arrange
        setUpMockHttpClientSuccess200();
        // act
        await dataSource.fetchContact(tListContactModel.first.id);
        // assert
        verify(mockHttpClient.get(
          'https://admin.map-pym.com/api/contacts',
        ));
      },
    );

    test(
      'should return tContactModel when the response code is 200 (success)',
      () async {
        // arrange
        setUpMockHttpClientSuccess200();
        // act
        final result =
            await dataSource.fetchContact(tListContactModel.first.id);
        // assert
        expect(result, equals(tListContactModel.first));
      },
    );

    test(
      'should throw a ServerException when the response code is 404 or other',
      () async {
        // arrange
        setUpMockHttpClientFailure404();
        // act
        final call = dataSource.fetchContact;
        // assert
        expect(() => call(tListContactModel.first.id),
            throwsA(isA<ServerException>()));
      },
    );
  });

  group('fetchEntreprisesOfBatiment', () {
    test(
      "should perform a GET request on a URL",
      () async {
        // arrange
        setUpMockHttpClientSuccess200();
        // act
        await dataSource
            .fetchEntreprisesOfBatiment(tListEntrepriseModel.first.idBatiment);
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
        final result = await dataSource
            .fetchEntreprisesOfBatiment(tListEntrepriseModel.first.idBatiment);
        // assert
        final expected = tListEntrepriseModel
            .where((e) => e.idBatiment == tListEntrepriseModel.first.idBatiment)
            .toList();
        expect(result, equals(expected));
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
        expect(() => call(tListEntrepriseModel.first.idBatiment),
            throwsA(isA<ServerException>()));
      },
    );
  });

  group('fetchPosts', () {
    test(
      "should perform a GET request on a URL",
      () async {
        // arrange
        setUpMockHttpClientSuccess200();
        // act
        await dataSource.fetchAllPosts();
        // assert
        verify(mockHttpClient.get(
          'https://admin.map-pym.com/api/posts',
        ));
      },
    );

    test(
      'should return filtered tListPostModel when the response code is 200 (success)',
      () async {
        // arrange
        setUpMockHttpClientSuccess200();
        // act
        final result = await dataSource.fetchAllPosts();
        // assert
        expect(result, equals(tListPostModel));
      },
    );

    test(
      'should throw a ServerException when the response code is 404 or other',
      () async {
        // arrange
        setUpMockHttpClientFailure404();
        // act
        final call = dataSource.fetchAllPosts;
        // assert
        expect(call, throwsA(isA<ServerException>()));
      },
    );
  });

  group('fetchServicesOf', () {
    test(
      "should perform a GET request on a URL",
      () async {
        // arrange
        setUpMockHttpClientSuccess200();
        // act
        await dataSource.fetchServicesOf(tListServiceModel.first.categorie_id);
        // assert
        verify(mockHttpClient.get(
          'https://admin.map-pym.com/api/services',
        ));
      },
    );

    test(
      'should return filtered tListServiceModel when the response code is 200 (success)',
      () async {
        // arrange
        setUpMockHttpClientSuccess200();
        // act
        final result = await dataSource
            .fetchServicesOf(tListServiceModel.first.categorie_id);
        // assert
        final expected = tListServiceModel
            .where(
                (e) => e.categorie_id == tListServiceModel.first.categorie_id)
            .toList();
        expect(result, equals(expected));
      },
    );

    test(
      'should throw a ServerException when the response code is 404 or other',
      () async {
        // arrange
        setUpMockHttpClientFailure404();
        // act
        final call = dataSource.fetchServicesOf;
        // assert
        expect(() => call(tListServiceModel.first.categorie_id),
            throwsA(isA<ServerException>()));
      },
    );
  });

  group('fetchUser', () {
    test(
      "should perform a GET request on a URL",
      () async {
        // arrange
        setUpMockHttpClientSuccess200();
        // act
        await dataSource.fetchUser(tAppUserModel.token);
        // assert
        final captured = verify(mockHttpClient.get(
                'https://admin.map-pym.com/api/user',
                headers: captureAnyNamed('headers')))
            .captured;

        final headers = captured.first as Map<String, String>;
        expect(headers[HttpHeaders.authorizationHeader],
            startsWith("Bearing ${tAppUserModel.token}"));
      },
    );

    test(
      'should return AppUser when the response code is 200 (success)',
      () async {
        // arrange
        setUpMockHttpClientSuccess200();
        // act
        final result = await dataSource.fetchUser(tAppUserModel.token);
        // assert
        expect(result, equals(tAppUserModel));
      },
    );

    test(
      'should throw a ServerException when the response code is 404 or other',
      () async {
        // arrange
        setUpMockHttpClientFailure404();
        // act
        final call = dataSource.fetchUser;
        // assert
        expect(
            () => call(tAppUserModel.token), throwsA(isA<ServerException>()));
      },
    );
  });

  group('setUserData', () {
    test(
      "should perform a PATCH request on a URL",
      () async {
        // arrange
        setUpMockHttpClientSuccess200();
        // act
        await dataSource.setUserData(tAppUserModel);
        // assert
        verify(mockHttpClient.patch(
          'https://admin.map-pym.com/api/user/${tAppUserModel.id}',
          headers: {
            HttpHeaders.authorizationHeader: "Bearing ${tAppUserModel.token}",
            HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
          },
          body: json.encode(tAppUserModel.toJson()),
        ));
      },
    );

    test(
      'should throw a ServerException when the response code is 404 or other',
      () async {
        // arrange
        setUpMockHttpClientFailure404();
        // act
        final call = dataSource.setUserData;
        // assert
        expect(() => call(tAppUserModel), throwsA(isA<ServerException>()));
      },
    );
  });

  group('updateBooking', () {
    test(
      "should perform a PATCH request on a URL",
      () async {
        // arrange
        setUpMockHttpClientSuccess200();
        // act
        await dataSource.updateBooking(tListBookingModel.first, token: 'token');
        // assert
        verify(mockHttpClient.patch(
          'https://admin.map-pym.com/api/bookings/${tListBookingModel.first.id}/modifier',
          headers: {
            HttpHeaders.authorizationHeader: "Bearing token",
            HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
          },
          body: json.encode(tListBookingModel.first.toJson()),
        ));
      },
    );

    test(
      'should throw a ServerException when the response code is 404 or other',
      () async {
        // arrange
        setUpMockHttpClientFailure404();
        // act
        final call = dataSource.updateBooking;
        // assert
        expect(() => call(tListBookingModel.first, token: 'token'),
            throwsA(isA<ServerException>()));
      },
    );
  });
}
