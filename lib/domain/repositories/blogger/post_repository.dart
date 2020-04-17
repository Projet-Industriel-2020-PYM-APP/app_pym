import 'package:app_pym/domain/entities/blogger/post.dart';

abstract class PostRepository {
  Future<List<Post>> getPosts();
}
