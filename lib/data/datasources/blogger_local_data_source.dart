import 'package:app_pym/core/error/exceptions.dart';
import 'package:app_pym/data/models/blogger/post_model.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

abstract class BloggerLocalDataSource {
  Future<List<PostModel>> getPosts();
  Future<void> cachePosts(List<PostModel> posts);
}

@RegisterAs(BloggerLocalDataSource)
@prod
@lazySingleton
@injectable
class BloggerLocalDataSourceImpl implements BloggerLocalDataSource {
  final Box<List<PostModel>> box;

  const BloggerLocalDataSourceImpl({@required this.box});

  @override
  Future<List<PostModel>> getPosts() async {
    final posts = box.get('/posts');
    if (posts != null) {
      return posts;
    } else {
      throw CacheException('No Posts in cache');
    }
  }

  @override
  Future<void> cachePosts(List<PostModel> posts) {
    return box.put('/posts', posts);
  }
}
