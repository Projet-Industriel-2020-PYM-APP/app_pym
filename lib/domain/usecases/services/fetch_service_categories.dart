import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/app_pym/service_categorie.dart';
import 'package:app_pym/domain/repositories/app_pym/service_categorie_repository.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
class FetchServiceCategories
    extends Usecase<Future<List<ServiceCategorie>>, NoParams> {
  final ServiceCategorieRepository repository;

  const FetchServiceCategories(this.repository);

  @override
  Future<List<ServiceCategorie>> call(NoParams _) {
    return repository.fetchAll();
  }
}
