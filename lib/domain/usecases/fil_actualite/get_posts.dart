import 'package:app_pym/domain/entities/blogger/post.dart';
import 'package:app_pym/domain/repositories/blogger/post_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../core/usecases/usecase.dart';

@prod
@lazySingleton
@injectable
class GetPosts extends Usecase<Future<List<Post>>, NoParams> {
  final PostRepository repository;

  const GetPosts(this.repository);

  @override
  Future<List<Post>> call(NoParams _) {
    return repository.getPosts();
  }
}
