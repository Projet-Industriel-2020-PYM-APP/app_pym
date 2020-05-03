import 'dart:convert';

import 'package:app_pym/core/error/exceptions.dart';
import 'package:app_pym/data/datasources/map_pym_local_data_source.dart';
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
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart' show Environment;
import 'package:matcher/matcher.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../fixtures/fixture_reader.dart';

void main() {
  final tListBatimentModel =
      (json.decode(fixture('map_pym/batiments.json')) as List)
          .map((dynamic data) =>
              BatimentModel.fromJson(data as Map<String, dynamic>))
          .toList();
  final tListServiceModel = (json.decode(fixture('map_pym/services.json'))
          as List)
      .map(
          (dynamic data) => ServiceModel.fromJson(data as Map<String, dynamic>))
      .toList();
  final tListContactModel = (json.decode(fixture('map_pym/contacts.json'))
          as List)
      .map(
          (dynamic data) => ContactModel.fromJson(data as Map<String, dynamic>))
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

  MapPymLocalDataSourceImpl dataSource;
  Box<BatimentModel> mockBatimentsBox;
  Box<EntrepriseModel> mockEntreprisesBox;
  Box<PostModel> mockPostsBox;
  Box<ServiceModel> mockServicesBox;
  Box<ServiceCategorieModel> mockServiceCategoriesBox;
  Box<ContactCategorieModel> mockContactCategoriesBox;
  Box<ContactModel> mockContactsBox;
  Box<BookingModel> mockBookingsBox;
  SharedPreferences mockPrefs;

  init(env: Environment.test);

  setUp(() {
    mockBatimentsBox = sl<Box<BatimentModel>>();
    mockEntreprisesBox = sl<Box<EntrepriseModel>>();
    mockPostsBox = sl<Box<PostModel>>();
    mockServicesBox = sl<Box<ServiceModel>>();
    mockServiceCategoriesBox = sl<Box<ServiceCategorieModel>>();
    mockContactCategoriesBox = sl<Box<ContactCategorieModel>>();
    mockContactsBox = sl<Box<ContactModel>>();
    mockBookingsBox = sl<Box<BookingModel>>();
    mockPrefs = sl<SharedPreferences>();

    dataSource = MapPymLocalDataSourceImpl(
      batimentsBox: mockBatimentsBox,
      entreprisesBox: mockEntreprisesBox,
      postsBox: mockPostsBox,
      contactCategoriesBox: mockContactCategoriesBox,
      serviceCategoriesBox: mockServiceCategoriesBox,
      servicesBox: mockServicesBox,
      contactsBox: mockContactsBox,
      bookingsBox: mockBookingsBox,
      prefs: mockPrefs,
    );
  });

  group('cacheAllBatiment', () {
    test(
      'should call Box.put to cache the data',
      () async {
        // act
        await dataSource.cacheAllBatiment(tListBatimentModel);
        // assert
        tListBatimentModel.forEach((e) {
          verify(mockBatimentsBox.put('/batiments/${e.id}', e));
        });
      },
    );
  });

  group('cacheAllContactCategories', () {
    test(
      'should call Box.put to cache the data',
      () async {
        // act
        await dataSource.cacheAllContactCategories(tListContactCategorieModel);
        // assert
        tListContactCategorieModel.forEach((e) {
          verify(
              mockContactCategoriesBox.put('/contact_categories/${e.id}', e));
        });
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
        tListEntrepriseModel.forEach((e) {
          verify(mockEntreprisesBox.put('/entreprises/${e.id}', e));
        });
      },
    );
  });

  group('cacheAllPosts', () {
    test(
      'should call Box.put to cache the data',
      () async {
        // act
        await dataSource.cacheAllPosts(tListPostModel);
        // assert
        tListPostModel.forEach((e) {
          verify(mockPostsBox.put('/posts/${e.id}', e));
        });
      },
    );
  });

  group('cacheAllServiceCategories', () {
    test(
      'should call Box.put to cache the data',
      () async {
        // act
        await dataSource.cacheAllServiceCategories(tListServiceCategorieModel);
        // assert
        tListServiceCategorieModel.forEach((e) {
          verify(
              mockServiceCategoriesBox.put('/service_categories/${e.id}', e));
        });
      },
    );
  });

  group('cacheAllServices', () {
    test(
      'should call Box.put to cache the data',
      () async {
        // act
        await dataSource.cacheAllServices(tListServiceModel);
        // assert
        tListServiceModel.forEach((e) {
          verify(mockServicesBox.put('/services/${e.id}', e));
        });
      },
    );
  });

  group('cacheBatiment', () {
    test(
      'should call Box.put to cache the data',
      () async {
        // act
        await dataSource.cacheBatiment(tListBatimentModel.first);
        // assert
        verify(mockBatimentsBox.put(
          '/batiments/${tListBatimentModel.first.id}',
          tListBatimentModel.first,
        ));
      },
    );
  });

  group('cacheContact', () {
    test(
      'should call Box.put to cache the data',
      () async {
        // act
        await dataSource.cacheContact(tListContactModel.first);
        // assert
        verify(mockContactsBox.put(
          '/contacts/${tListContactModel.first.id}',
          tListContactModel.first,
        ));
      },
    );
  });

  group('cacheUser', () {
    test(
      'should call prefs to cache the data',
      () async {
        // act
        await dataSource.cacheUser(tAppUserModel);
        // assert
        verify(mockPrefs.setString(
          'user',
          json.encode(tAppUserModel.toJson()),
        ));
      },
    );
  });

  group('fetchAllBatiment', () {
    test(
      'should return tListBatimentModel from Cache when there is one in the cache',
      () async {
        // arrange
        when(mockBatimentsBox.values).thenReturn(tListBatimentModel);
        // act
        final result = dataSource.fetchAllBatiment();
        // assert
        verify(mockBatimentsBox.values);
        expect(result, equals(tListBatimentModel));
      },
    );
  });

  group('fetchAllContactCategories', () {
    test(
      'should return tListContactCategoryModel from Cache when there is one in the cache',
      () async {
        // arrange
        when(mockContactCategoriesBox.values)
            .thenReturn(tListContactCategorieModel);
        // act
        final result = dataSource.fetchAllContactCategories();
        // assert
        verify(mockContactCategoriesBox.values);
        expect(result, equals(tListContactCategorieModel));
      },
    );
  });

  group('fetchAllServiceCategories', () {
    test(
      'should return tListServiceCategorieModel from Cache when there is one in the cache',
      () async {
        // arrange
        when(mockServiceCategoriesBox.values)
            .thenReturn(tListServiceCategorieModel);
        // act
        final result = dataSource.fetchAllServiceCategories();
        // assert
        verify(mockServiceCategoriesBox.values);
        expect(result, equals(tListServiceCategorieModel));
      },
    );
  });

  group('fetchBatiment', () {
    test(
      'should return Batiment from Cache when there is one in the cache',
      () async {
        // arrange
        when(mockBatimentsBox.get(any)).thenReturn(tListBatimentModel.first);
        // act
        final result = dataSource.fetchBatiment(tListBatimentModel.first.id);
        // assert
        verify(
            mockBatimentsBox.get('/batiments/${tListBatimentModel.first.id}'));
        expect(result, equals(tListBatimentModel.first));
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
        expect(() => call(tListBatimentModel.first.id),
            throwsA(isA<CacheException>()));
      },
    );
  });

  group('fetchContact', () {
    test(
      'should return Contact from Cache when there is one in the cache',
      () async {
        // arrange
        when(mockContactsBox.get(any)).thenReturn(tListContactModel.first);
        // act
        final result = dataSource.fetchContact(tListContactModel.first.id);
        // assert
        verify(mockContactsBox.get('/contacts/${tListContactModel.first.id}'));
        expect(result, equals(tListContactModel.first));
      },
    );

    test(
      'should throw a CacheException when there is not a cached value',
      () async {
        // arrange
        when(mockContactsBox.get(any)).thenReturn(null);
        // act
        final call = dataSource.fetchContact;
        // assert
        expect(() => call(tListContactModel.first.id),
            throwsA(isA<CacheException>()));
      },
    );
  });

  group('fetchEntreprisesOfBatiment', () {
    test(
      'should return tListEntrepriseModel.first from Cache when there is one in the cache',
      () async {
        // arrange
        when(mockEntreprisesBox.values).thenReturn(tListEntrepriseModel);
        // act
        final result = dataSource
            .fetchEntreprisesOfBatiment(tListEntrepriseModel.first.idBatiment);
        // assert
        verify(mockEntreprisesBox.values);
        final expected = tListEntrepriseModel
            .where((e) => e.idBatiment == tListEntrepriseModel.first.idBatiment)
            .toList();
        expect(result, equals(expected));
      },
    );

    test(
      'should return [] from Cache when cache is null',
      () async {
        // arrange
        when(mockEntreprisesBox.values).thenReturn(null);
        // act
        final result = dataSource
            .fetchEntreprisesOfBatiment(tListEntrepriseModel.first.idBatiment);
        // assert
        verify(mockEntreprisesBox.values);
        expect(result, equals(<EntrepriseModel>[]));
      },
    );
  });

  group('fetchPosts', () {
    test(
      'should return tListPostModel from Cache when there is one in the cache',
      () async {
        // arrange
        when(mockPostsBox.values).thenReturn(tListPostModel);
        // act
        final result = dataSource.fetchAllPosts();
        // assert
        verify(mockPostsBox.values);
        expect(result, equals(tListPostModel));
      },
    );
  });

  group('fetchServicesOf', () {
    test(
      'should return tListServiceModel.first from Cache when there is one in the cache',
      () async {
        // arrange
        when(mockServicesBox.values).thenReturn(tListServiceModel);
        // act
        final result =
            dataSource.fetchServicesOf(tListServiceModel.first.categorie_id);
        // assert
        final expected = tListServiceModel.where(
            (e) => e.categorie_id == tListServiceModel.first.categorie_id);
        verify(mockServicesBox.values);
        expect(result, equals(expected));
      },
    );

    test(
      'should return [] from Cache when cache is null',
      () async {
        // arrange
        when(mockServicesBox.values).thenReturn(null);
        // act
        final result =
            dataSource.fetchServicesOf(tListServiceModel.first.categorie_id);
        // assert
        verify(mockServicesBox.values);
        expect(result, equals(<ServiceModel>[]));
      },
    );
  });

  group('fetchUser', () {
    test(
      'should return tAppUserModel from Cache when there is one in the cache',
      () async {
        // arrange
        when(mockPrefs.getString(any))
            .thenReturn(json.encode(tAppUserModel.toJson()));
        // act
        final result = dataSource.fetchUser();
        // assert
        verify(mockPrefs.getString('user'));
        expect(result, equals(tAppUserModel));
      },
    );

    test(
      'should throw a CacheException when there is not a cached value',
      () async {
        // arrange
        when(mockPrefs.getString(any)).thenReturn(null);
        // act
        final call = dataSource.fetchUser;
        // assert
        expect(call, throwsA(isA<CacheException>()));
      },
    );
  });
}
