import 'package:app_pym/core/mappers/mapper.dart';
import 'package:app_pym/data/models/gitlab_user_model.dart';
import 'package:app_pym/domain/entities/gitlab_user.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class GitlabUserMapper implements Mapper<GitlabUser, GitlabUserModel> {
  const GitlabUserMapper();

  @override
  GitlabUserModel mapFrom(GitlabUser entity) {
    return GitlabUserModel(
      name: entity.name,
      id: entity.id,
      username: entity.username,
    );
  }

  @override
  GitlabUser mapTo(GitlabUserModel model) {
    return GitlabUser(
      name: model.name,
      id: model.id,
      username: model.username,
    );
  }
}
