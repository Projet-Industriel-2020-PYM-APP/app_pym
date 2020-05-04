import 'dart:ui';

import 'package:app_pym/data/models/app_pym/action_model.dart';
import 'package:app_pym/data/models/app_pym/service_categorie_model.dart';
import 'package:app_pym/domain/entities/app_pym/action.dart';
import 'package:app_pym/domain/entities/app_pym/service_categorie.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const ActionModel tActionModel = ActionModel(
    html_url: "html_url",
    name: "name",
  );
  const Action tAction = Action(
    html_url: "html_url",
    name: "name",
  );
  const ServiceCategorieModel model = ServiceCategorieModel(
    id: 0,
    action: tActionModel,
    img_url: "img_url",
    name: "name",
    primary_color: "#aabbcc",
  );
  const ServiceCategorie entity = ServiceCategorie(
    id: 0,
    action: tAction,
    img_url: "img_url",
    name: "name",
    primary_color: Color(0xffaabbcc),
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
