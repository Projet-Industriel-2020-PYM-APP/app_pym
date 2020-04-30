import 'dart:convert';

import 'package:app_pym/core/error/exceptions.dart';
import 'package:app_pym/data/datasources/blogger_local_data_source.dart';
import 'package:app_pym/data/models/blogger/post_model.dart';
import 'package:app_pym/injection_container.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart' show Environment;
import 'package:matcher/matcher.dart';
import 'package:mockito/mockito.dart';

import '../../fixtures/fixture_reader.dart';

void main() {
  BloggerLocalDataSourceImpl dataSource;
  Box<List<PostModel>> mockBox;
  init(env: Environment.test);

  setUp(() {
    mockBox = sl<Box<List<PostModel>>>();
    dataSource = BloggerLocalDataSourceImpl(box: mockBox);
  });

  group('getPosts', () {
    test(
      'should return List<PostModel> from Github when there is one in the cache',
      () async {
        final tListPostModel = List<Map<String, dynamic>>.from(
                json.decode(fixture('blogger/posts.json'))["items"]
                    as List<dynamic>)
            .map((Map<String, dynamic> data) => PostModel.fromJson(data))
            .toList();
        // arrange
        when(mockBox.get(any)).thenReturn(tListPostModel);
        // act
        final result = await dataSource.getPosts();
        // assert
        verify(mockBox.get('/posts'));
        expect(result, equals(tListPostModel));
      },
    );

    test(
      'should throw a CacheExeption when there is not a cached value',
      () async {
        // arrange
        when(mockBox.get(any)).thenReturn(null);
        // act
        final call = dataSource.getPosts;
        // assert
        expect(call, throwsA(isA<CacheException>()));
      },
    );
  });

  group('cachePosts', () {
    final tListPostModel = List<Map<String, dynamic>>.from(json
            .decode(fixture('blogger/posts.json'))["items"] as List<dynamic>)
        .map((Map<String, dynamic> data) => PostModel.fromJson(data))
        .toList();

    test(
      'should call Github to cache the data',
      () async {
        // act
        await dataSource.cachePosts(tListPostModel);
        // assert

        verify(mockBox.put('/posts', tListPostModel));
      },
    );
  });
}
