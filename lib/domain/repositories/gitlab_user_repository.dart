import 'package:app_pym/domain/entities/gitlab_user.dart';

abstract class GitlabUserRepository {
  Future<GitlabUser> getUser(String username);
}
