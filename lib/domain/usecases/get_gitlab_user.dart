import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/gitlab_user.dart';
import 'package:app_pym/domain/repositories/gitlab_user_repository.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class GetGitlabUser extends Usecase<Future<GitlabUser>, String> {
  final GitlabUserRepository repository;

  GetGitlabUser(this.repository);

  @override
  Future<GitlabUser> call(String username) {
    return repository.getUser(username);
  }
}
