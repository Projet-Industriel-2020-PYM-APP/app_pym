import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

abstract class MetropoleRemoteDataSource {
  Stream<List<int>> download();

  Future<DateTime> get timestamp;
}

@prod
@LazySingleton(as: MetropoleRemoteDataSource)
class MetropoleRemoteDataSourceImpl implements MetropoleRemoteDataSource {
  final http.Client client;

  MetropoleRemoteDataSourceImpl({@required this.client});

  @override
  Stream<List<int>> download() async* {
    // Download file
    final http.Request request = http.Request('GET',
        Uri.parse('https://url/.zip')); // TODO: Waiting for Metropole Acess
    final http.StreamedResponse response = await client.send(request);

    yield* response.stream;
  }

  @override
  Future<DateTime> get timestamp async {
    //TODO implement
    return DateTime.parse("2020-04-03T08:38:30.405000+00:00");
  }
}
