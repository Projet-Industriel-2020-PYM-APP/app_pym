// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'batiment_position_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
BatimentPositionModel _$BatimentPositionModelFromJson(
    Map<String, dynamic> json) {
  return _BatimentPositionModel.fromJson(json);
}

class _$BatimentPositionModelTearOff {
  const _$BatimentPositionModelTearOff();

  _BatimentPositionModel call(
      {@required @HiveField(0) num latitude,
      @required @HiveField(1) num longitude,
      @required @HiveField(2) int idBatiment}) {
    return _BatimentPositionModel(
      latitude: latitude,
      longitude: longitude,
      idBatiment: idBatiment,
    );
  }
}

// ignore: unused_element
const $BatimentPositionModel = _$BatimentPositionModelTearOff();

mixin _$BatimentPositionModel {
  @HiveField(0)
  num get latitude;
  @HiveField(1)
  num get longitude;
  @HiveField(2)
  int get idBatiment;

  Map<String, dynamic> toJson();
  $BatimentPositionModelCopyWith<BatimentPositionModel> get copyWith;
}

abstract class $BatimentPositionModelCopyWith<$Res> {
  factory $BatimentPositionModelCopyWith(BatimentPositionModel value,
          $Res Function(BatimentPositionModel) then) =
      _$BatimentPositionModelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) num latitude,
      @HiveField(1) num longitude,
      @HiveField(2) int idBatiment});
}

class _$BatimentPositionModelCopyWithImpl<$Res>
    implements $BatimentPositionModelCopyWith<$Res> {
  _$BatimentPositionModelCopyWithImpl(this._value, this._then);

  final BatimentPositionModel _value;
  // ignore: unused_field
  final $Res Function(BatimentPositionModel) _then;

  @override
  $Res call({
    Object latitude = freezed,
    Object longitude = freezed,
    Object idBatiment = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: latitude == freezed ? _value.latitude : latitude as num,
      longitude: longitude == freezed ? _value.longitude : longitude as num,
      idBatiment: idBatiment == freezed ? _value.idBatiment : idBatiment as int,
    ));
  }
}

abstract class _$BatimentPositionModelCopyWith<$Res>
    implements $BatimentPositionModelCopyWith<$Res> {
  factory _$BatimentPositionModelCopyWith(_BatimentPositionModel value,
          $Res Function(_BatimentPositionModel) then) =
      __$BatimentPositionModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) num latitude,
      @HiveField(1) num longitude,
      @HiveField(2) int idBatiment});
}

class __$BatimentPositionModelCopyWithImpl<$Res>
    extends _$BatimentPositionModelCopyWithImpl<$Res>
    implements _$BatimentPositionModelCopyWith<$Res> {
  __$BatimentPositionModelCopyWithImpl(_BatimentPositionModel _value,
      $Res Function(_BatimentPositionModel) _then)
      : super(_value, (v) => _then(v as _BatimentPositionModel));

  @override
  _BatimentPositionModel get _value => super._value as _BatimentPositionModel;

  @override
  $Res call({
    Object latitude = freezed,
    Object longitude = freezed,
    Object idBatiment = freezed,
  }) {
    return _then(_BatimentPositionModel(
      latitude: latitude == freezed ? _value.latitude : latitude as num,
      longitude: longitude == freezed ? _value.longitude : longitude as num,
      idBatiment: idBatiment == freezed ? _value.idBatiment : idBatiment as int,
    ));
  }
}

@HiveType(typeId: 0)
@JsonSerializable(explicitToJson: true)
class _$_BatimentPositionModel
    with DiagnosticableTreeMixin
    implements _BatimentPositionModel {
  const _$_BatimentPositionModel(
      {@required @HiveField(0) this.latitude,
      @required @HiveField(1) this.longitude,
      @required @HiveField(2) this.idBatiment})
      : assert(latitude != null),
        assert(longitude != null),
        assert(idBatiment != null);

  factory _$_BatimentPositionModel.fromJson(Map<String, dynamic> json) =>
      _$_$_BatimentPositionModelFromJson(json);

  @override
  @HiveField(0)
  final num latitude;
  @override
  @HiveField(1)
  final num longitude;
  @override
  @HiveField(2)
  final int idBatiment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BatimentPositionModel(latitude: $latitude, longitude: $longitude, idBatiment: $idBatiment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BatimentPositionModel'))
      ..add(DiagnosticsProperty('latitude', latitude))
      ..add(DiagnosticsProperty('longitude', longitude))
      ..add(DiagnosticsProperty('idBatiment', idBatiment));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BatimentPositionModel &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.idBatiment, idBatiment) ||
                const DeepCollectionEquality()
                    .equals(other.idBatiment, idBatiment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(idBatiment);

  @override
  _$BatimentPositionModelCopyWith<_BatimentPositionModel> get copyWith =>
      __$BatimentPositionModelCopyWithImpl<_BatimentPositionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BatimentPositionModelToJson(this);
  }
}

abstract class _BatimentPositionModel implements BatimentPositionModel {
  const factory _BatimentPositionModel(
      {@required @HiveField(0) num latitude,
      @required @HiveField(1) num longitude,
      @required @HiveField(2) int idBatiment}) = _$_BatimentPositionModel;

  factory _BatimentPositionModel.fromJson(Map<String, dynamic> json) =
      _$_BatimentPositionModel.fromJson;

  @override
  @HiveField(0)
  num get latitude;
  @override
  @HiveField(1)
  num get longitude;
  @override
  @HiveField(2)
  int get idBatiment;
  @override
  _$BatimentPositionModelCopyWith<_BatimentPositionModel> get copyWith;
}
