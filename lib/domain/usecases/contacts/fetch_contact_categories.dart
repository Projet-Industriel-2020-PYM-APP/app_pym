import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/app_pym/contact_categorie.dart';
import 'package:app_pym/domain/repositories/app_pym/contact_categorie_repository.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
class FetchContactCategories
    extends Usecase<Future<List<ContactCategorie>>, NoParams> {
  final ContactCategorieRepository repository;

  const FetchContactCategories(this.repository);

  @override
  Future<List<ContactCategorie>> call(NoParams _) {
    return repository.fetchAll();
  }
}
