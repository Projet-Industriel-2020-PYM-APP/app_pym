import 'package:app_pym/domain/entities/app_pym/post.dart';
import 'package:app_pym/domain/repositories/app_pym/post_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../core/usecases/usecase.dart';

@prod
@lazySingleton
@injectable
class GetPosts extends Usecase<Future<List<Post>>, NoParams> {
  final PostRepository repository;

  const GetPosts(this.repository);

  @override
  Future<List<Post>> call(NoParams _) async {
    final posts = await repository.fetchAll();
    posts.sort((a, b) => -a.published.compareTo(b.published));
    return posts;
  }
}
