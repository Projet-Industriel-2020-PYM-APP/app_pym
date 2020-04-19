import 'package:app_pym/data/datasources/firestore_data_source.dart';
import 'package:app_pym/data/models/app_pym/action_model.dart';
import 'package:app_pym/data/models/app_pym/contact_model.dart';
import 'package:app_pym/data/models/app_pym/contact_type_model.dart';
import 'package:app_pym/data/repositories/app_pym/contact_type_repository_impl.dart';
import 'package:app_pym/domain/entities/app_pym/action.dart';
import 'package:app_pym/domain/entities/app_pym/categorie.dart';
import 'package:app_pym/domain/entities/app_pym/contact.dart';
import 'package:app_pym/domain/entities/app_pym/contact_type.dart';
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
  ContactTypeRepositoryImpl repository;
  FirestoreDataSource mockDataSource;

  init(env: Environment.test);

  setUp(() {
    mockDataSource = sl<FirestoreDataSource>();
    repository = ContactTypeRepositoryImpl(
      dataSource: mockDataSource,
    );
  });

  group('fetchContactTypesOf', () {
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
    const tContactModel = ContactModel(
      id: "1",
      address: "address",
      html_url: "html_url",
      name: "name",
      telephone: "telephone",
      user_id: "user_id",
    );
    final tContactTypeModel = ContactTypeModel(
      id: "1",
      title: "title",
      categorie_ref: MockDocumentReference(),
      subtitle: "subtitle",
      address: "address",
      img_url: "img_url",
      actions: [tActionModel],
      contact: tContactModel,
    );
    final tListContactTypeModel = [tContactTypeModel];
    const tContact = Contact(
      id: "1",
      address: "address",
      html_url: "html_url",
      name: "name",
      telephone: "telephone",
      user_id: "user_id",
    );
    const tContactType = ContactType(
      id: "1",
      title: "title",
      categorie_ref: "categorie_ref",
      subtitle: "subtitle",
      address: "address",
      img_url: "img_url",
      actions: [tAction],
      contact: tContact,
    );
    const tListContactType = [tContactType];

    const tCategorie = Categorie(
      id: "1",
      action: tAction,
      name: "name",
    );

    test(
      'should return data when the call to data source is successful',
      () async {
        // arrange
        when(mockDataSource.fetchContactTypesOf(any))
            .thenAnswer((_) => Stream.fromIterable([tListContactTypeModel]));
        // act
        final result =
            await repository.fetchContactTypesOf(tCategorie).toList();
        // assert
        verify(mockDataSource.fetchContactTypesOf(tCategorie.id));
        expect(result, equals([tListContactType]));
      },
    );
  });
}
