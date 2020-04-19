import 'package:app_pym/data/models/app_pym/action_model.dart';
import 'package:app_pym/data/models/app_pym/contact_model.dart';
import 'package:app_pym/data/models/app_pym/contact_type_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

// ignore: avoid_implementing_value_types
class MockDocumentReference extends Mock implements DocumentReference {}

class MockDocumentSnapshot extends Mock implements DocumentSnapshot {
  @override
  String get documentID => "1";
}

void main() {
  const tActionModel = ActionModel(
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

  group('fromFirestore', () {
    test(
      'should return a valid model',
      () async {
        // arrange
        final map = MockDocumentSnapshot();
        final doc = MockDocumentReference();
        when(map.data).thenReturn(<String, dynamic>{
          "actions": [
            {
              "id": "1",
              "html_url": "html_url",
              "name": "name",
            }
          ],
          "title": "title",
          "categorie_ref": doc,
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
        // act
        final result = ContactTypeModel.fromFirestore(map);
        // assert
        final tContactTypeModel = ContactTypeModel(
          id: "1",
          title: "title",
          categorie_ref: doc,
          subtitle: "subtitle",
          address: "address",
          img_url: "img_url",
          actions: [tActionModel],
          contact: tContactModel,
        );
        expect(result, tContactTypeModel);
      },
    );
  });
}
