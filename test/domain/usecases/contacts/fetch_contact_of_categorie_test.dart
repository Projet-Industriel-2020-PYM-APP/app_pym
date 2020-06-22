import 'package:app_pym/domain/entities/app_pym/contact.dart';
import 'package:app_pym/domain/repositories/app_pym/contact_repository.dart';
import 'package:app_pym/domain/usecases/contacts/fetch_contact_of_categorie.dart';
import 'package:app_pym/injection_container.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' show Environment;
import 'package:mockito/mockito.dart';

void main() {
  FetchContactOfCategorie usecase;
  ContactRepository mockContactRepository;

  init(env: Environment.test);

  setUp(() {
    mockContactRepository = sl<ContactRepository>();
    usecase = FetchContactOfCategorie(mockContactRepository);
  });

  const tContact = Contact(
    id: 0,
    mail: 'mail',
    nom: 'nom',
    prenom: 'prenom',
    telephone: 'telephone',
    idEntreprise: 1,
  );

  test(
    'should get category from the repository',
    () async {
      // arrange
      when(mockContactRepository.fetch(tContact.id))
          .thenAnswer((_) async => tContact);
      // act
      final result = await usecase(tContact.id);
      // assert
      expect(result, tContact);
      verify(mockContactRepository.fetch(tContact.id));
      verifyNoMoreInteractions(mockContactRepository);
    },
  );
}
