// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class _$_ServiceModelAdapter extends TypeAdapter<_$_ServiceModel> {
  @override
  final typeId = 8;

  @override
  _$_ServiceModel read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_ServiceModel(
      id: fields[0] as int,
      title: fields[1] as String,
      categorie_id: fields[2] as int,
      subtitle: fields[3] as String,
      address: fields[4] as String,
      img_url: fields[5] as String,
      actions: (fields[6] as List)?.cast<ActionModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$_ServiceModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.categorie_id)
      ..writeByte(3)
      ..write(obj.subtitle)
      ..writeByte(4)
      ..write(obj.address)
      ..writeByte(5)
      ..write(obj.img_url)
      ..writeByte(6)
      ..write(obj.actions);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServiceModel _$_$_ServiceModelFromJson(Map<String, dynamic> json) {
  return _$_ServiceModel(
    id: json['id'] as int,
    title: json['title'] as String,
    categorie_id: json['categorie_id'] as int,
    subtitle: json['subtitle'] as String,
    address: json['address'] as String,
    img_url: json['img_url'] as String,
    actions: (json['actions'] as List)
        ?.map((e) =>
            e == null ? null : ActionModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_ServiceModelToJson(_$_ServiceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'categorie_id': instance.categorie_id,
      'subtitle': instance.subtitle,
      'address': instance.address,
      'img_url': instance.img_url,
      'actions': instance.actions?.map((e) => e?.toJson())?.toList(),
    };
