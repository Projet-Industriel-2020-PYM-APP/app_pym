// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_categorie_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class _$_ContactCategorieModelAdapter
    extends TypeAdapter<_$_ContactCategorieModel> {
  @override
  final typeId = 7;

  @override
  _$_ContactCategorieModel read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_ContactCategorieModel(
      id: fields[0] as int,
      title: fields[1] as String,
      subtitle: fields[2] as String,
      address: fields[3] as String,
      img_url: fields[4] as String,
      actions: (fields[5] as List)?.cast<ActionModel>(),
      contact_id: fields[6] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$_ContactCategorieModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.subtitle)
      ..writeByte(3)
      ..write(obj.address)
      ..writeByte(4)
      ..write(obj.img_url)
      ..writeByte(5)
      ..write(obj.actions)
      ..writeByte(6)
      ..write(obj.contact_id);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContactCategorieModel _$_$_ContactCategorieModelFromJson(
    Map<String, dynamic> json) {
  return _$_ContactCategorieModel(
    id: json['id'] as int,
    title: json['title'] as String,
    subtitle: json['subtitle'] as String,
    address: json['address'] as String,
    img_url: json['img_url'] as String,
    actions: (json['actions'] as List)
        ?.map((e) =>
            e == null ? null : ActionModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    contact_id: json['contact_id'] as int,
  );
}

Map<String, dynamic> _$_$_ContactCategorieModelToJson(
        _$_ContactCategorieModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'address': instance.address,
      'img_url': instance.img_url,
      'actions': instance.actions?.map((e) => e?.toJson())?.toList(),
      'contact_id': instance.contact_id,
    };
