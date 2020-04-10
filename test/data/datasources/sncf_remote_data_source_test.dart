import 'package:app_pym/data/datasources/sncf_remote_data_source.dart';
import 'package:app_pym/injection_container.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:app_pym/core/error/exceptions.dart';
import 'package:injectable/injectable.dart' show Environment;

import '../../fixtures/fixture_reader.dart';

void main() {
  SNCFRemoteDataSource dataSource;
  http.Client mockHttpClient;

  init(env: Environment.test);

  setUp(() {
    mockHttpClient = sl<http.Client>();
    dataSource = SNCFRemoteDataSourceImpl(client: mockHttpClient);
  });

  group('download', () {
    group('first request', () {
      test(
        "should perform a GET request on a URL",
        () async {
          // arrange
          when(mockHttpClient.get(
            'https://ressources.data.sncf.com/api/records/1.0/search/?dataset=sncf-ter-gtfs',
          )).thenAnswer((_) async =>
              http.Response(fixture('sncf/sncf-ter-gtfs.json'), 200));
          when(mockHttpClient.send(
            any,
          )).thenAnswer((invocation) async {
            final capturedRequest =
                invocation.positionalArguments.first as http.Request;

            if (capturedRequest.method == 'GET' &&
                capturedRequest.url.toString().startsWith(
                    "https://ressources.data.sncf.com/explore/dataset/sncf-ter-gtfs/files/")) {
              return http.StreamedResponse(
                  fixtureByte('sncf/export-ter-gtfs-last.zip'), 200);
            }
            return fail("Unexpected arguments");
          });
          // act
          final result = await dataSource.download().join();
          // assert
          final expected =
              await fixtureByte('sncf/export-ter-gtfs-last.zip').join();
          verify(mockHttpClient.get(
            'https://ressources.data.sncf.com/api/records/1.0/search/?dataset=sncf-ter-gtfs',
          ));
          expect(result, equals(expected));
        },
      );
      test(
        'should throw a ServerException when the response code is 404 or other',
        () async {
          // arrange
          when(mockHttpClient.get(any)).thenAnswer(
              (_) async => http.Response('Something went wrong', 404));
          // act
          final call = dataSource.download;
          // assert
          expect(call().drain, throwsA(isA<ServerException>()));
          verifyZeroInteractions(mockHttpClient);
        },
      );
    });
    group('second request', () {
      test(
        "should perform open a stream of data",
        () async {
          // arrange
          when(mockHttpClient.get(
            'https://ressources.data.sncf.com/api/records/1.0/search/?dataset=sncf-ter-gtfs',
          )).thenAnswer((_) async =>
              http.Response(fixture('sncf/sncf-ter-gtfs.json'), 200));
          when(mockHttpClient.send(
            any,
          )).thenAnswer((invocation) async {
            final capturedRequest =
                invocation.positionalArguments.first as http.Request;

            if (capturedRequest.method == 'GET' &&
                capturedRequest.url.toString().startsWith(
                    "https://ressources.data.sncf.com/explore/dataset/sncf-ter-gtfs/files/")) {
              return http.StreamedResponse(
                  fixtureByte('sncf/export-ter-gtfs-last.zip'), 200);
            }
            return fail("Unexpected arguments");
          });

          // act
          final result = await dataSource.download().join();
          // assert
          final expected =
              await fixtureByte('sncf/export-ter-gtfs-last.zip').join();
          expect(result, equals(expected));
          verify(mockHttpClient.get(
              'https://ressources.data.sncf.com/api/records/1.0/search/?dataset=sncf-ter-gtfs'));
          final captured = verify(mockHttpClient.send(captureAny)).captured;
          final capturedRequest = captured.first as http.Request;
          expect(
            capturedRequest.url,
            equals(Uri.parse(
                "https://ressources.data.sncf.com/explore/dataset/sncf-ter-gtfs/files/24e02fa969496e2caa5863a365c66ec2/download/")),
          );
          expect(capturedRequest.method, 'GET');
        },
      );
      test(
        'should throw a ServerException when the response code is 404 or other',
        () async {
          // arrange
          when(mockHttpClient.get(
            'https://ressources.data.sncf.com/api/records/1.0/search/?dataset=sncf-ter-gtfs',
          )).thenAnswer((_) async =>
              http.Response(fixture('sncf/sncf-ter-gtfs.json'), 200));
          when(mockHttpClient.send(any)).thenAnswer(
              (_) async => http.StreamedResponse(const Stream.empty(), 404));

          try {
            // act
            await dataSource.download().drain<List<int>>();
            fail("Shouldn't continue.");
          } catch (e) {
            // assert
            expect(e, isA<ServerException>());
            verify(mockHttpClient.get(
                'https://ressources.data.sncf.com/api/records/1.0/search/?dataset=sncf-ter-gtfs'));
          }
        },
      );
    });
  });
}
