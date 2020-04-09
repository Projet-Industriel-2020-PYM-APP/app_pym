import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/services/service.dart';
import 'package:app_pym/domain/entities/services/categorie.dart';
import 'package:app_pym/domain/repositories/services/categories_repository.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class FetchCategories extends Usecase<Future<List<Categorie>>, NoParams> {
  final CategoriesRepository repository;

  const FetchCategories(this.repository);

  @override
  Future<List<Categorie>> call(NoParams _) async {
    return repository.fetchCategories();
  }
}
