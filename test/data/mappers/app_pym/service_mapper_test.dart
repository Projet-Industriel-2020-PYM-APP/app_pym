import 'package:app_pym/data/mappers/app_pym/action_mapper.dart';
import 'package:app_pym/data/mappers/app_pym/service_mapper.dart';
import 'package:app_pym/data/models/app_pym/action_model.dart';
import 'package:app_pym/data/models/app_pym/service_model.dart';
import 'package:app_pym/domain/entities/app_pym/action.dart';
import 'package:app_pym/domain/entities/app_pym/service.dart';
import 'package:app_pym/injection_container.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' show Environment;
import 'package:mockito/mockito.dart';

void main() {
  ActionMapper mockActionMapper;
  ServiceMapper mapper;

  init(env: Environment.test);

  setUp(() {
    mockActionMapper = sl<ActionMapper>();
    mapper = ServiceMapper(actionMapper: mockActionMapper);
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
  const tServiceModel = ServiceModel(
    id: "1",
    title: "title",
    categorie_id: "categorie_id",
    subtitle: "subtitle",
    address: "address",
    img_url: "img_url",
    actions: [tActionModel],
  );
  const tService = Service(
    id: "1",
    title: "title",
    categorie_id: "categorie_id",
    subtitle: "subtitle",
    address: "address",
    img_url: "img_url",
    actions: [tAction],
  );

  test(
    'mapFrom',
    () async {
      // arrange
      when(mockActionMapper.mapFrom(tAction)).thenReturn(tActionModel);
      // act
      final result = mapper.mapFrom(tService);
      // assert
      expect(result, equals(tServiceModel));
      verify(mockActionMapper.mapFrom(tAction)).called(1);
    },
  );

  test(
    'mapTo',
    () async {
      // arrange
      when(mockActionMapper.mapTo(tActionModel)).thenReturn(tAction);
      // act
      final result = mapper.mapTo(tServiceModel);
      // assert
      expect(result, equals(tService));
      verify(mockActionMapper.mapTo(tActionModel)).called(1);
    },
  );
}
