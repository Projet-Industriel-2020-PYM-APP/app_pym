import 'dart:convert';

import 'package:app_pym/core/error/exceptions.dart';
import 'package:app_pym/data/models/blogger/post_model.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

abstract class BloggerRemoteDataSource {
  Future<List<PostModel>> getPosts();
}

@RegisterAs(BloggerRemoteDataSource)
@prod
@lazySingleton
@injectable
class BloggerRemoteDataSourceImpl implements BloggerRemoteDataSource {
  final http.Client client;

  const BloggerRemoteDataSourceImpl({@required this.client});

  @override
  Future<List<PostModel>> getPosts() async {
    final response = await client.get(
        'https://www.googleapis.com/blogger/v3/blogs/2525963384134512130/posts?key=AIzaSyB5t5SS2M1KpIIGEhwYKS7Bdd1pOkO3zcA');

    if (response.statusCode == 200) {
      final body = json.decode(response.body) as Map<String, dynamic>;
      final postsJson =
          List<Map<String, dynamic>>.from(body["items"] as List<dynamic>);

      return postsJson.map((e) => PostModel.fromJson(e)).toList();
    } else {
      throw ServerException('Failed to load Posts : ${response.statusCode}');
    }
  }
}
