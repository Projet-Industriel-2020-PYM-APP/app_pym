/// Github Remote Data Source
///
/// C'est ici que vous récupérez les données de Github via API REST.

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:app_pym/core/error/exceptions.dart';
import 'package:app_pym/data/models/github/release_model.dart';
import 'package:app_pym/data/models/github/user_model.dart';
import 'package:injectable/injectable.dart';

abstract class GithubRemoteDataSource {
  Future<List<GithubReleaseModel>> fetchReleases(String repo);

  Future<GithubUserModel> fetchUser(String username);
}

@RegisterAs(GithubRemoteDataSource)
@prod
@lazySingleton
@injectable
class GithubRemoteDataSourceImpl implements GithubRemoteDataSource {
  final http.Client client;

  GithubRemoteDataSourceImpl({@required this.client});

  /// [repo] = author/repo
  @override
  Future<List<GithubReleaseModel>> fetchReleases(String repo) async {
    final response =
        await client.get('https://api.github.com/repos/$repo/releases');

    if (response.statusCode == 200) {
      return (json.decode(response.body) as List)
          .map((dynamic data) =>
              GithubReleaseModel.fromJson(data as Map<String, dynamic>))
          .toList();
    } else {
      throw ServerException('Failed to load releases : ${response.statusCode}');
    }
  }

  @override
  Future<GithubUserModel> fetchUser(String username) async {
    final response = await client.get('https://api.github.com/users/$username');

    if (response.statusCode == 200) {
      return GithubUserModel.fromJson(
          json.decode(response.body) as Map<String, dynamic>);
    } else {
      throw ServerException('Failed to load User : ${response.statusCode}');
    }
  }
}
