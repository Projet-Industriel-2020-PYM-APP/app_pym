import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/firebase_auth/app_user.dart';
import 'package:app_pym/domain/repositories/firebase_auth/app_user_repository.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class SetUserData extends Usecase<Future<void>, AppUser> {
  final AppUserRepository repository;

  const SetUserData(this.repository);

  @override
  Future<void> call(AppUser user) {
    return repository.setUserData(user);
  }
}
