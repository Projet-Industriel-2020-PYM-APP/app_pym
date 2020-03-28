import 'dart:io';

import 'package:app_pym/data/models/mobility/route_model.dart';
import 'package:app_pym/data/models/mobility/trip_model.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:app_pym/core/error/exceptions.dart';
import 'package:app_pym/core/utils/gtfs_utils.dart';

abstract class AppPYMLocalDataSource {
  Future<void> writeFile(Stream<List<int>> bytes);
  Future<List<RouteModel>> fetchRoutes();
  Future<List<TripModel>> fetchTrips();
}

@RegisterAs(AppPYMLocalDataSource)
@prod
@lazySingleton
@injectable
class AppPYMLocalDataSourceImpl implements AppPYMLocalDataSource {
  final Directory directory;

  const AppPYMLocalDataSourceImpl({@required this.directory});

  @override
  Future<void> writeFile(Stream<List<int>> bytes) async {
    final File file = File('${directory}/out.zip');
    final IOSink sink = file.openWrite();
    await bytes.forEach(sink.add);
    await sink.close();

    // TODO Extract files
  }

  @override
  Future<List<RouteModel>> fetchRoutes() async {
    final file = File('$directory/routes.txt');
    if (file.existsSync()) {
      return file.parseRoutes();
    } else {
      throw CacheException('Routes not found.');
    }
  }

  @override
  Future<List<TripModel>> fetchTrips() async {
    final file = File('$directory/test');
    if (file.existsSync()) {
      return file.parseTrips();
    } else {
      throw CacheException('Trips not found.');
    }
  }
}
