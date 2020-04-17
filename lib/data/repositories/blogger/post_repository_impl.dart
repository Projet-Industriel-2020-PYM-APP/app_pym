import 'package:app_pym/core/network/network_info.dart';
import 'package:app_pym/data/datasources/blogger_local_data_source.dart';
import 'package:app_pym/data/datasources/blogger_remote_data_source.dart';
import 'package:app_pym/data/models/blogger/post_model.dart';
import 'package:app_pym/domain/entities/blogger/post.dart';
import 'package:app_pym/domain/repositories/blogger/post_repository.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@prod
@RegisterAs(PostRepository)
@lazySingleton
@injectable
class PostRepositoryImpl implements PostRepository {
  final BloggerRemoteDataSource remoteDataSource;
  final BloggerLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  const PostRepositoryImpl({
    @required this.remoteDataSource,
    @required this.localDataSource,
    @required this.networkInfo,
  });

  @override
  Future<List<Post>> getPosts() => _getPosts();

  Future<List<Post>> _getPosts() async {
    if (await networkInfo.result != ConnectivityResult.none) {
      final posts = await remoteDataSource.getPosts();
      await localDataSource.cachePosts(posts);
      return posts.map((e) => e.toEntity()).toList();
    } else {
      final posts = await localDataSource.getPosts();
      return posts.map((e) => e.toEntity()).toList();
    }
  }
}
