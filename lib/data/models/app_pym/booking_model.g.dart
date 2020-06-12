// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class _$_BookingModelAdapter extends TypeAdapter<_$_BookingModel> {
  @override
  final typeId = 9;

  @override
  _$_BookingModel read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_BookingModel(
      id: fields[0] as int,
      service_id: fields[1] as int,
      start_date: fields[2] as DateTime,
      end_date: fields[3] as DateTime,
      title: fields[4] as String,
      superpose: fields[5] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, _$_BookingModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.service_id)
      ..writeByte(2)
      ..write(obj.start_date)
      ..writeByte(3)
      ..write(obj.end_date)
      ..writeByte(4)
      ..write(obj.title)
      ..writeByte(5)
      ..write(obj.superpose);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookingModel _$_$_BookingModelFromJson(Map<String, dynamic> json) {
  return _$_BookingModel(
    id: json['id'] as int,
    service_id: json['service_id'] as int,
    start_date: json['start_date'] == null
        ? null
        : DateTime.parse(json['start_date'] as String),
    end_date: json['end_date'] == null
        ? null
        : DateTime.parse(json['end_date'] as String),
    title: json['title'] as String,
    superpose: json['superpose'] as bool,
  );
}

Map<String, dynamic> _$_$_BookingModelToJson(_$_BookingModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'service_id': instance.service_id,
      'start_date': instance.start_date?.toIso8601String(),
      'end_date': instance.end_date?.toIso8601String(),
      'title': instance.title,
      'superpose': instance.superpose,
    };
