// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entreprise_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EntrepriseModelAdapter extends TypeAdapter<EntrepriseModel> {
  @override
  final typeId = 2;

  @override
  EntrepriseModel read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return EntrepriseModel(
      id: fields[0] as int,
      nom: fields[1] as String,
      site_internet: fields[2] as String,
      nb_salaries: fields[3] as int,
      telephone: fields[4] as String,
      mail: fields[5] as String,
      logo: fields[6] as String,
      idBatiment: fields[7] as int,
    );
  }

  @override
  void write(BinaryWriter writer, EntrepriseModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.nom)
      ..writeByte(2)
      ..write(obj.site_internet)
      ..writeByte(3)
      ..write(obj.nb_salaries)
      ..writeByte(4)
      ..write(obj.telephone)
      ..writeByte(5)
      ..write(obj.mail)
      ..writeByte(6)
      ..write(obj.logo)
      ..writeByte(7)
      ..write(obj.idBatiment);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EntrepriseModel _$EntrepriseModelFromJson(Map<String, dynamic> json) {
  return EntrepriseModel(
    id: json['id'] as int,
    nom: json['nom'] as String,
    site_internet: json['site_internet'] as String,
    nb_salaries: json['nb_salaries'] as int,
    telephone: json['telephone'] as String,
    mail: json['mail'] as String,
    logo: json['logo'] as String,
    idBatiment: json['idBatiment'] as int,
  );
}

Map<String, dynamic> _$EntrepriseModelToJson(EntrepriseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nom': instance.nom,
      'site_internet': instance.site_internet,
      'nb_salaries': instance.nb_salaries,
      'telephone': instance.telephone,
      'mail': instance.mail,
      'logo': instance.logo,
      'idBatiment': instance.idBatiment,
    };
