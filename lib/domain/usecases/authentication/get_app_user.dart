import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/authentication/app_user.dart';
import 'package:app_pym/domain/repositories/authentication/app_user_repository.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
class GetAppUser extends Usecase<Future<AppUser>, NoParams> {
  final AppUserRepository repository;

  const GetAppUser(this.repository);

  @override
  Future<AppUser> call(NoParams noParams) {
    return repository.fetch();
  }
}
