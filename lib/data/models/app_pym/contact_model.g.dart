// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class _$_ContactModelAdapter extends TypeAdapter<_$_ContactModel> {
  @override
  final typeId = 6;

  @override
  _$_ContactModel read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_ContactModel(
      id: fields[0] as int,
      nom: fields[1] as String,
      prenom: fields[2] as String,
      mail: fields[3] as String,
      telephone: fields[4] as String,
      idEntreprise: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$_ContactModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.nom)
      ..writeByte(2)
      ..write(obj.prenom)
      ..writeByte(3)
      ..write(obj.mail)
      ..writeByte(4)
      ..write(obj.telephone)
      ..writeByte(5)
      ..write(obj.idEntreprise);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContactModel _$_$_ContactModelFromJson(Map<String, dynamic> json) {
  return _$_ContactModel(
    id: json['id'] as int,
    nom: json['nom'] as String,
    prenom: json['prenom'] as String,
    mail: json['mail'] as String,
    telephone: json['telephone'] as String,
    idEntreprise: json['idEntreprise'] as int,
  );
}

Map<String, dynamic> _$_$_ContactModelToJson(_$_ContactModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nom': instance.nom,
      'prenom': instance.prenom,
      'mail': instance.mail,
      'telephone': instance.telephone,
      'idEntreprise': instance.idEntreprise,
    };
