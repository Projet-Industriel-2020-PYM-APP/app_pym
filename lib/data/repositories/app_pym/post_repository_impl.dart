import 'package:app_pym/core/network/network_info.dart';
import 'package:app_pym/data/datasources/map_pym_local_data_source.dart';
import 'package:app_pym/data/datasources/map_pym_remote_data_source.dart';
import 'package:app_pym/data/models/app_pym/post_model.dart';
import 'package:app_pym/domain/entities/app_pym/post.dart';
import 'package:app_pym/domain/repositories/app_pym/post_repository.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@prod
@LazySingleton(as: PostRepository)
class PostRepositoryImpl implements PostRepository {
  final MapPymRemoteDataSource remoteDataSource;
  final MapPymLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  const PostRepositoryImpl({
    @required this.remoteDataSource,
    @required this.localDataSource,
    @required this.networkInfo,
  });

  @override
  Future<List<Post>> fetchAll() => _fetchAll();

  Future<List<Post>> _fetchAll() async {
    if (await networkInfo.result != ConnectivityResult.none) {
      final posts = await remoteDataSource.fetchAllPosts() ?? [];
      await localDataSource.cacheAllPosts(posts);
      return posts.map((e) => e?.toEntity()).toList();
    } else {
      final posts = localDataSource.fetchAllPosts() ?? [];
      return posts.map((e) => e?.toEntity()).toList();
    }
  }
}
