import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/firebase_auth/app_user.dart';
import 'package:app_pym/domain/repositories/firebase_auth/app_user_repository.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class GetAppUser extends Usecase<AppUser, NoParams> {
  final AppUserRepository repository;

  const GetAppUser(this.repository);

  @override
  AppUser call(NoParams noParams) {
    return repository.profile;
  }
}
