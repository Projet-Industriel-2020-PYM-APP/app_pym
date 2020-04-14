// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'route_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RouteModelTearOff {
  const _$RouteModelTearOff();

  _RouteModel call(
      {String route_id, String route_short_name, String route_long_name}) {
    return _RouteModel(
      route_id: route_id,
      route_short_name: route_short_name,
      route_long_name: route_long_name,
    );
  }
}

// ignore: unused_element
const $RouteModel = _$RouteModelTearOff();

mixin _$RouteModel {
  String get route_id;
  String get route_short_name;
  String get route_long_name;

  $RouteModelCopyWith<RouteModel> get copyWith;
}

abstract class $RouteModelCopyWith<$Res> {
  factory $RouteModelCopyWith(
          RouteModel value, $Res Function(RouteModel) then) =
      _$RouteModelCopyWithImpl<$Res>;
  $Res call({String route_id, String route_short_name, String route_long_name});
}

class _$RouteModelCopyWithImpl<$Res> implements $RouteModelCopyWith<$Res> {
  _$RouteModelCopyWithImpl(this._value, this._then);

  final RouteModel _value;
  // ignore: unused_field
  final $Res Function(RouteModel) _then;

  @override
  $Res call({
    Object route_id = freezed,
    Object route_short_name = freezed,
    Object route_long_name = freezed,
  }) {
    return _then(_value.copyWith(
      route_id: route_id == freezed ? _value.route_id : route_id as String,
      route_short_name: route_short_name == freezed
          ? _value.route_short_name
          : route_short_name as String,
      route_long_name: route_long_name == freezed
          ? _value.route_long_name
          : route_long_name as String,
    ));
  }
}

abstract class _$RouteModelCopyWith<$Res> implements $RouteModelCopyWith<$Res> {
  factory _$RouteModelCopyWith(
          _RouteModel value, $Res Function(_RouteModel) then) =
      __$RouteModelCopyWithImpl<$Res>;
  @override
  $Res call({String route_id, String route_short_name, String route_long_name});
}

class __$RouteModelCopyWithImpl<$Res> extends _$RouteModelCopyWithImpl<$Res>
    implements _$RouteModelCopyWith<$Res> {
  __$RouteModelCopyWithImpl(
      _RouteModel _value, $Res Function(_RouteModel) _then)
      : super(_value, (v) => _then(v as _RouteModel));

  @override
  _RouteModel get _value => super._value as _RouteModel;

  @override
  $Res call({
    Object route_id = freezed,
    Object route_short_name = freezed,
    Object route_long_name = freezed,
  }) {
    return _then(_RouteModel(
      route_id: route_id == freezed ? _value.route_id : route_id as String,
      route_short_name: route_short_name == freezed
          ? _value.route_short_name
          : route_short_name as String,
      route_long_name: route_long_name == freezed
          ? _value.route_long_name
          : route_long_name as String,
    ));
  }
}

class _$_RouteModel implements _RouteModel {
  const _$_RouteModel(
      {this.route_id, this.route_short_name, this.route_long_name});

  @override
  final String route_id;
  @override
  final String route_short_name;
  @override
  final String route_long_name;

  @override
  String toString() {
    return 'RouteModel(route_id: $route_id, route_short_name: $route_short_name, route_long_name: $route_long_name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RouteModel &&
            (identical(other.route_id, route_id) ||
                const DeepCollectionEquality()
                    .equals(other.route_id, route_id)) &&
            (identical(other.route_short_name, route_short_name) ||
                const DeepCollectionEquality()
                    .equals(other.route_short_name, route_short_name)) &&
            (identical(other.route_long_name, route_long_name) ||
                const DeepCollectionEquality()
                    .equals(other.route_long_name, route_long_name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(route_id) ^
      const DeepCollectionEquality().hash(route_short_name) ^
      const DeepCollectionEquality().hash(route_long_name);

  @override
  _$RouteModelCopyWith<_RouteModel> get copyWith =>
      __$RouteModelCopyWithImpl<_RouteModel>(this, _$identity);
}

abstract class _RouteModel implements RouteModel {
  const factory _RouteModel(
      {String route_id,
      String route_short_name,
      String route_long_name}) = _$_RouteModel;

  @override
  String get route_id;
  @override
  String get route_short_name;
  @override
  String get route_long_name;
  @override
  _$RouteModelCopyWith<_RouteModel> get copyWith;
}
