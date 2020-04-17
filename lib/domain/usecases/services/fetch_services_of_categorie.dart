import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/app_pym/categorie.dart';
import 'package:app_pym/domain/entities/app_pym/service.dart';
import 'package:app_pym/domain/repositories/app_pym/service_repository.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class FetchServicesOfCategorie
    extends Usecase<Stream<List<Service>>, Categorie> {
  final ServiceRepository repository;
  const FetchServicesOfCategorie(this.repository);

  @override
  Stream<List<Service>> call(Categorie categorie) {
    return repository.fetchServicesOf(categorie);
  }
}
