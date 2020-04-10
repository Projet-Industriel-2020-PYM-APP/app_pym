import 'package:app_pym/data/datasources/firestore_data_source.dart';
import 'package:app_pym/data/mappers/app_pym/service_mapper.dart';
import 'package:app_pym/data/models/app_pym/action_model.dart';
import 'package:app_pym/data/models/app_pym/service_model.dart';
import 'package:app_pym/data/repositories/app_pym/service_repository_impl.dart';
import 'package:app_pym/domain/entities/app_pym/action.dart';
import 'package:app_pym/domain/entities/app_pym/categorie.dart';
import 'package:app_pym/domain/entities/app_pym/service.dart';
import 'package:app_pym/injection_container.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' show Environment;
import 'package:mockito/mockito.dart';

void main() {
  ServiceRepositoryImpl repository;
  FirestoreDataSource mockDataSource;
  ServiceMapper mockServiceMapper;

  init(env: Environment.test);

  setUp(() {
    mockDataSource = sl<FirestoreDataSource>();
    mockServiceMapper = sl<ServiceMapper>();
    repository = ServiceRepositoryImpl(
      dataSource: mockDataSource,
      mapper: mockServiceMapper,
    );
  });

  group('fetchServicesOf', () {
    const tActionModel = ActionModel(
      id: "1",
      html_url: "html_url",
      name: "name",
    );
    const tAction = Action(
      id: "1",
      html_url: "html_url",
      name: "name",
    );
    const tServiceModel = ServiceModel(
      id: "1",
      title: "title",
      categorie_id: "categorie_id",
      subtitle: "subtitle",
      address: "address",
      img_url: "img_url",
      actions: [tActionModel],
    );
    const tListServiceModel = [tServiceModel];
    const tService = Service(
      id: "1",
      title: "title",
      categorie_id: "categorie_id",
      subtitle: "subtitle",
      address: "address",
      img_url: "img_url",
      actions: [tAction],
    );
    const tListService = [tService];

    const tCategorie = Categorie(
      id: "1",
      action: tAction,
      name: "name",
    );

    test(
      'should return data when the call to data source is successful',
      () async {
        // arrange
        when(mockDataSource.fetchServicesOf(any))
            .thenAnswer((_) => Stream.fromIterable([tListServiceModel]));
        when(mockServiceMapper.mapTo(tServiceModel)).thenReturn(tService);
        // act
        final result = await repository.fetchServicesOf(tCategorie).toList();
        // assert
        verify(mockDataSource.fetchServicesOf(tCategorie.id));
        expect(result, equals([tListService]));
      },
    );
  });
}
