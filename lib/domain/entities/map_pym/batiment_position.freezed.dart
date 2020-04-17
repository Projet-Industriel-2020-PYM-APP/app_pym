// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'batiment_position.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$BatimentPositionTearOff {
  const _$BatimentPositionTearOff();

  _BatimentPosition call(
      {@required num latitude,
      @required num longitude,
      @required int idBatiment}) {
    return _BatimentPosition(
      latitude: latitude,
      longitude: longitude,
      idBatiment: idBatiment,
    );
  }
}

// ignore: unused_element
const $BatimentPosition = _$BatimentPositionTearOff();

mixin _$BatimentPosition {
  num get latitude;
  num get longitude;
  int get idBatiment;

  $BatimentPositionCopyWith<BatimentPosition> get copyWith;
}

abstract class $BatimentPositionCopyWith<$Res> {
  factory $BatimentPositionCopyWith(
          BatimentPosition value, $Res Function(BatimentPosition) then) =
      _$BatimentPositionCopyWithImpl<$Res>;
  $Res call({num latitude, num longitude, int idBatiment});
}

class _$BatimentPositionCopyWithImpl<$Res>
    implements $BatimentPositionCopyWith<$Res> {
  _$BatimentPositionCopyWithImpl(this._value, this._then);

  final BatimentPosition _value;
  // ignore: unused_field
  final $Res Function(BatimentPosition) _then;

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

abstract class _$BatimentPositionCopyWith<$Res>
    implements $BatimentPositionCopyWith<$Res> {
  factory _$BatimentPositionCopyWith(
          _BatimentPosition value, $Res Function(_BatimentPosition) then) =
      __$BatimentPositionCopyWithImpl<$Res>;
  @override
  $Res call({num latitude, num longitude, int idBatiment});
}

class __$BatimentPositionCopyWithImpl<$Res>
    extends _$BatimentPositionCopyWithImpl<$Res>
    implements _$BatimentPositionCopyWith<$Res> {
  __$BatimentPositionCopyWithImpl(
      _BatimentPosition _value, $Res Function(_BatimentPosition) _then)
      : super(_value, (v) => _then(v as _BatimentPosition));

  @override
  _BatimentPosition get _value => super._value as _BatimentPosition;

  @override
  $Res call({
    Object latitude = freezed,
    Object longitude = freezed,
    Object idBatiment = freezed,
  }) {
    return _then(_BatimentPosition(
      latitude: latitude == freezed ? _value.latitude : latitude as num,
      longitude: longitude == freezed ? _value.longitude : longitude as num,
      idBatiment: idBatiment == freezed ? _value.idBatiment : idBatiment as int,
    ));
  }
}

class _$_BatimentPosition
    with DiagnosticableTreeMixin
    implements _BatimentPosition {
  const _$_BatimentPosition(
      {@required this.latitude,
      @required this.longitude,
      @required this.idBatiment})
      : assert(latitude != null),
        assert(longitude != null),
        assert(idBatiment != null);

  @override
  final num latitude;
  @override
  final num longitude;
  @override
  final int idBatiment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BatimentPosition(latitude: $latitude, longitude: $longitude, idBatiment: $idBatiment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BatimentPosition'))
      ..add(DiagnosticsProperty('latitude', latitude))
      ..add(DiagnosticsProperty('longitude', longitude))
      ..add(DiagnosticsProperty('idBatiment', idBatiment));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BatimentPosition &&
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
  _$BatimentPositionCopyWith<_BatimentPosition> get copyWith =>
      __$BatimentPositionCopyWithImpl<_BatimentPosition>(this, _$identity);
}

abstract class _BatimentPosition implements BatimentPosition {
  const factory _BatimentPosition(
      {@required num latitude,
      @required num longitude,
      @required int idBatiment}) = _$_BatimentPosition;

  @override
  num get latitude;
  @override
  num get longitude;
  @override
  int get idBatiment;
  @override
  _$BatimentPositionCopyWith<_BatimentPosition> get copyWith;
}
