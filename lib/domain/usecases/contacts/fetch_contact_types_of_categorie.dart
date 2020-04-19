import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/app_pym/categorie.dart';
import 'package:app_pym/domain/entities/app_pym/contact_type.dart';
import 'package:app_pym/domain/repositories/app_pym/contact_type_repository.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class FetchContactTypesOfCategorie
    extends Usecase<Stream<List<ContactType>>, Categorie> {
  final ContactTypeRepository repository;
  const FetchContactTypesOfCategorie(this.repository);

  @override
  Stream<List<ContactType>> call(Categorie categorie) {
    return repository.fetchContactTypesOf(categorie);
  }
}
