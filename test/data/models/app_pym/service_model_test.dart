import 'package:app_pym/data/models/app_pym/action_model.dart';
import 'package:app_pym/data/models/app_pym/service_model.dart';
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

  group('fromFirestore', () {
    test(
      'should return a valid model',
      () async {
        // arrange
        final snap = MockDocumentSnapshot();
        final doc = MockDocumentReference();
        when(snap.data).thenReturn(<String, dynamic>{
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
        });
        // act
        final result = ServiceModel.fromFirestore(snap);
        // assert
        final tServiceModel = ServiceModel(
          id: "1",
          title: "title",
          categorie_ref: doc,
          subtitle: "subtitle",
          address: "address",
          img_url: "img_url",
          actions: [tActionModel],
        );
        expect(result, tServiceModel);
      },
    );
  });
}
