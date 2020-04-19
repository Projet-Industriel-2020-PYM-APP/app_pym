import 'package:app_pym/data/datasources/firestore_data_source.dart';
import 'package:app_pym/data/models/app_pym/action_model.dart';
import 'package:app_pym/data/models/app_pym/categorie_model.dart';
import 'package:app_pym/data/repositories/app_pym/categorie_repository_impl.dart';
import 'package:app_pym/domain/entities/app_pym/action.dart';
import 'package:app_pym/domain/entities/app_pym/categorie.dart';
import 'package:app_pym/domain/entities/app_pym/contact_type.dart';
import 'package:app_pym/domain/entities/app_pym/service.dart';
import 'package:app_pym/domain/repositories/app_pym/categorie_repository.dart';
import 'package:app_pym/injection_container.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' show Environment;
import 'package:mockito/mockito.dart';

void main() {
  CategorieRepository<Service> serviceRepository;
  CategorieRepository<ContactType> contactTypeRepository;
  FirestoreDataSource mockDataSource;

  init(env: Environment.test);

  setUp(() {
    mockDataSource = sl<FirestoreDataSource>();
    serviceRepository = ServiceCategorieRepositoryImpl(
      dataSource: mockDataSource,
    );
    contactTypeRepository = ContactTypeCategorieRepositoryImpl(
      dataSource: mockDataSource,
    );
  });

  group('ServiceCategorieRepositoryImpl', () {
    group('fetchCategories', () {
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

      const tCategorie = Categorie(
        id: "1",
        action: tAction,
        name: "name",
      );
      const tListCategorie = [tCategorie];
      const tCategorieModel = CategorieModel(
        id: "1",
        action: tActionModel,
        name: "name",
      );
      const tListCategorieModel = [tCategorieModel];

      test(
        'should return data when the call to data source is successful',
        () async {
          // arrange
          when(mockDataSource.fetchServiceCategories())
              .thenAnswer((_) => Stream.fromIterable([tListCategorieModel]));
          // act
          final result = await serviceRepository.fetchCategories().toList();
          // assert
          verify(mockDataSource.fetchServiceCategories());
          expect(result, equals([tListCategorie]));
        },
      );
    });
  });

  group('ContactCategorieRepositoryImpl', () {
    group('fetchCategories', () {
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

      const tCategorie = Categorie(
        id: "1",
        action: tAction,
        name: "name",
      );
      const tListCategorie = [tCategorie];
      const tCategorieModel = CategorieModel(
        id: "1",
        action: tActionModel,
        name: "name",
      );
      const tListCategorieModel = [tCategorieModel];

      test(
        'should return data when the call to data source is successful',
        () async {
          // arrange
          when(mockDataSource.fetchContactTypeCategories())
              .thenAnswer((_) => Stream.fromIterable([tListCategorieModel]));
          // act
          final result = await contactTypeRepository.fetchCategories().toList();
          // assert
          verify(mockDataSource.fetchContactTypeCategories());
          expect(result, equals([tListCategorie]));
        },
      );
    });
  });
}
