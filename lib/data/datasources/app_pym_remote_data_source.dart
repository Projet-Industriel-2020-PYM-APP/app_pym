import 'package:app_pym/core/constants/mobility.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

abstract class AppPYMRemoteDataSource {
  Stream<List<int>> download(TransportType type);
}

@RegisterAs(AppPYMRemoteDataSource)
@prod
@lazySingleton
@injectable
class AppPYMRemoteDataSourceImpl implements AppPYMRemoteDataSource {
  final http.Client client;

  AppPYMRemoteDataSourceImpl({@required this.client});

  @override
  Stream<List<int>> download(TransportType type) async* {
    // Download file
    final http.Request request =
        http.Request('GET', Uri.parse('https://url/.zip'));
    final http.StreamedResponse response = await client.send(request);

    yield* response.stream;
  }
}
