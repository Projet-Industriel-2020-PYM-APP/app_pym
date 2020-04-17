import 'package:app_pym/domain/entities/blogger/post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post_model.g.dart';
part 'post_model.freezed.dart';

@freezed
abstract class PostModel with _$PostModel {
  @JsonSerializable(explicitToJson: true)
  @HiveType(typeId: 3)
  const factory PostModel({
    @HiveField(0) String id,
    @HiveField(1) DateTime published,
    @HiveField(2) DateTime updated,
    @HiveField(3) String url,
    @HiveField(4) String title,
    @HiveField(5) String content,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
}

TypeAdapter<PostModel> PostModelAdapter() => _$_PostModelAdapter();

extension PostModelX on PostModel {
  Post toEntity() {
    return Post(
      content: this.content,
      id: this.id,
      published: this.published,
      title: this.title,
      updated: this.updated,
      url: this.url,
    );
  }
}
