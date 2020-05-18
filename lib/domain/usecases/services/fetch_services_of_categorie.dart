import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/app_pym/service.dart';
import 'package:app_pym/domain/entities/app_pym/service_categorie.dart';
import 'package:app_pym/domain/repositories/app_pym/service_repository.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
class FetchServicesOfCategorie
    extends Usecase<Future<List<Service>>, ServiceCategorie> {
  final ServiceRepository repository;
  const FetchServicesOfCategorie(this.repository);

  @override
  Future<List<Service>> call(ServiceCategorie categorie) {
    return repository.fetchServicesOf(categorie.id);
  }
}
