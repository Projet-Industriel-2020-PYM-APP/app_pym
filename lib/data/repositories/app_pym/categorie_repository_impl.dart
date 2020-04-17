import 'package:app_pym/data/datasources/firestore_data_source.dart';
import 'package:app_pym/data/models/app_pym/categorie_model.dart';
import 'package:app_pym/domain/entities/app_pym/categorie.dart';
import 'package:app_pym/domain/repositories/app_pym/categorie_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@prod
@RegisterAs(CategorieRepository)
@lazySingleton
@injectable
class CategorieRepositoryImpl implements CategorieRepository {
  final FirestoreDataSource dataSource;

  const CategorieRepositoryImpl({
    @required this.dataSource,
  });

  @override
  Stream<List<Categorie>> fetchServiceCategories() async* {
    yield* dataSource
        .fetchServiceCategories()
        .map((list) => list.map((e) => e.toEntity()).toList());
  }
}
