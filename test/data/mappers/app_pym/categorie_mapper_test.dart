import 'package:app_pym/data/mappers/app_pym/action_mapper.dart';
import 'package:app_pym/data/mappers/app_pym/categorie_mapper.dart';
import 'package:app_pym/data/models/app_pym/action_model.dart';
import 'package:app_pym/data/models/app_pym/categorie_model.dart';
import 'package:app_pym/domain/entities/app_pym/action.dart';
import 'package:app_pym/domain/entities/app_pym/categorie.dart';
import 'package:app_pym/injection_container.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' show Environment;
import 'package:mockito/mockito.dart';

void main() {
  ActionMapper mockActionMapper;
  CategorieMapper mapper;

  init(env: Environment.test);

  setUp(() {
    mockActionMapper = sl<ActionMapper>();
    mapper = CategorieMapper(actionMapper: mockActionMapper);
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
  const tCategorieModel = CategorieModel(
    id: "1",
    action: tActionModel,
    name: "name",
  );
  const tCategorie = Categorie(
    id: "1",
    action: tAction,
    name: "name",
  );

  test(
    'mapFrom',
    () async {
      // arrange
      when(mockActionMapper.mapFrom(tAction)).thenReturn(tActionModel);
      // act
      final result = mapper.mapFrom(tCategorie);
      // assert
      expect(result, equals(tCategorieModel));
      verify(mockActionMapper.mapFrom(tAction)).called(1);
    },
  );

  test(
    'mapTo',
    () async {
      // arrange
      when(mockActionMapper.mapTo(tActionModel)).thenReturn(tAction);
      // act
      final result = mapper.mapTo(tCategorieModel);
      // assert
      expect(result, equals(tCategorie));
      verify(mockActionMapper.mapTo(tActionModel)).called(1);
    },
  );
}
