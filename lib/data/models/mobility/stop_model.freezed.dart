// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'stop_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$StopModelTearOff {
  const _$StopModelTearOff();

  _StopModel call(
      {String stop_id,
      String stop_code,
      String stop_name,
      String stop_lat,
      String stop_long,
      int location_type}) {
    return _StopModel(
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
const $StopModel = _$StopModelTearOff();

mixin _$StopModel {
  String get stop_id;
  String get stop_code;
  String get stop_name;
  String get stop_lat;
  String get stop_long;
  int get location_type;

  $StopModelCopyWith<StopModel> get copyWith;
}

abstract class $StopModelCopyWith<$Res> {
  factory $StopModelCopyWith(StopModel value, $Res Function(StopModel) then) =
      _$StopModelCopyWithImpl<$Res>;
  $Res call(
      {String stop_id,
      String stop_code,
      String stop_name,
      String stop_lat,
      String stop_long,
      int location_type});
}

class _$StopModelCopyWithImpl<$Res> implements $StopModelCopyWith<$Res> {
  _$StopModelCopyWithImpl(this._value, this._then);

  final StopModel _value;
  // ignore: unused_field
  final $Res Function(StopModel) _then;

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

abstract class _$StopModelCopyWith<$Res> implements $StopModelCopyWith<$Res> {
  factory _$StopModelCopyWith(
          _StopModel value, $Res Function(_StopModel) then) =
      __$StopModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String stop_id,
      String stop_code,
      String stop_name,
      String stop_lat,
      String stop_long,
      int location_type});
}

class __$StopModelCopyWithImpl<$Res> extends _$StopModelCopyWithImpl<$Res>
    implements _$StopModelCopyWith<$Res> {
  __$StopModelCopyWithImpl(_StopModel _value, $Res Function(_StopModel) _then)
      : super(_value, (v) => _then(v as _StopModel));

  @override
  _StopModel get _value => super._value as _StopModel;

  @override
  $Res call({
    Object stop_id = freezed,
    Object stop_code = freezed,
    Object stop_name = freezed,
    Object stop_lat = freezed,
    Object stop_long = freezed,
    Object location_type = freezed,
  }) {
    return _then(_StopModel(
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

class _$_StopModel implements _StopModel {
  const _$_StopModel(
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
    return 'StopModel(stop_id: $stop_id, stop_code: $stop_code, stop_name: $stop_name, stop_lat: $stop_lat, stop_long: $stop_long, location_type: $location_type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StopModel &&
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
  _$StopModelCopyWith<_StopModel> get copyWith =>
      __$StopModelCopyWithImpl<_StopModel>(this, _$identity);
}

abstract class _StopModel implements StopModel {
  const factory _StopModel(
      {String stop_id,
      String stop_code,
      String stop_name,
      String stop_lat,
      String stop_long,
      int location_type}) = _$_StopModel;

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
  _$StopModelCopyWith<_StopModel> get copyWith;
}
