import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/app_pym/action.dart';
import 'package:app_pym/domain/entities/app_pym/categorie.dart';
import 'package:app_pym/domain/repositories/app_pym/categorie_repository.dart';
import 'package:app_pym/domain/usecases/services/fetch_categories.dart';
import 'package:app_pym/injection_container.dart';
import 'package:injectable/injectable.dart' show Environment;
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  FetchCategories usecase;
  CategorieRepository mockCategorieRepository;

  init(env: Environment.test);

  setUp(() {
    mockCategorieRepository = sl<CategorieRepository>();
    usecase = FetchCategories(mockCategorieRepository);
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

  test(
    'should get category from the repository',
    () async {
      // arrange
      when(mockCategorieRepository.fetchCategories())
          .thenAnswer((_) => Stream.fromIterable([
                [tCategorie]
              ]));
      // act
      final result = await usecase(const NoParams()).toList();
      // assert
      expect(result, [
        [tCategorie]
      ]);
      verify(mockCategorieRepository.fetchCategories());
      verifyNoMoreInteractions(mockCategorieRepository);
    },
  );
}
