import 'package:app_pym/domain/entities/app_pym/post.dart';
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
    @required @HiveField(0) int id,
    @required @nullable @HiveField(1) DateTime published,
    @required @nullable @HiveField(2) DateTime updated,
    @required @nullable @HiveField(3) String url,
    @required @nullable @HiveField(4) String title,
    @required @nullable @HiveField(5) String content,
    @required @nullable @HiveField(6) String subtitle,
    @required @nullable @HiveField(7) List<String> tags,
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
      subtitle: this.subtitle,
      tags: this.tags,
    );
  }
}
