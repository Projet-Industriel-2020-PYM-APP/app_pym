import 'dart:convert';
import 'package:app_pym/data/models/mobility/bus_model.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'package:app_pym/core/error/exceptions.dart';

abstract class AppPYMRemoteDataSource {
  Future<List<BusModel>> fetchBus(int direction);
}

@RegisterAs(AppPYMRemoteDataSource)
@prod
@lazySingleton
@injectable
class AppPYMRemoteDataSourceImpl implements AppPYMRemoteDataSource {
  final http.Client client;

  AppPYMRemoteDataSourceImpl({@required this.client});

  @override
  Future<List<BusModel>> fetchBus(int direction) async {
    final response = await client.get('');

    if (response.statusCode == 200) {
      return List<Map<String, dynamic>>.from(
              json.decode(response.body) as List<dynamic>)
          .map((Map<String, dynamic> data) => BusModel.fromJson(data))
          .toList();
    } else {
      throw ServerException('Failed to load bus : ${response.statusCode}');
    }
  }
}
