import 'package:app_pym/data/models/app_pym/post_model.dart';
import 'package:app_pym/domain/entities/app_pym/post.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final DateTime tDateTime = DateTime.now();
  final PostModel model = PostModel(
    content: "content",
    id: 0,
    tags: ["tag"],
    subtitle: "subtitle",
    published: tDateTime,
    title: "title",
    updated: tDateTime,
    url: "url",
  );
  final Post entity = Post(
    content: "content",
    id: 0,
    published: tDateTime,
    title: "title",
    updated: tDateTime,
    url: "url",
    tags: ["tag"],
    subtitle: "subtitle",
  );
  group('toEntity', () {
    test(
      'should return a valid entity',
      () async {
        // act
        final result = model.toEntity();
        // assert
        expect(result, equals(entity));
      },
    );
  });
}
