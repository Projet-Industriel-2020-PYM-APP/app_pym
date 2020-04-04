import 'dart:io';

import 'package:app_pym/core/directory_manager/directory_manager.dart';
import 'package:app_pym/core/error/exceptions.dart';
import 'package:app_pym/core/utils/gtfs_utils.dart';
import 'package:app_pym/data/datasources/gtfs_type_local_data_source.dart';
import 'package:app_pym/data/models/mobility/calendar_model.dart';
import 'package:app_pym/data/models/mobility/route_model.dart';
import 'package:app_pym/data/models/mobility/stop_model.dart';
import 'package:app_pym/data/models/mobility/stop_time_model.dart';
import 'package:app_pym/data/models/mobility/trip_model.dart';
import 'package:archive/archive.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

abstract class MetropoleLocalDataSource extends GTFSTypeLocalDataSource {}

@RegisterAs(MetropoleLocalDataSource)
@prod
@lazySingleton
@injectable
class MetropoleLocalDataSourceImpl implements MetropoleLocalDataSource {
  final DirectoryManager directoryManager;
  final ZipDecoder zipDecoder;

  const MetropoleLocalDataSourceImpl({
    @required this.directoryManager,
    @required this.zipDecoder,
  });

  @override
  Future<List<CalendarModel>> fetchCalendars() async {
    final file = File('${directoryManager.metropole}/calendars.txt');
    if (file.existsSync()) {
      return file.parseCalendars();
    } else {
      throw CacheException('Calendars not found.');
    }
  }

  @override
  Future<List<RouteModel>> fetchRoutes() async {
    final file = File('${directoryManager.metropole}/routes.txt');
    if (file.existsSync()) {
      return file.parseRoutes();
    } else {
      throw CacheException('Routes not found.');
    }
  }

  @override
  Future<List<StopModel>> fetchStops() async {
    final file = File('${directoryManager.metropole}/stops.txt');
    if (file.existsSync()) {
      return file.parseStops();
    } else {
      throw CacheException('Stops not found.');
    }
  }

  @override
  Future<List<StopTimeModel>> fetchStopTimes() async {
    final file = File('${directoryManager.metropole}/stop_times.txt');
    if (file.existsSync()) {
      return file.parseStopTimes();
    } else {
      throw CacheException('StopTimes not found.');
    }
  }

  @override
  Future<List<TripModel>> fetchTrips() async {
    final file = File('${directoryManager.metropole}/trips.txt');
    if (file.existsSync()) {
      return file.parseTrips();
    } else {
      throw CacheException('Trips not found.');
    }
  }

  @override
  Future<void> writeFile(Stream<List<int>> bytes) async {
    final File file =
        File('${directoryManager.metropole}/export-ter-gtfs-last.zip');
    final IOSink sink = file.openWrite();
    await bytes.forEach(sink.add);
    await sink.close();
    return _unzip(file);
  }

  Future<void> _unzip(File file) {
    // Decode the Zip file
    final Archive archive = zipDecoder.decodeBytes(file.readAsBytesSync());

    final List<Future<void>> futures = <Future<void>>[];

    // Extract the contents of the Zip archive to disk.
    for (final ArchiveFile file in archive) {
      if (file.isFile) {
        final List<int> data = file.content as List<int>;
        final openFile = File('${directoryManager.metropole}/' + file.name)
          ..createSync(recursive: true);
        futures.add(openFile.writeAsBytes(data));
      }
    }

    return Future.wait<void>(futures);
  }
}
