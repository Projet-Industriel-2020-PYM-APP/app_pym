// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class _$_PostModelAdapter extends TypeAdapter<_$_PostModel> {
  @override
  final typeId = 3;

  @override
  _$_PostModel read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_PostModel(
      id: fields[0] as int,
      published: fields[1] as DateTime,
      updated: fields[2] as DateTime,
      url: fields[3] as String,
      title: fields[4] as String,
      content: fields[5] as String,
      subtitle: fields[6] as String,
      tags: (fields[7] as List)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$_PostModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.published)
      ..writeByte(2)
      ..write(obj.updated)
      ..writeByte(3)
      ..write(obj.url)
      ..writeByte(4)
      ..write(obj.title)
      ..writeByte(5)
      ..write(obj.content)
      ..writeByte(6)
      ..write(obj.subtitle)
      ..writeByte(7)
      ..write(obj.tags);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostModel _$_$_PostModelFromJson(Map<String, dynamic> json) {
  return _$_PostModel(
    id: json['id'] as int,
    published: json['published'] == null
        ? null
        : DateTime.parse(json['published'] as String),
    updated: json['updated'] == null
        ? null
        : DateTime.parse(json['updated'] as String),
    url: json['url'] as String,
    title: json['title'] as String,
    content: json['content'] as String,
    subtitle: json['subtitle'] as String,
    tags: (json['tags'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$_PostModelToJson(_$_PostModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'published': instance.published?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'url': instance.url,
      'title': instance.title,
      'content': instance.content,
      'subtitle': instance.subtitle,
      'tags': instance.tags,
    };
