import 'dart:convert';

import 'package:app_pym/data/models/mobility/bus_model.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:app_pym/core/error/exceptions.dart';

abstract class AppPYMLocalDataSource {
  Future<void> cacheBus(List<BusModel> busToCache, String repo);
  Future<List<BusModel>> fetchLastBus(String repo);
}

@RegisterAs(AppPYMLocalDataSource)
@prod
@lazySingleton
@injectable
class AppPYMLocalDataSourceImpl implements AppPYMLocalDataSource {
  final Box<String> box;

  AppPYMLocalDataSourceImpl({@required this.box});

  @override
  Future<void> cacheBus(List<BusModel> busToCache, String repo) {
    return box.put(
      repo,
      json.encode(
          busToCache.map((BusModel release) => release.toJson()).toList()),
    );
  }

  @override
  Future<List<BusModel>> fetchLastBus(String repo) async {
    final jsonString = box.get(repo);
    if (jsonString != null) {
      return List<Map<String, dynamic>>.from(
              json.decode(jsonString) as List<dynamic>)
          .map((Map<String, dynamic> data) => BusModel.fromJson(data))
          .toList();
    } else {
      throw CacheException();
    }
  }
}
