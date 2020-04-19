import 'package:app_pym/data/datasources/firestore_data_source.dart';
import 'package:app_pym/data/models/app_pym/action_model.dart';
import 'package:app_pym/data/models/app_pym/categorie_model.dart';
import 'package:app_pym/data/models/app_pym/contact_model.dart';
import 'package:app_pym/data/models/app_pym/contact_type_model.dart';
import 'package:app_pym/data/models/app_pym/service_model.dart';
import 'package:app_pym/injection_container.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:matcher/matcher.dart';
import 'package:mockito/mockito.dart';
import 'package:injectable/injectable.dart' show Environment;

// ignore: avoid_implementing_value_types
class MockDocumentReference extends Mock implements DocumentReference {}

class MockCollectionReference extends Mock implements CollectionReference {}

class MockQuerySnapshot extends Mock implements QuerySnapshot {}

class MockDocumentSnapshot extends Mock implements DocumentSnapshot {}

class MockQuery extends Mock implements Query {}

void main() {
  FirestoreDataSourceImpl dataSource;
  Firestore mockFirestore;
  MockCollectionReference mockCollectionReference;
  MockQuerySnapshot mockQuerySnapshot;
  MockDocumentSnapshot mockDocumentSnapshot;
  MockDocumentReference mockDocumentReference;
  MockQuery mockQuery;

  init(env: Environment.test);

  const tActionModel = ActionModel(
    id: "1",
    html_url: "html_url",
    name: "name",
  );
  const tServiceCategorieModel = CategorieModel(
    id: "1",
    action: tActionModel,
    name: "name",
    img_url: "img_url",
    primary_color: "primary_color",
  );
  const tListCategoriesModel = [tServiceCategorieModel];
  ServiceModel tServiceModel;
  List<ServiceModel> tListServicesModel;
  const tContactModel = ContactModel(
    id: "1",
    address: "address",
    html_url: "html_url",
    name: "name",
    telephone: "telephone",
    user_id: "user_id",
  );
  ContactTypeModel tContactTypeModel;
  List<ContactTypeModel> tListContactTypesModel;

  setUp(() {
    mockFirestore = sl<Firestore>();
    dataSource = FirestoreDataSourceImpl(firestore: mockFirestore);
    mockCollectionReference = MockCollectionReference();
    mockQuerySnapshot = MockQuerySnapshot();
    mockDocumentSnapshot = MockDocumentSnapshot();
    mockQuery = MockQuery();
  });

  void setUpCategoriesFirestore() {
    // Expected Entrypoint
    when(mockFirestore.collection('service_categories'))
        .thenReturn(mockCollectionReference);
    when(mockFirestore.collection('contact_categories'))
        .thenReturn(mockCollectionReference);

    when(mockCollectionReference.snapshots())
        .thenAnswer((_) => Stream.fromIterable([mockQuerySnapshot]));
    when(mockQuerySnapshot.documents).thenReturn([mockDocumentSnapshot]);

    // Expected data
    when(mockDocumentSnapshot.data).thenReturn(<String, dynamic>{
      "action": {
        "id": "1",
        "html_url": "html_url",
        "name": "name",
      },
      "name": "name",
      "primary_color": "primary_color",
      "img_url": "img_url",
    });
    when(mockDocumentSnapshot.documentID).thenReturn("1");
  }

  void setUpServicesFirestore() {
    // Expected Entrypoint
    mockDocumentReference = MockDocumentReference();
    when(mockCollectionReference.document(any))
        .thenReturn(mockDocumentReference);
    when(mockFirestore.collection('service_categories'))
        .thenReturn(mockCollectionReference);
    when(mockFirestore.collection('services'))
        .thenReturn(mockCollectionReference);
    when(mockCollectionReference.where(
      any,
      isEqualTo: anyNamed("isEqualTo"),
    )).thenReturn(mockQuery);
    when(mockQuery.snapshots())
        .thenAnswer((_) => Stream.fromIterable([mockQuerySnapshot]));
    when(mockQuerySnapshot.documents).thenReturn([mockDocumentSnapshot]);
    tServiceModel = ServiceModel(
      id: "1",
      title: "title",
      categorie_ref: mockDocumentReference,
      subtitle: "subtitle",
      address: "address",
      img_url: "img_url",
      actions: [tActionModel],
    );
    tListServicesModel = [tServiceModel];

    // Expected data
    when(mockDocumentSnapshot.data).thenReturn(<String, dynamic>{
      "actions": [
        {
          "id": "1",
          "html_url": "html_url",
          "name": "name",
        }
      ],
      "title": "title",
      "categorie_ref": mockDocumentReference,
      "subtitle": "subtitle",
      "img_url": "img_url",
      "address": "address",
    });
    when(mockDocumentSnapshot.documentID).thenReturn("1");
  }

  void setUpContactTypesFirestore() {
    // Expected Entrypoint
    mockDocumentReference = MockDocumentReference();

    when(mockCollectionReference.document(any))
        .thenReturn(mockDocumentReference);
    when(mockFirestore.collection('contact_categories'))
        .thenReturn(mockCollectionReference);
    when(mockFirestore.collection('contact_type'))
        .thenReturn(mockCollectionReference);
    when(mockCollectionReference.where(
      any,
      isEqualTo: anyNamed("isEqualTo"),
    )).thenReturn(mockQuery);
    when(mockQuery.snapshots())
        .thenAnswer((_) => Stream.fromIterable([mockQuerySnapshot]));
    when(mockQuerySnapshot.documents).thenReturn([mockDocumentSnapshot]);
    tContactTypeModel = ContactTypeModel(
      id: "1",
      title: "title",
      categorie_ref: mockDocumentReference,
      subtitle: "subtitle",
      address: "address",
      img_url: "img_url",
      actions: [tActionModel],
      contact: tContactModel,
    );
    tListContactTypesModel = [tContactTypeModel];

    // Expected data
    when(mockDocumentSnapshot.data).thenReturn(<String, dynamic>{
      "actions": [
        {
          "id": "1",
          "html_url": "html_url",
          "name": "name",
        }
      ],
      "title": "title",
      "categorie_ref": mockDocumentReference,
      "subtitle": "subtitle",
      "img_url": "img_url",
      "address": "address",
      "contact": {
        "id": "1",
        "address": "address",
        "html_url": "html_url",
        "name": "name",
        "telephone": "telephone",
        "user_id": "user_id",
      },
    });
    when(mockDocumentSnapshot.documentID).thenReturn("1");
  }

  group('fetchServiceCategories', () {
    test(
      "should get documents from service_categories collection",
      () async {
        // arrange
        setUpCategoriesFirestore();
        // act
        await dataSource.fetchServiceCategories().drain<List<CategorieModel>>();
        // assert
        verify(mockFirestore.collection('service_categories'));
        verify(mockCollectionReference.snapshots());
        verify(mockQuerySnapshot.documents);
      },
    );

    test(
      'should return tListCategoriesModel when firestore is set up',
      () async {
        // arrange
        setUpCategoriesFirestore();
        // act
        final result = await dataSource.fetchServiceCategories().toList();
        // assert
        expect(result, equals([tListCategoriesModel]));
      },
    );
  });

  group('fetchServicesOf', () {
    test(
      "should get documents from services collection",
      () async {
        // arrange
        setUpServicesFirestore();
        // act
        await dataSource.fetchServicesOf("1").drain<List<ServiceModel>>();
        // assert
        verify(mockFirestore.collection('services'));
        verify(mockCollectionReference.where("categorie_ref",
            isEqualTo: mockDocumentReference));
        verify(mockQuery.snapshots());
        verify(mockQuerySnapshot.documents);
      },
    );

    test(
      'should return tListServicesModel when firestore is set up',
      () async {
        // arrange
        setUpServicesFirestore();
        // act
        final result = await dataSource.fetchServicesOf("1").toList();
        // assert
        expect(result, equals([tListServicesModel]));
      },
    );
  });

  group('fetchContactCategories', () {
    test(
      "should get documents from contact_categories collection",
      () async {
        // arrange
        setUpCategoriesFirestore();
        // act
        await dataSource
            .fetchContactTypeCategories()
            .drain<List<CategorieModel>>();
        // assert
        verify(mockFirestore.collection('contact_categories'));
        verify(mockCollectionReference.snapshots());
        verify(mockQuerySnapshot.documents);
      },
    );

    test(
      'should return tListCategoriesModel when firestore is set up',
      () async {
        // arrange
        setUpCategoriesFirestore();
        // act
        final result = await dataSource.fetchContactTypeCategories().toList();
        // assert
        expect(result, equals([tListCategoriesModel]));
      },
    );
  });

  group('fetchContactTypesOf', () {
    test(
      "should get documents from contact_type collection",
      () async {
        // arrange
        setUpContactTypesFirestore();
        // act
        await dataSource
            .fetchContactTypesOf("1")
            .drain<List<ContactTypeModel>>();
        // assert
        verify(mockFirestore.collection('contact_type'));
        verify(mockCollectionReference.where("categorie_ref",
            isEqualTo: mockDocumentReference));
        verify(mockQuery.snapshots());
        verify(mockQuerySnapshot.documents);
      },
    );

    test(
      'should return tListContactTypesModel when firestore is set up',
      () async {
        // arrange
        setUpContactTypesFirestore();
        // act
        final result = await dataSource.fetchContactTypesOf("1").toList();
        // assert
        expect(result, equals([tListContactTypesModel]));
      },
    );
  });
}
