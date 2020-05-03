import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.freezed.dart';

@freezed
abstract class Post with _$Post {
  const factory Post({
    @required int id,
    @nullable @required DateTime published,
    @nullable @required DateTime updated,
    @nullable @required String url,
    @nullable @required String title,
    @nullable @required String content,
  }) = _Post;
}
