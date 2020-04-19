import 'package:app_pym/domain/entities/app_pym/categorie.dart';

abstract class CategorieRepository<T> {
  Stream<List<Categorie>> fetchCategories();
}
