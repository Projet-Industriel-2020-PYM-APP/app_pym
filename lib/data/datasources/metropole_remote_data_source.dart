import 'dart:io';

import 'package:app_pym/core/error/exceptions.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

abstract class MetropoleRemoteDataSource {
  Stream<List<int>> download();

  Future<DateTime> get timestamp;
}

/// [Not used] Remote data source using lepilote
///
/// Couldn't be used during the Covid-19.
@prod
@LazySingleton(as: MetropoleRemoteDataSource)
class MetropoleRemoteDataSourceImpl implements MetropoleRemoteDataSource {
  final http.Client client;

  MetropoleRemoteDataSourceImpl({@required this.client});

  @override
  Stream<List<int>> download() async* {
    // Download file
    final http.Request request = http.Request(
      'GET',
      Uri.parse(
          "http://tsvc.pilote4.cityway.fr/api/Export/v1/GetExportedDataFile?ExportFormat=Gtfs&OperatorCode=CPA"),
    );
    final http.StreamedResponse streamedResponse = await client.send(request);

    if (streamedResponse.statusCode != HttpStatus.ok) {
      throw ServerException(
          'http://tsvc.pilote4.cityway.fr/api/: ${streamedResponse.statusCode} ${streamedResponse.reasonPhrase}');
    }

    yield* streamedResponse.stream;
  }

  @override
  Future<DateTime> get timestamp async {
    // Get zip url
    final http.Request request = http.Request(
      'GET',
      Uri.parse(
          "http://tsvc.pilote4.cityway.fr/api/Export/v1/GetExportedDataFile?ExportFormat=Gtfs&OperatorCode=CPA"),
    );
    final http.StreamedResponse streamedResponse = await client.send(request);

    if (streamedResponse.statusCode != HttpStatus.ok) {
      throw ServerException(
          'http://tsvc.pilote4.cityway.fr/api/: ${streamedResponse.statusCode} ${streamedResponse.reasonPhrase}');
    }

    final contentDisposition = streamedResponse.headers[
        'content-disposition']; // attachment; filename=Gtfs_CPA___2020-05-27.zip

    return DateTime.parse(contentDisposition.substring(32, 42));
  }
}
