// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batiment_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BatimentModelAdapter extends TypeAdapter<BatimentModel> {
  @override
  final typeId = 1;

  @override
  BatimentModel read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BatimentModel(
      id: fields[0] as int,
      nom: fields[1] as String,
      nbEtage: fields[2] as int,
      description: fields[3] as String,
      accesHandicape: fields[4] as bool,
      url: fields[5] as String,
      adresse: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, BatimentModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.nom)
      ..writeByte(2)
      ..write(obj.nbEtage)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.accesHandicape)
      ..writeByte(5)
      ..write(obj.url)
      ..writeByte(6)
      ..write(obj.adresse);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BatimentModel _$BatimentModelFromJson(Map<String, dynamic> json) {
  return BatimentModel(
    id: json['id'] as int,
    nom: json['nom'] as String,
    nbEtage: json['nbEtage'] as int,
    description: json['description'] as String,
    accesHandicape: json['accesHandicape'] as bool,
    url: json['url'] as String,
    adresse: json['adresse'] as String,
  );
}

Map<String, dynamic> _$BatimentModelToJson(BatimentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nom': instance.nom,
      'nbEtage': instance.nbEtage,
      'description': instance.description,
      'accesHandicape': instance.accesHandicape,
      'url': instance.url,
      'adresse': instance.adresse,
    };
