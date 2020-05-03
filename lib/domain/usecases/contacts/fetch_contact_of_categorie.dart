import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/app_pym/contact.dart';
import 'package:app_pym/domain/repositories/app_pym/contact_repository.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class FetchContactOfCategorie extends Usecase<Future<Contact>, int> {
  final ContactRepository repository;

  const FetchContactOfCategorie(this.repository);

  @override
  Future<Contact> call(int id) {
    return repository.fetch(id);
  }
}
