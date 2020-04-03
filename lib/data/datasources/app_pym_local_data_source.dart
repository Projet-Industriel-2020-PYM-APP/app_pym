import 'dart:io';
import 'package:archive/archive.dart';
import 'package:app_pym/data/models/mobility/calendar_model.dart';
import 'package:app_pym/data/models/mobility/route_model.dart';
import 'package:app_pym/data/models/mobility/stop_model.dart';
import 'package:app_pym/data/models/mobility/stop_time_model.dart';
import 'package:app_pym/data/models/mobility/trip_model.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:app_pym/core/error/exceptions.dart';
import 'package:app_pym/core/utils/gtfs_utils.dart';

abstract class AppPYMLocalDataSource {
  Future<void> writeFile(Stream<List<int>> bytes);
  Future<List<RouteModel>> fetchRoutes();
  Future<List<TripModel>> fetchTrips();
  Future<List<CalendarModel>> fetchCalendars();
  Future<List<StopModel>> fetchStops();
  Future<List<StopTimeModel>> fetchStopTimes();
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

    // Decode the Zip file
    final Archive archive =
        ZipDecoder().decodeBytes((await file.openRead().toList())[0]);

    // Extract the contents of the Zip archive to disk.
    for (final ArchiveFile file in archive) {
      final String filename = file.name;
      if (file.isFile) {
        final List<int> data = file.content as List<int>;
        File('${directory}/out/' + filename)
          ..createSync(recursive: true)
          ..writeAsBytesSync(data);
      } else {
        Directory('${directory}/out/' + filename)..create(recursive: true);
      }
    }
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

  @override
  Future<List<CalendarModel>> fetchCalendars() async {
    final file = File('$directory/test');
    if (file.existsSync()) {
      return file.parseCalendars();
    } else {
      throw CacheException('Calendars not found.');
    }
  }

  @override
  Future<List<StopModel>> fetchStops() async {
    final file = File('$directory/test');
    if (file.existsSync()) {
      return file.parseStops();
    } else {
      throw CacheException('Stops not found.');
    }
  }

  @override
  Future<List<StopTimeModel>> fetchStopTimes() async {
    final file = File('$directory/test');
    if (file.existsSync()) {
      return file.parseStopTimes();
    } else {
      throw CacheException('StopTimes not found.');
    }
  }
}
