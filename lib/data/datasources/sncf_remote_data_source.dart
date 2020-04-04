import 'dart:convert';
import 'dart:io';

import 'package:app_pym/core/error/exceptions.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

abstract class SNCFRemoteDataSource {
  Stream<List<int>> download();

  Future<DateTime> get timestamp;
}

@RegisterAs(SNCFRemoteDataSource)
@prod
@lazySingleton
@injectable
class SNCFRemoteDataSourceImpl implements SNCFRemoteDataSource {
  final http.Client client;

  SNCFRemoteDataSourceImpl({@required this.client});

  @override
  Stream<List<int>> download() async* {
    // Get zip url
    final response = await client.get(
        'https://ressources.data.sncf.com/api/records/1.0/search/?dataset=sncf-ter-gtfs');
    if (response.statusCode != HttpStatus.ok) {
      throw ServerException(
          'https://ressources.data.sncf.com/api/: ${response.statusCode}');
    }
    final body = json.decode(response.body) as Map<String, dynamic>;
    final id = body['records'].first["fields"]['download']['id'] as String;

    // Download file
    final http.Request request = http.Request(
      'GET',
      Uri.parse(
          "https://ressources.data.sncf.com/explore/dataset/sncf-ter-gtfs/files/$id/download/"),
    );
    final http.StreamedResponse streamedResponse = await client.send(request);

    if (streamedResponse.statusCode != HttpStatus.ok) {
      throw ServerException(
          'https://ressources.data.sncf.com/explore/: ${response.statusCode}');
    }

    yield* streamedResponse.stream;
  }

  @override
  Future<DateTime> get timestamp async {
    // Get zip url
    final response = await client.get(
        'https://ressources.data.sncf.com/api/records/1.0/search/?dataset=sncf-ter-gtfs');
    if (response.statusCode != HttpStatus.ok) {
      throw ServerException(
          'https://ressources.data.sncf.com/api/: ${response.statusCode}');
    }
    final body = json.decode(response.body) as Map<String, dynamic>;
    return DateTime.parse(body['records'].first["record_timestamp"] as String);
  }
}
