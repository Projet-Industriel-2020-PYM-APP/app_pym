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

abstract class SNCFLocalDataSource extends GTFSTypeLocalDataSource {
  Future<DateTime> get timestamp;
  Future<void> setTimestamp(DateTime timestamp);
}

@prod
@LazySingleton(as: SNCFLocalDataSource)
class SNCFLocalDataSourceImpl implements SNCFLocalDataSource {
  final DirectoryManager directoryManager;
  final ZipDecoder zipDecoder;

  SNCFLocalDataSourceImpl({
    @required this.directoryManager,
    @required this.zipDecoder,
  });

  @override
  Future<bool> get fileExists async {
    return File('${await directoryManager.sncf}/export-ter-gtfs-last.zip')
        .existsSync();
  }

  @override
  Future<DateTime> get timestamp async {
    final file = File('${await directoryManager.sncf}/timestamp.txt');
    if (file.existsSync()) {
      return DateTime.parse(file.readAsLinesSync().first);
    }
    return DateTime.parse("1970-01-01 12:00:00");
  }

  @override
  Future<List<CalendarModel>> fetchCalendars() async {
    final file = File('${await directoryManager.sncf}/calendar.txt');
    if (file.existsSync()) {
      return file.parseCalendars();
    } else {
      throw CacheException('Calendars not found.');
    }
  }

  @override
  Future<List<RouteModel>> fetchRoutes() async {
    final file = File('${await directoryManager.sncf}/routes.txt');
    if (file.existsSync()) {
      return file.parseRoutes();
    } else {
      throw CacheException('Routes not found.');
    }
  }

  @override
  Future<List<StopModel>> fetchStops() async {
    final file = File('${await directoryManager.sncf}/stops.txt');
    if (file.existsSync()) {
      return file.parseStops();
    } else {
      throw CacheException('Stops not found.');
    }
  }

  @override
  Future<List<StopTimeModel>> fetchStopTimes() async {
    final file = File('${await directoryManager.sncf}/stop_times.txt');
    if (file.existsSync()) {
      return file.parseStopTimes();
    } else {
      throw CacheException('StopTimes not found.');
    }
  }

  @override
  Future<List<TripModel>> fetchTrips() async {
    final file = File('${await directoryManager.sncf}/trips.txt');
    if (file.existsSync()) {
      return file.parseTrips();
    } else {
      throw CacheException('Trips not found.');
    }
  }

  @override
  Future<void> setTimestamp(DateTime timestamp) async {
    final path = await directoryManager.sncf;
    Directory(path).createSync(recursive: true);
    final File file = File('${path}/timestamp.txt');
    return file.writeAsString(timestamp.toIso8601String());
  }

  @override
  Stream<List<int>> useAsset() async* {
    final bytedata = await directoryManager.terZip;
    final buffer = bytedata.buffer;
    yield buffer.asUint8List(bytedata.offsetInBytes, bytedata.lengthInBytes);
  }

  @override
  Future<void> writeFile(Stream<List<int>> bytes) async {
    // Write the Zip file
    final File file =
        File('${await directoryManager.sncf}/export-ter-gtfs-last.zip');
    final IOSink sink = file.openWrite();
    await bytes.forEach(sink.add);
    await sink.flush();
    await sink.close();
    return _unzip(file);
  }

  Future<void> _unzip(File file) async {
    // Decode the Zip file
    final Archive archive = zipDecoder.decodeBytes(file.readAsBytesSync());

    // Extract the contents of the Zip archive to disk.
    for (final ArchiveFile archiveFile in archive) {
      if (archiveFile.isFile) {
        final List<int> data = archiveFile.content as List<int>;
        final openFile =
            File('${await directoryManager.sncf}/' + archiveFile.name)
              ..createSync(recursive: true);
        openFile.writeAsBytesSync(data);
      }
    }
  }
}
