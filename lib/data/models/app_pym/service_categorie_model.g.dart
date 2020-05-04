// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_categorie_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class _$_ServiceCategorieModelAdapter
    extends TypeAdapter<_$_ServiceCategorieModel> {
  @override
  final typeId = 5;

  @override
  _$_ServiceCategorieModel read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_ServiceCategorieModel(
      id: fields[0] as int,
      name: fields[1] as String,
      primary_color: fields[2] as String,
      img_url: fields[3] as String,
      action: fields[4] as ActionModel,
    );
  }

  @override
  void write(BinaryWriter writer, _$_ServiceCategorieModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.primary_color)
      ..writeByte(3)
      ..write(obj.img_url)
      ..writeByte(4)
      ..write(obj.action);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServiceCategorieModel _$_$_ServiceCategorieModelFromJson(
    Map<String, dynamic> json) {
  return _$_ServiceCategorieModel(
    id: json['id'] as int,
    name: json['name'] as String,
    primary_color: json['primary_color'] as String,
    img_url: json['img_url'] as String,
    action: json['action'] == null
        ? null
        : ActionModel.fromJson(json['action'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ServiceCategorieModelToJson(
        _$_ServiceCategorieModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'primary_color': instance.primary_color,
      'img_url': instance.img_url,
      'action': instance.action?.toJson(),
    };
