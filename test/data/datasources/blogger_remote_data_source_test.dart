import 'dart:convert';

import 'package:app_pym/data/datasources/blogger_remote_data_source.dart';
import 'package:app_pym/data/models/blogger/post_model.dart';
import 'package:app_pym/injection_container.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:matcher/matcher.dart';
import 'package:mockito/mockito.dart';
import 'package:app_pym/core/error/exceptions.dart';
import 'package:injectable/injectable.dart' show Environment;

import '../../fixtures/fixture_reader.dart';

void main() {
  BloggerRemoteDataSource dataSource;
  http.Client mockHttpClient;

  init(env: Environment.test);

  setUp(() {
    mockHttpClient = sl<http.Client>();
    dataSource = BloggerRemoteDataSourceImpl(client: mockHttpClient);
  });

  void setUpMockHttpClientSuccess200() {
    when(mockHttpClient.get(
      argThat(startsWith(
          'https://www.googleapis.com/blogger/v3/blogs/2525963384134512130/posts')),
    )).thenAnswer(
        (_) async => http.Response(fixture('blogger/posts.json'), 200));
  }

  void setUpMockHttpClientFailure404() {
    when(mockHttpClient.get(any))
        .thenAnswer((_) async => http.Response('Something went wrong', 404));
  }

  group('fetchReleases', () {
    final tListGithubReleaseModel = List<Map<String, dynamic>>.from(json
            .decode(fixture('blogger/posts.json'))["items"] as List<dynamic>)
        .map((Map<String, dynamic> data) => PostModel.fromJson(data))
        .toList();

    test(
      "should perform a GET request",
      () async {
        // arrange
        setUpMockHttpClientSuccess200();
        // act
        await dataSource.getPosts();
        // assert
        verify(mockHttpClient.get(
          argThat(startsWith(
              'https://www.googleapis.com/blogger/v3/blogs/2525963384134512130/posts')),
        ));
      },
    );

    test(
      'should return ListGithubRelease when the response code is 200 (success)',
      () async {
        // arrange
        setUpMockHttpClientSuccess200();
        // act
        final result = await dataSource.getPosts();
        // assert
        expect(result, equals(tListGithubReleaseModel));
      },
    );

    test(
      'should throw a ServerException when the response code is 404 or other',
      () async {
        // arrange
        setUpMockHttpClientFailure404();
        // act
        final call = dataSource.getPosts;
        // assert
        expect(call, throwsA(isA<ServerException>()));
      },
    );
  });
}
