import 'package:app_pym/domain/entities/app_pym/action.dart';
import 'package:app_pym/domain/entities/app_pym/categorie.dart';
import 'package:app_pym/domain/entities/app_pym/contact.dart';
import 'package:app_pym/domain/entities/app_pym/contact_type.dart';
import 'package:app_pym/domain/repositories/app_pym/contact_type_repository.dart';
import 'package:app_pym/domain/usecases/contacts/fetch_contact_types_of_categorie.dart';
import 'package:app_pym/injection_container.dart';
import 'package:injectable/injectable.dart' show Environment;
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  FetchContactTypesOfCategorie usecase;
  ContactTypeRepository mockContactTypeRepository;

  init(env: Environment.test);

  setUp(() {
    mockContactTypeRepository = sl<ContactTypeRepository>();
    usecase = FetchContactTypesOfCategorie(mockContactTypeRepository);
  });

  const tAction = Action(
    id: "1",
    html_url: "html_url",
    name: "name",
  );
  const tCategorie = Categorie(
    id: "1",
    action: tAction,
    name: "name",
  );
  const tAction2 = Action(
    id: "1",
    html_url: "html_url",
    name: "name",
  );
  const tContact = Contact(
    id: "1",
    address: "address",
    html_url: "html_url",
    name: "name",
    telephone: "telephone",
    user_id: "user_id",
  );
  const tContactType = ContactType(
    id: "1",
    title: "title",
    categorie_ref: "1",
    subtitle: "subtitle",
    address: "address",
    img_url: "img_url",
    actions: [tAction2],
    contact: tContact,
  );

  test(
    'should get category from the repository',
    () async {
      // arrange
      when(mockContactTypeRepository.fetchContactTypesOf(any))
          .thenAnswer((_) => Stream.fromIterable([
                [tContactType]
              ]));
      // act
      final result = await usecase(tCategorie).toList();
      // assert
      expect(result, [
        [tContactType]
      ]);
      verify(mockContactTypeRepository.fetchContactTypesOf(tCategorie));
      verifyNoMoreInteractions(mockContactTypeRepository);
    },
  );
}
