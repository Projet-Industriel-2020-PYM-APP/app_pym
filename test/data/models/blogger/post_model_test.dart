import 'package:app_pym/data/models/blogger/post_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final DateTime tDateTime = DateTime.parse("1970-01-01T00:00:00-07:00");
  final tPostModel = PostModel(
    content: 'content',
    id: 'id',
    published: tDateTime,
    title: 'title',
    updated: tDateTime,
    url: 'url',
  );

  group('fromJson', () {
    test(
      'should return a valid model',
      () async {
        // arrange
        final Map<String, dynamic> json = <String, dynamic>{
          "id": "id",
          "published": "1970-01-01T00:00:00-07:00",
          "updated": "1970-01-01T00:00:00-07:00",
          "url": "url",
          "title": "title",
          "content": "content",
        };
        // act
        final result = PostModel.fromJson(json);
        // assert
        expect(result, tPostModel);
      },
    );
  });

  group('toJson', () {
    test(
      'should return a JSON map containing the proper data',
      () async {
        // act
        final result = tPostModel.toJson();
        // assert
        final expectedMap = <String, dynamic>{
          "id": "id",
          "published": "1970-01-01T07:00:00.000Z",
          "updated": "1970-01-01T07:00:00.000Z",
          "url": "url",
          "title": "title",
          "content": "content",
        };
        expect(result, expectedMap);
      },
    );
  });
}
