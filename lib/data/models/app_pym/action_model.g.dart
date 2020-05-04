// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class _$_ActionModelAdapter extends TypeAdapter<_$_ActionModel> {
  @override
  final typeId = 4;

  @override
  _$_ActionModel read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_ActionModel(
      name: fields[0] as String,
      html_url: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_ActionModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.html_url);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ActionModel _$_$_ActionModelFromJson(Map<String, dynamic> json) {
  return _$_ActionModel(
    name: json['name'] as String,
    html_url: json['html_url'] as String,
  );
}

Map<String, dynamic> _$_$_ActionModelToJson(_$_ActionModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'html_url': instance.html_url,
    };
