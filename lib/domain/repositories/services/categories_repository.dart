import 'package:app_pym/domain/entities/services/categorie.dart';

abstract class CategoriesRepository {
  Future<List<Categorie>> fetchCategories();
}
