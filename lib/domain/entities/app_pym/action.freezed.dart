// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ActionTearOff {
  const _$ActionTearOff();

  _Action call({String id, String name, String html_url}) {
    return _Action(
      id: id,
      name: name,
      html_url: html_url,
    );
  }
}

// ignore: unused_element
const $Action = _$ActionTearOff();

mixin _$Action {
  String get id;
  String get name;
  String get html_url;

  $ActionCopyWith<Action> get copyWith;
}

abstract class $ActionCopyWith<$Res> {
  factory $ActionCopyWith(Action value, $Res Function(Action) then) =
      _$ActionCopyWithImpl<$Res>;
  $Res call({String id, String name, String html_url});
}

class _$ActionCopyWithImpl<$Res> implements $ActionCopyWith<$Res> {
  _$ActionCopyWithImpl(this._value, this._then);

  final Action _value;
  // ignore: unused_field
  final $Res Function(Action) _then;

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

abstract class _$ActionCopyWith<$Res> implements $ActionCopyWith<$Res> {
  factory _$ActionCopyWith(_Action value, $Res Function(_Action) then) =
      __$ActionCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String html_url});
}

class __$ActionCopyWithImpl<$Res> extends _$ActionCopyWithImpl<$Res>
    implements _$ActionCopyWith<$Res> {
  __$ActionCopyWithImpl(_Action _value, $Res Function(_Action) _then)
      : super(_value, (v) => _then(v as _Action));

  @override
  _Action get _value => super._value as _Action;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object html_url = freezed,
  }) {
    return _then(_Action(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      html_url: html_url == freezed ? _value.html_url : html_url as String,
    ));
  }
}

class _$_Action implements _Action {
  const _$_Action({this.id, this.name, this.html_url});

  @override
  final String id;
  @override
  final String name;
  @override
  final String html_url;

  @override
  String toString() {
    return 'Action(id: $id, name: $name, html_url: $html_url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Action &&
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
  _$ActionCopyWith<_Action> get copyWith =>
      __$ActionCopyWithImpl<_Action>(this, _$identity);
}

abstract class _Action implements Action {
  const factory _Action({String id, String name, String html_url}) = _$_Action;

  @override
  String get id;
  @override
  String get name;
  @override
  String get html_url;
  @override
  _$ActionCopyWith<_Action> get copyWith;
}
