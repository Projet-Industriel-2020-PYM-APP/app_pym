import 'dart:convert';
import 'dart:io';

import 'package:app_pym/data/datasources/metropole_remote_data_source.dart';
import 'package:app_pym/injection_container.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:app_pym/core/error/exceptions.dart';
import 'package:injectable/injectable.dart' show Environment;

import '../../fixtures/fixture_reader.dart';

void main() {
  MetropoleRemoteDataSource dataSource;
  http.Client mockHttpClient;

  init(env: Environment.test);

  setUp(() {
    mockHttpClient = sl<http.Client>();
    dataSource = MetropoleRemoteDataSourceImpl(client: mockHttpClient);
  });

  group('download', () {
    group('first request', () {
      test(
        "should perform a GET request on a URL",
        () async {
          // arrange
          when(mockHttpClient.send(
            any,
          )).thenAnswer((invocation) async {
            final capturedRequest =
                invocation.positionalArguments.first as http.Request;

            if (capturedRequest.method == 'GET' &&
                capturedRequest.url.toString().startsWith(
                    "http://tsvc.pilote4.cityway.fr/api/Export/v1/GetExportedDataFile?ExportFormat=Gtfs&OperatorCode=CPA")) {
              return http.StreamedResponse(
                  fixtureByte('metropole/CPA.zip'), HttpStatus.ok);
            }
            return fail("Unexpected arguments");
          });
          // act
          final result = await dataSource.download().join();
          // assert
          final expected = await fixtureByte('metropole/CPA.zip').join();
          final verificationResult = verify(mockHttpClient.send(captureAny));
          final request = verificationResult.captured.first as http.Request;
          expect(
            request.url,
            equals(Uri.parse(
                "http://tsvc.pilote4.cityway.fr/api/Export/v1/GetExportedDataFile?ExportFormat=Gtfs&OperatorCode=CPA")),
          );
          expect(request.method, equals("GET"));
          expect(result, equals(expected));
        },
      );
      test(
        'should throw a ServerException when the response code is 404 or other',
        () async {
          // arrange
          when(mockHttpClient.send(any)).thenAnswer((_) async =>
              http.StreamedResponse(
                  Stream.value('Something went wrong').transform(utf8.encoder),
                  404));
          // act
          final call = dataSource.download;
          // assert
          expect(call().drain, throwsA(isA<ServerException>()));
          verifyZeroInteractions(mockHttpClient);
        },
      );
    });
  });

  group('get timestamp', () {
    test('send a GET request', () async {
      // Arrange
      when(mockHttpClient.send(any)).thenAnswer((invoc) async {
        final request = invoc.positionalArguments.first as http.Request;

        if (request.method == 'GET' &&
            request.url.toString().startsWith(
                "http://tsvc.pilote4.cityway.fr/api/Export/v1/GetExportedDataFile?ExportFormat=Gtfs&OperatorCode=CPA")) {
          return http.StreamedResponse(
            Stream.value('Success').transform(utf8.encoder),
            200,
            headers: <String, String>{
              'content-disposition':
                  "attachment; filename=Gtfs_CPA___2020-05-27.zip"
            },
          );
        }
        return fail("Unexpected arguments");
      });

      // Act
      final result = await dataSource.timestamp;

      // Assert
      expect(result, equals(DateTime.parse("2020-05-27")));
    });

    test('throws a ServerException if no 404', () async {
      // Arrange
      when(mockHttpClient.send(any)).thenAnswer((_) async =>
          http.StreamedResponse(
              Stream.value('Something went wrong').transform(utf8.encoder),
              404));

      // Act and assert
      expect(dataSource.timestamp, throwsA(isA<ServerException>()));
    });
  });
}
