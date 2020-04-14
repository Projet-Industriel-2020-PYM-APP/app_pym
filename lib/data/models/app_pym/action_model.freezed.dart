// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'action_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ActionModelTearOff {
  const _$ActionModelTearOff();

  _ActionModel call({String id, String name, String html_url}) {
    return _ActionModel(
      id: id,
      name: name,
      html_url: html_url,
    );
  }
}

// ignore: unused_element
const $ActionModel = _$ActionModelTearOff();

mixin _$ActionModel {
  String get id;
  String get name;
  String get html_url;

  $ActionModelCopyWith<ActionModel> get copyWith;
}

abstract class $ActionModelCopyWith<$Res> {
  factory $ActionModelCopyWith(
          ActionModel value, $Res Function(ActionModel) then) =
      _$ActionModelCopyWithImpl<$Res>;
  $Res call({String id, String name, String html_url});
}

class _$ActionModelCopyWithImpl<$Res> implements $ActionModelCopyWith<$Res> {
  _$ActionModelCopyWithImpl(this._value, this._then);

  final ActionModel _value;
  // ignore: unused_field
  final $Res Function(ActionModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object html_url = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      html_url: html_url == freezed ? _value.html_url : html_url as String,
    ));
  }
}

abstract class _$ActionModelCopyWith<$Res>
    implements $ActionModelCopyWith<$Res> {
  factory _$ActionModelCopyWith(
          _ActionModel value, $Res Function(_ActionModel) then) =
      __$ActionModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String html_url});
}

class __$ActionModelCopyWithImpl<$Res> extends _$ActionModelCopyWithImpl<$Res>
    implements _$ActionModelCopyWith<$Res> {
  __$ActionModelCopyWithImpl(
      _ActionModel _value, $Res Function(_ActionModel) _then)
      : super(_value, (v) => _then(v as _ActionModel));

  @override
  _ActionModel get _value => super._value as _ActionModel;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object html_url = freezed,
  }) {
    return _then(_ActionModel(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      html_url: html_url == freezed ? _value.html_url : html_url as String,
    ));
  }
}

class _$_ActionModel implements _ActionModel {
  const _$_ActionModel({this.id, this.name, this.html_url});

  @override
  final String id;
  @override
  final String name;
  @override
  final String html_url;

  @override
  String toString() {
    return 'ActionModel(id: $id, name: $name, html_url: $html_url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActionModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.html_url, html_url) ||
                const DeepCollectionEquality()
                    .equals(other.html_url, html_url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(html_url);

  @override
  _$ActionModelCopyWith<_ActionModel> get copyWith =>
      __$ActionModelCopyWithImpl<_ActionModel>(this, _$identity);
}

abstract class _ActionModel implements ActionModel {
  const factory _ActionModel({String id, String name, String html_url}) =
      _$_ActionModel;

  @override
  String get id;
  @override
  String get name;
  @override
  String get html_url;
  @override
  _$ActionModelCopyWith<_ActionModel> get copyWith;
}
