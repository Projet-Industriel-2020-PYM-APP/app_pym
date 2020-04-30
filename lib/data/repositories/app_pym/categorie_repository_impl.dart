import 'package:app_pym/data/datasources/firestore_data_source.dart';
import 'package:app_pym/data/models/app_pym/categorie_model.dart';
import 'package:app_pym/domain/entities/app_pym/categorie.dart';
import 'package:app_pym/domain/entities/app_pym/contact_type.dart';
import 'package:app_pym/domain/entities/app_pym/service.dart';
import 'package:app_pym/domain/repositories/app_pym/categorie_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@prod
@RegisterAs(CategorieRepository)
@lazySingleton
@injectable
class ServiceCategorieRepositoryImpl implements CategorieRepository<Service> {
  final FirestoreDataSource dataSource;

  const ServiceCategorieRepositoryImpl({
    @required this.dataSource,
  });

  @override
  Stream<List<Categorie>> fetchCategories() async* {
    yield* dataSource
        .fetchServiceCategories()
        .map((list) => list.map((e) => e.toEntity()).toList());
  }
}

@prod
@RegisterAs(CategorieRepository)
@lazySingleton
@injectable
class ContactTypeCategorieRepositoryImpl
    implements CategorieRepository<ContactType> {
  final FirestoreDataSource dataSource;

  const ContactTypeCategorieRepositoryImpl({
    @required this.dataSource,
  });

  @override
  Stream<List<Categorie>> fetchCategories() async* {
    yield* dataSource
        .fetchContactTypeCategories()
        .map((list) => list.map((e) => e.toEntity()).toList());
  }
}
