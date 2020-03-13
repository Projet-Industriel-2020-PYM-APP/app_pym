/// Gitlab Remote Data Source
///
/// C'est ici que vous récupérez les données de Gitlab via API REST.

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:app_pym/data/models/gitlab_user_model.dart';
import 'package:http/http.dart' as http;
import 'package:app_pym/core/error/exceptions.dart';
import 'package:injectable/injectable.dart';

abstract class GitlabRemoteDataSource {
  Future<GitlabUserModel> fetchUser(String username);
}

@RegisterAs(GitlabRemoteDataSource)
@prod
@lazySingleton
@injectable
class GitlabRemoteDataSourceImpl implements GitlabRemoteDataSource {
  final http.Client client;

  GitlabRemoteDataSourceImpl({@required this.client});

  @override
  Future<GitlabUserModel> fetchUser(String username) async {
    final response =
        await client.get('https://gitlab.com/api/v4/users?username=$username');

    if (response.statusCode == 200) {
      return GitlabUserModel.fromJson(
          json.decode(response.body).first as Map<String, dynamic>);
    } else {
      throw ServerException('Failed to load User : ${response.statusCode}');
    }
  }
}
