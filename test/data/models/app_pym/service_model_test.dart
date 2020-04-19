import 'package:app_pym/data/models/app_pym/action_model.dart';
import 'package:app_pym/data/models/app_pym/service_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockDocumentSnapshot extends Mock implements DocumentSnapshot {
  @override
  Map<String, dynamic> get data => <String, dynamic>{
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
      };

  @override
  String get documentID => "1";
}

void main() {
  const tActionModel = ActionModel(
    id: "1",
    html_url: "html_url",
    name: "name",
  );
  const tServiceModel = ServiceModel(
    id: "1",
    title: "title",
    categorie_id: "categorie_id",
    subtitle: "subtitle",
    address: "address",
    img_url: "img_url",
    actions: [tActionModel],
  );

  group('fromFirestore', () {
    test(
      'should return a valid model',
      () async {
        // arrange
        final map = MockDocumentSnapshot();
        // act
        final result = ServiceModel.fromFirestore(map);
        // assert
        expect(result, tServiceModel);
      },
    );
  });
}
