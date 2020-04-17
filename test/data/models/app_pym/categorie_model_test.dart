import 'package:app_pym/data/models/app_pym/action_model.dart';
import 'package:app_pym/data/models/app_pym/categorie_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockDocumentSnapshot extends Mock implements DocumentSnapshot {
  @override
  Map<String, dynamic> get data => <String, dynamic>{
        "action": {
          "id": "1",
          "html_url": "html_url",
          "name": "name",
        },
        "name": "name",
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
  const tCategorieModel = CategorieModel(
    id: "1",
    action: tActionModel,
    name: "name",
  );

  group('fromFirestore', () {
    test(
      'should return a valid model',
      () async {
        // arrange
        final map = MockDocumentSnapshot();
        // act
        final result = CategorieModel.fromFirestore(map);
        // assert
        expect(result, tCategorieModel);
      },
    );
  });
}
