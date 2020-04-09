import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/services/service.dart';
import 'package:app_pym/domain/entities/services/categorie.dart';
import 'package:app_pym/domain/repositories/services/services_repository.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class FetchServicesOfCategorie
    extends Usecase<Future<List<Service>>, NoParams> {
  final ServicesRepository repository;
  final Categorie categorie;

  const FetchServicesOfCategorie(this.repository, this.categorie);

  @override
  Future<List<Service>> call(NoParams _) async {
    return repository.fetchServices(categorie);
  }
}
