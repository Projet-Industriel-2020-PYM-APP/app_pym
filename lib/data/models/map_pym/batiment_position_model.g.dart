// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batiment_position_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class _$_BatimentPositionModelAdapter
    extends TypeAdapter<_$_BatimentPositionModel> {
  @override
  final typeId = 0;

  @override
  _$_BatimentPositionModel read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_BatimentPositionModel(
      latitude: fields[0] as num,
      longitude: fields[1] as num,
      idBatiment: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$_BatimentPositionModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.latitude)
      ..writeByte(1)
      ..write(obj.longitude)
      ..writeByte(2)
      ..write(obj.idBatiment);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BatimentPositionModel _$_$_BatimentPositionModelFromJson(
    Map<String, dynamic> json) {
  return _$_BatimentPositionModel(
    latitude: json['latitude'] as num,
    longitude: json['longitude'] as num,
    idBatiment: json['idBatiment'] as int,
  );
}

Map<String, dynamic> _$_$_BatimentPositionModelToJson(
        _$_BatimentPositionModel instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'idBatiment': instance.idBatiment,
    };
