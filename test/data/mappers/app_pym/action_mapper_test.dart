import 'package:app_pym/data/mappers/app_pym/action_mapper.dart';
import 'package:app_pym/data/models/app_pym/action_model.dart';
import 'package:app_pym/domain/entities/app_pym/action.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  ActionMapper mapper;

  setUp(() {
    mapper = const ActionMapper();
  });

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

  test(
    'mapFrom',
    () async {
      // act
      final result = mapper.mapFrom(tAction);
      // assert
      expect(result, equals(tActionModel));
    },
  );

  test(
    'mapTo',
    () async {
      // act
      final result = mapper.mapTo(tActionModel);
      // assert
      expect(result, equals(tAction));
    },
  );
}
