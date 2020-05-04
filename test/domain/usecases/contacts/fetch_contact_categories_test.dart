import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/app_pym/action.dart';
import 'package:app_pym/domain/entities/app_pym/contact_categorie.dart';
import 'package:app_pym/domain/repositories/app_pym/contact_categorie_repository.dart';
import 'package:app_pym/domain/usecases/contacts/fetch_contact_categories.dart';
import 'package:app_pym/injection_container.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' show Environment;
import 'package:mockito/mockito.dart';

void main() {
  FetchContactCategories usecase;
  ContactCategorieRepository mockContactCategorieRepository;

  init(env: Environment.test);

  setUp(() {
    mockContactCategorieRepository = sl<ContactCategorieRepository>();
    usecase = FetchContactCategories(mockContactCategorieRepository);
  });

  const tAction = Action(
    html_url: "html_url",
    name: "name",
  );
  const tContactCategorie = ContactCategorie(
    id: 0,
    title: "title",
    subtitle: "subtitle",
    address: "address",
    img_url: "img_url",
    actions: [tAction],
    contact_id: 1,
  );

  test(
    'should get category from the repository',
    () async {
      // arrange
      when(mockContactCategorieRepository.fetchAll())
          .thenAnswer((_) async => [tContactCategorie]);
      // act
      final result = await usecase(const NoParams());
      // assert
      expect(result, [tContactCategorie]);
      verify(mockContactCategorieRepository.fetchAll());
      verifyNoMoreInteractions(mockContactCategorieRepository);
    },
  );
}
