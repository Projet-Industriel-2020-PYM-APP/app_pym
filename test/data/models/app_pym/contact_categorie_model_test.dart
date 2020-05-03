import 'package:app_pym/data/models/app_pym/action_model.dart';
import 'package:app_pym/data/models/app_pym/contact_categorie_model.dart';
import 'package:app_pym/domain/entities/app_pym/action.dart';
import 'package:app_pym/domain/entities/app_pym/contact_categorie.dart';
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
  const ContactCategorieModel model = ContactCategorieModel(
    address: "address",
    contact_id: 1,
    id: 0,
    img_url: "img_url",
    subtitle: "subtitle",
    title: "title",
    actions: [tActionModel],
  );
  const ContactCategorie entity = ContactCategorie(
    address: "address",
    contact_id: 1,
    id: 0,
    img_url: "img_url",
    subtitle: "subtitle",
    title: "title",
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
