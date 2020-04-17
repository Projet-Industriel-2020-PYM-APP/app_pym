// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'stop.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$StopTearOff {
  const _$StopTearOff();

  _Stop call(
      {String stop_id,
      String stop_code,
      String stop_name,
      String stop_lat,
      String stop_long,
      int location_type}) {
    return _Stop(
      stop_id: stop_id,
      stop_code: stop_code,
      stop_name: stop_name,
      stop_lat: stop_lat,
      stop_long: stop_long,
      location_type: location_type,
    );
  }
}

// ignore: unused_element
const $Stop = _$StopTearOff();

mixin _$Stop {
  String get stop_id;
  String get stop_code;
  String get stop_name;
  String get stop_lat;
  String get stop_long;
  int get location_type;

  $StopCopyWith<Stop> get copyWith;
}

abstract class $StopCopyWith<$Res> {
  factory $StopCopyWith(Stop value, $Res Function(Stop) then) =
      _$StopCopyWithImpl<$Res>;
  $Res call(
      {String stop_id,
      String stop_code,
      String stop_name,
      String stop_lat,
      String stop_long,
      int location_type});
}

class _$StopCopyWithImpl<$Res> implements $StopCopyWith<$Res> {
  _$StopCopyWithImpl(this._value, this._then);

  final Stop _value;
  // ignore: unused_field
  final $Res Function(Stop) _then;

  @override
  $Res call({
    Object stop_id = freezed,
    Object stop_code = freezed,
    Object stop_name = freezed,
    Object stop_lat = freezed,
    Object stop_long = freezed,
    Object location_type = freezed,
  }) {
    return _then(_value.copyWith(
      stop_id: stop_id == freezed ? _value.stop_id : stop_id as String,
      stop_code: stop_code == freezed ? _value.stop_code : stop_code as String,
      stop_name: stop_name == freezed ? _value.stop_name : stop_name as String,
      stop_lat: stop_lat == freezed ? _value.stop_lat : stop_lat as String,
      stop_long: stop_long == freezed ? _value.stop_long : stop_long as String,
      location_type: location_type == freezed
          ? _value.location_type
          : location_type as int,
    ));
  }
}

abstract class _$StopCopyWith<$Res> implements $StopCopyWith<$Res> {
  factory _$StopCopyWith(_Stop value, $Res Function(_Stop) then) =
      __$StopCopyWithImpl<$Res>;
  @override
  $Res call(
      {String stop_id,
      String stop_code,
      String stop_name,
      String stop_lat,
      String stop_long,
      int location_type});
}

class __$StopCopyWithImpl<$Res> extends _$StopCopyWithImpl<$Res>
    implements _$StopCopyWith<$Res> {
  __$StopCopyWithImpl(_Stop _value, $Res Function(_Stop) _then)
      : super(_value, (v) => _then(v as _Stop));

  @override
  _Stop get _value => super._value as _Stop;

  @override
  $Res call({
    Object stop_id = freezed,
    Object stop_code = freezed,
    Object stop_name = freezed,
    Object stop_lat = freezed,
    Object stop_long = freezed,
    Object location_type = freezed,
  }) {
    return _then(_Stop(
      stop_id: stop_id == freezed ? _value.stop_id : stop_id as String,
      stop_code: stop_code == freezed ? _value.stop_code : stop_code as String,
      stop_name: stop_name == freezed ? _value.stop_name : stop_name as String,
      stop_lat: stop_lat == freezed ? _value.stop_lat : stop_lat as String,
      stop_long: stop_long == freezed ? _value.stop_long : stop_long as String,
      location_type: location_type == freezed
          ? _value.location_type
          : location_type as int,
    ));
  }
}

class _$_Stop implements _Stop {
  const _$_Stop(
      {this.stop_id,
      this.stop_code,
      this.stop_name,
      this.stop_lat,
      this.stop_long,
      this.location_type});

  @override
  final String stop_id;
  @override
  final String stop_code;
  @override
  final String stop_name;
  @override
  final String stop_lat;
  @override
  final String stop_long;
  @override
  final int location_type;

  @override
  String toString() {
    return 'Stop(stop_id: $stop_id, stop_code: $stop_code, stop_name: $stop_name, stop_lat: $stop_lat, stop_long: $stop_long, location_type: $location_type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Stop &&
            (identical(other.stop_id, stop_id) ||
                const DeepCollectionEquality()
                    .equals(other.stop_id, stop_id)) &&
            (identical(other.stop_code, stop_code) ||
                const DeepCollectionEquality()
                    .equals(other.stop_code, stop_code)) &&
            (identical(other.stop_name, stop_name) ||
                const DeepCollectionEquality()
                    .equals(other.stop_name, stop_name)) &&
            (identical(other.stop_lat, stop_lat) ||
                const DeepCollectionEquality()
                    .equals(other.stop_lat, stop_lat)) &&
            (identical(other.stop_long, stop_long) ||
                const DeepCollectionEquality()
                    .equals(other.stop_long, stop_long)) &&
            (identical(other.location_type, location_type) ||
                const DeepCollectionEquality()
                    .equals(other.location_type, location_type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(stop_id) ^
      const DeepCollectionEquality().hash(stop_code) ^
      const DeepCollectionEquality().hash(stop_name) ^
      const DeepCollectionEquality().hash(stop_lat) ^
      const DeepCollectionEquality().hash(stop_long) ^
      const DeepCollectionEquality().hash(location_type);

  @override
  _$StopCopyWith<_Stop> get copyWith =>
      __$StopCopyWithImpl<_Stop>(this, _$identity);
}

abstract class _Stop implements Stop {
  const factory _Stop(
      {String stop_id,
      String stop_code,
      String stop_name,
      String stop_lat,
      String stop_long,
      int location_type}) = _$_Stop;

  @override
  String get stop_id;
  @override
  String get stop_code;
  @override
  String get stop_name;
  @override
  String get stop_lat;
  @override
  String get stop_long;
  @override
  int get location_type;
  @override
  _$StopCopyWith<_Stop> get copyWith;
}
