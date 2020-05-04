import 'package:app_pym/data/models/app_pym/action_model.dart';
import 'package:app_pym/domain/entities/app_pym/action.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const ActionModel model = ActionModel(
    html_url: "html_url",
    name: "name",
  );
  const Action entity = Action(
    html_url: "html_url",
    name: "name",
  );
  group('toEntity', () {
    test(
      'should return a valid entity',
      () async {
        // act
        final result = model.toEntity();
        // assert
        expect(result, equals(entity));
      },
    );
  });
}
