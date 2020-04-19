import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/app_pym/categorie.dart';
import 'package:app_pym/domain/entities/app_pym/service.dart';
import 'package:app_pym/domain/repositories/app_pym/categorie_repository.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class FetchServiceCategories
    extends Usecase<Stream<List<Categorie>>, NoParams> {
  final CategorieRepository<Service> repository;

  const FetchServiceCategories(this.repository);

  @override
  Stream<List<Categorie>> call(NoParams _) {
    return repository.fetchCategories();
  }
}
