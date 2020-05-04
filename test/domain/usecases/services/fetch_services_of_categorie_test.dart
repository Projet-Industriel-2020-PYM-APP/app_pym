import 'dart:ui';

import 'package:app_pym/domain/entities/app_pym/action.dart';
import 'package:app_pym/domain/entities/app_pym/service.dart';
import 'package:app_pym/domain/entities/app_pym/service_categorie.dart';
import 'package:app_pym/domain/repositories/app_pym/service_repository.dart';
import 'package:app_pym/domain/usecases/services/fetch_services_of_categorie.dart';
import 'package:app_pym/injection_container.dart';
import 'package:injectable/injectable.dart' show Environment;
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  FetchServicesOfCategorie usecase;
  ServiceRepository mockServiceRepository;

  init(env: Environment.test);

  setUp(() {
    mockServiceRepository = sl<ServiceRepository>();
    usecase = FetchServicesOfCategorie(mockServiceRepository);
  });

  const tAction = Action(
    html_url: "html_url",
    name: "name",
  );
  const tCategorie = ServiceCategorie(
      id: 0,
      action: tAction,
      name: "name",
      img_url: "img_url",
      primary_color: Color(0xffffffff));
  const tAction2 = Action(
    html_url: "html_url",
    name: "name",
  );
  const tService = Service(
    id: 1,
    title: "title",
    categorie_id: 1,
    subtitle: "subtitle",
    address: "address",
    img_url: "img_url",
    actions: [tAction2],
  );

  test(
    'should get category from the repository',
    () async {
      // arrange
      when(mockServiceRepository.fetchServicesOf(any))
          .thenAnswer((_) async => [tService]);
      // act
      final result = await usecase(tCategorie);
      // assert
      expect(result, [tService]);
      verify(mockServiceRepository.fetchServicesOf(tCategorie.id));
      verifyNoMoreInteractions(mockServiceRepository);
    },
  );
}
