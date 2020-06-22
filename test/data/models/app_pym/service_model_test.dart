import 'package:app_pym/data/models/app_pym/action_model.dart';
import 'package:app_pym/data/models/app_pym/service_model.dart';
import 'package:app_pym/domain/entities/app_pym/action.dart';
import 'package:app_pym/domain/entities/app_pym/service.dart';
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
  const ServiceModel model = ServiceModel(
    id: 0,
    title: "title",
    subtitle: "subtitle",
    img_url: "img_url",
    categorie_id: 1,
    address: "address",
    telephone: 'telephone',
    website: 'website',
    actions: [tActionModel],
  );
  const Service entity = Service(
    id: 0,
    title: "title",
    subtitle: "subtitle",
    img_url: "img_url",
    categorie_id: 1,
    address: "address",
    telephone: 'telephone',
    website: 'website',
    actions: [tAction],
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
