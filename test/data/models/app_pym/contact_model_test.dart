import 'package:app_pym/data/models/app_pym/contact_model.dart';
import 'package:app_pym/domain/entities/app_pym/contact.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const ContactModel model = ContactModel(
    id: 0,
    mail: "mail",
    nom: "nom",
    prenom: "prenom",
    telephone: "telephone",
    idEntreprise: 1,
  );
  const Contact entity = Contact(
    id: 0,
    mail: "mail",
    nom: "nom",
    prenom: "prenom",
    telephone: "telephone",
    idEntreprise: 1,
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
