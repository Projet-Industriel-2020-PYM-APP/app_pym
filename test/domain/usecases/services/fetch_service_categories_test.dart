import 'dart:ui';

import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/app_pym/action.dart';
import 'package:app_pym/domain/entities/app_pym/service_categorie.dart';
import 'package:app_pym/domain/repositories/app_pym/service_categorie_repository.dart';
import 'package:app_pym/domain/usecases/services/fetch_service_categories.dart';
import 'package:app_pym/injection_container.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' show Environment;
import 'package:mockito/mockito.dart';

void main() {
  FetchServiceCategories usecase;
  ServiceCategorieRepository mockServiceCategorieRepository;

  init(env: Environment.test);

  setUp(() {
    mockServiceCategorieRepository = sl<ServiceCategorieRepository>();
    usecase = FetchServiceCategories(mockServiceCategorieRepository);
  });

  const tAction = Action(
    html_url: "html_url",
    name: "name",
  );
  const tServiceCategorie = ServiceCategorie(
      id: 0,
      action: tAction,
      name: "name",
      img_url: "img_url",
      primary_color: Color(0xffffffff));

  test(
    'should get category from the repository',
    () async {
      // arrange
      when(mockServiceCategorieRepository.fetchAll())
          .thenAnswer((_) async => [tServiceCategorie]);
      // act
      final result = await usecase(const NoParams());
      // assert
      expect(result, [tServiceCategorie]);
      verify(mockServiceCategorieRepository.fetchAll());
      verifyNoMoreInteractions(mockServiceCategorieRepository);
    },
  );
}
