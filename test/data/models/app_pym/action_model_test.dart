import 'package:app_pym/data/models/app_pym/action_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const tActionModel = ActionModel(
    id: "1",
    html_url: "html_url",
    name: "name",
  );

  group('fromMap', () {
    test(
      'should return a valid model',
      () async {
        // arrange
        final map = <String, dynamic>{
          "id": "1",
          "html_url": "html_url",
          "name": "name",
        };
        // act
        final result = ActionModel.fromMap(map);
        // assert
        expect(result, tActionModel);
      },
    );
  });
}
