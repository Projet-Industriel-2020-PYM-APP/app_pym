import 'package:app_pym/data/datasources/firestore_data_source.dart';
import 'package:app_pym/data/models/app_pym/action_model.dart';
import 'package:app_pym/data/models/app_pym/service_model.dart';
import 'package:app_pym/data/repositories/app_pym/service_repository_impl.dart';
import 'package:app_pym/domain/entities/app_pym/action.dart';
import 'package:app_pym/domain/entities/app_pym/categorie.dart';
import 'package:app_pym/domain/entities/app_pym/service.dart';
import 'package:app_pym/injection_container.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' show Environment;
import 'package:mockito/mockito.dart';

// ignore: avoid_implementing_value_types
class MockDocumentReference extends Mock implements DocumentReference {
  @override
  String toString() => "categorie_ref";
}

void main() {
  ServiceRepositoryImpl repository;
  FirestoreDataSource mockDataSource;

  init(env: Environment.test);

  setUp(() {
    mockDataSource = sl<FirestoreDataSource>();
    repository = ServiceRepositoryImpl(
      dataSource: mockDataSource,
    );
  });

  group('fetchServicesOf', () {
    const tActionModel = ActionModel(
      id: "1",
      html_url: "html_url",
      name: "name",
    );
    const tAction = Action(
      id: "1",
      html_url: "html_url",
      name: "name",
    );
    final tServiceModel = ServiceModel(
      id: "1",
      title: "title",
      categorie_ref: MockDocumentReference(),
      subtitle: "subtitle",
      address: "address",
      img_url: "img_url",
      actions: [tActionModel],
    );
    final tListServiceModel = [tServiceModel];
    const tService = Service(
      id: "1",
      title: "title",
      categorie_ref: "categorie_ref",
      subtitle: "subtitle",
      address: "address",
      img_url: "img_url",
      actions: [tAction],
    );
    const tListService = [tService];

    const tCategorie = Categorie(
      id: "1",
      action: tAction,
      name: "name",
    );

    test(
      'should return data when the call to data source is successful',
      () async {
        // arrange
        when(mockDataSource.fetchServicesOf(any))
            .thenAnswer((_) => Stream.fromIterable([tListServiceModel]));
        // act
        final result = await repository.fetchServicesOf(tCategorie).toList();
        // assert
        verify(mockDataSource.fetchServicesOf(tCategorie.id));
        expect(result, equals([tListService]));
      },
    );
  });
}
