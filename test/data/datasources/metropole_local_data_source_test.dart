import 'dart:io';

import 'package:app_pym/core/directory_manager/directory_manager.dart';
import 'package:app_pym/core/error/exceptions.dart';
import 'package:app_pym/data/datasources/metropole_local_data_source.dart';
import 'package:app_pym/data/models/mobility/calendar_model.dart';
import 'package:app_pym/data/models/mobility/route_model.dart';
import 'package:app_pym/data/models/mobility/stop_model.dart';
import 'package:app_pym/data/models/mobility/stop_time_model.dart';
import 'package:app_pym/data/models/mobility/trip_model.dart';
import 'package:app_pym/injection_container.dart';
import 'package:archive/archive.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' show Environment;
import 'package:mockito/mockito.dart';

import '../../fixtures/fixture_reader.dart';

void main() {
  MetropoleLocalDataSource dataSource;
  DirectoryManager mockDirectoryManager;
  ZipDecoder mockZipDecoder;

  init(env: Environment.test);

  setUp(() {
    mockZipDecoder = ZipDecoder();
    mockDirectoryManager = sl<DirectoryManager>();

    dataSource = MetropoleLocalDataSourceImpl(
      directoryManager: mockDirectoryManager,
      zipDecoder: mockZipDecoder,
    );
  });

  group('get timestamp', () {
    test('if exist', () async {
      // Arrange
      when(mockDirectoryManager.metropole)
          .thenAnswer((_) async => "$testDirectory/fixtures/metropole");
      // Act
      final result = await dataSource.timestamp;
      // Assert
      expect(result, equals(DateTime.parse("2020-01-01 12:00:00")));
    });
    test('return default if not exist', () async {
      // Arrange
      when(mockDirectoryManager.metropole).thenAnswer((_) async => ".");
      // Act
      final result = await dataSource.timestamp;
      // Assert
      expect(result, equals(DateTime.parse("1970-01-01 12:00:00")));
    });
  });

  group('setTimestamp', () {
    /// This test has side effects. It create/overwrite a file.
    test('set timestamp', () async {
      // Arrange
      when(mockDirectoryManager.metropole)
          .thenAnswer((_) async => "$testDirectory/fixtures/metropole");
      // Act
      await dataSource.setTimestamp(DateTime.parse("2020-01-01 12:00:00"));
      // Assert
      expect(
          File("$testDirectory/fixtures/metropole/timestamp.txt").existsSync(),
          true);
    });
  });

  group('fetchCalendars', () {
    /// This test has side effects. It create/overwrite a file.
    test('if exist', () async {
      // Arrange
      when(mockDirectoryManager.metropole)
          .thenAnswer((_) async => "$testDirectory/fixtures/metropole");
      // Act
      final result = await dataSource.fetchCalendars();
      // Assert
      expect(result, isA<List<CalendarModel>>());
    });

    test('throw CacheException if not exist', () async {
      // Arrange
      when(mockDirectoryManager.metropole).thenAnswer((_) async => ".");
      // Act
      final call = dataSource.fetchCalendars;
      // Assert
      expect(call, throwsA(isA<CacheException>()));
    });
  });

  group('fetchRoutes', () {
    /// This test has side effects. It create/overwrite a file.
    test('if exist', () async {
      // Arrange
      when(mockDirectoryManager.metropole)
          .thenAnswer((_) async => "$testDirectory/fixtures/metropole");
      // Act
      final result = await dataSource.fetchRoutes();
      // Assert
      expect(result, isA<List<RouteModel>>());
    });

    test('throw CacheException if not exist', () async {
      // Arrange
      when(mockDirectoryManager.metropole).thenAnswer((_) async => ".");
      // Act
      final call = dataSource.fetchRoutes;
      // Assert
      expect(call, throwsA(isA<CacheException>()));
    });
  });

  group('fetchStops', () {
    /// This test has side effects. It create/overwrite a file.
    test('if exist', () async {
      // Arrange
      when(mockDirectoryManager.metropole)
          .thenAnswer((_) async => "$testDirectory/fixtures/metropole");
      // Act
      final result = await dataSource.fetchStops();
      // Assert
      expect(result, isA<List<StopModel>>());
    });

    test('throw CacheException if not exist', () async {
      // Arrange
      when(mockDirectoryManager.metropole).thenAnswer((_) async => ".");
      // Act
      final call = dataSource.fetchStops;
      // Assert
      expect(call, throwsA(isA<CacheException>()));
    });
  });

  group('fetchStopTimes', () {
    /// This test has side effects. It create/overwrite a file.
    test('if exist', () async {
      // Arrange
      when(mockDirectoryManager.metropole)
          .thenAnswer((_) async => "$testDirectory/fixtures/metropole");
      // Act
      final result = await dataSource.fetchStopTimes();
      // Assert
      expect(result, isA<List<StopTimeModel>>());
    });

    test('throw CacheException if not exist', () async {
      // Arrange
      when(mockDirectoryManager.metropole).thenAnswer((_) async => ".");
      // Act
      final call = dataSource.fetchStopTimes;
      // Assert
      expect(call, throwsA(isA<CacheException>()));
    });
  });

  group('fetchTrips', () {
    /// This test has side effects. It create/overwrite a file.
    test('if exist', () async {
      // Arrange
      when(mockDirectoryManager.metropole)
          .thenAnswer((_) async => "$testDirectory/fixtures/metropole");
      // Act
      final result = await dataSource.fetchTrips();
      // Assert
      expect(result, isA<List<TripModel>>());
    });

    test('throw CacheException if not exist', () async {
      // Arrange
      when(mockDirectoryManager.metropole).thenAnswer((_) async => ".");
      // Act
      final call = dataSource.fetchTrips;
      // Assert
      expect(call, throwsA(isA<CacheException>()));
    });
  });

  group('writeFile', () {
    /// This test has side effects. It create/overwrite a file.
    test('write a fixture', () async {
      // Arrange
      Directory("test_outputs").createSync();
      when(mockDirectoryManager.metropole)
          .thenAnswer((_) async => "test_outputs");
      final file = File("$testDirectory/fixtures/metropole/CPA.zip");
      final Stream<List<int>> stream = file.openRead();
      // Act
      await dataSource.writeFile(stream);
      // Assert
      expect(File("test_outputs/CPA.zip").existsSync(), true);
      expect(File("test_outputs/routes.txt").existsSync(), true);
      expect(File("test_outputs/trips.txt").existsSync(), true);
      expect(File("test_outputs/stop_times.txt").existsSync(), true);
      expect(File("test_outputs/stops.txt").existsSync(), true);
      expect(File("test_outputs/calendar.txt").existsSync(), true);
      print("Clearing outputs.");
      Directory("test_outputs").deleteSync(recursive: true);
    });
  });
}
