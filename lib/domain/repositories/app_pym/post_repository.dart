import 'package:app_pym/domain/entities/app_pym/post.dart';

abstract class PostRepository {
  Future<List<Post>> fetchAll();
}
