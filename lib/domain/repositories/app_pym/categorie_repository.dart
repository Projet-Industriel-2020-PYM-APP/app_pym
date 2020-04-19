import 'package:app_pym/domain/entities/app_pym/categorie.dart';

abstract class CategorieRepository {
  Stream<List<Categorie>> fetchCategories();
}
