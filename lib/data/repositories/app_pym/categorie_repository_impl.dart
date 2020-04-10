import 'package:app_pym/data/datasources/firestore_data_source.dart';
import 'package:app_pym/data/mappers/app_pym/categorie_mapper.dart';
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
  final CategorieMapper mapper;

  const CategorieRepositoryImpl({
    @required this.dataSource,
    @required this.mapper,
  });

  @override
  Stream<List<Categorie>> fetchCategories() async* {
    yield* dataSource
        .fetchCategories()
        .map((list) => list.map(mapper.mapTo).toList());
  }
}
