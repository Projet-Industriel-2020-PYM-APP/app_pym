import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.freezed.dart';

@freezed
abstract class Post with _$Post {
  const factory Post({
    String id,
    DateTime published,
    DateTime updated,
    String url,
    String title,
    String content,
  }) = _Post;
}
