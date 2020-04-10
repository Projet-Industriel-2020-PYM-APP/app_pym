import 'package:app_pym/data/datasources/firestore_data_source.dart';
import 'package:app_pym/data/models/app_pym/action_model.dart';
import 'package:app_pym/data/models/app_pym/categorie_model.dart';
import 'package:app_pym/data/models/app_pym/service_model.dart';
import 'package:app_pym/injection_container.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:matcher/matcher.dart';
import 'package:mockito/mockito.dart';
import 'package:injectable/injectable.dart' show Environment;

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
  MockQuery mockQuery;

  init(env: Environment.test);

  const tActionModel = ActionModel(
    id: "1",
    html_url: "html_url",
    name: "name",
  );
  const tCategorieModel = CategorieModel(
    id: "1",
    action: tActionModel,
    name: "name",
  );
  const tListCategoriesModel = [tCategorieModel];
  const tServiceModel = ServiceModel(
    id: "1",
    title: "title",
    categorie_id: "categorie_id",
    subtitle: "subtitle",
    address: "address",
    img_url: "img_url",
    actions: [tActionModel],
  );
  const tListServicesModel = [tServiceModel];

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
    when(mockFirestore.collection('categories'))
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
    });
    when(mockDocumentSnapshot.documentID).thenReturn("1");
  }

  void setUpServicesFirestore() {
    // Expected Entrypoint
    when(mockFirestore.collection('services'))
        .thenReturn(mockCollectionReference);
    when(mockCollectionReference.where(
      any,
      isEqualTo: anyNamed("isEqualTo"),
    )).thenReturn(mockQuery);
    when(mockQuery.snapshots())
        .thenAnswer((_) => Stream.fromIterable([mockQuerySnapshot]));
    when(mockQuerySnapshot.documents).thenReturn([mockDocumentSnapshot]);

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
      "categorie_id": "categorie_id",
      "subtitle": "subtitle",
      "img_url": "img_url",
      "address": "address",
    });
    when(mockDocumentSnapshot.documentID).thenReturn("1");
  }

  group('fetchCategories', () {
    test(
      "should get documents from categories collection",
      () async {
        // arrange
        setUpCategoriesFirestore();
        // act
        await dataSource.fetchCategories().drain<List<CategorieModel>>();
        // assert
        verify(mockFirestore.collection('categories'));
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
        final result = await dataSource.fetchCategories().toList();
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
        verify(mockCollectionReference.where("categorie_id", isEqualTo: "1"));
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
}
