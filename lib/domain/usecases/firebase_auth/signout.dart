import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/repositories/firebase_auth/app_user_repository.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class FirebaseAuthSignOut extends Usecase<void, NoParams> {
  final AppUserRepository repository;

  const FirebaseAuthSignOut(this.repository);

  @override
  Future<void> call(NoParams noParams) {
    // No error handling, error will be displayed through BLoC
    return repository.signOut();
  }
}
