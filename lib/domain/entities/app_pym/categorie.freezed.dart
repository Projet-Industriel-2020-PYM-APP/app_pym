// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'categorie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CategorieTearOff {
  const _$CategorieTearOff();

  _Categorie call({String id, String name, Action action}) {
    return _Categorie(
      id: id,
      name: name,
      action: action,
    );
  }
}

// ignore: unused_element
const $Categorie = _$CategorieTearOff();

mixin _$Categorie {
  String get id;
  String get name;
  Action get action;

  $CategorieCopyWith<Categorie> get copyWith;
}

abstract class $CategorieCopyWith<$Res> {
  factory $CategorieCopyWith(Categorie value, $Res Function(Categorie) then) =
      _$CategorieCopyWithImpl<$Res>;
  $Res call({String id, String name, Action action});

  $ActionCopyWith<$Res> get action;
}

class _$CategorieCopyWithImpl<$Res> implements $CategorieCopyWith<$Res> {
  _$CategorieCopyWithImpl(this._value, this._then);

  final Categorie _value;
  // ignore: unused_field
  final $Res Function(Categorie) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object action = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      action: action == freezed ? _value.action : action as Action,
    ));
  }

  @override
  $ActionCopyWith<$Res> get action {
    if (_value.action == null) {
      return null;
    }
    return $ActionCopyWith<$Res>(_value.action, (value) {
      return _then(_value.copyWith(action: value));
    });
  }
}

abstract class _$CategorieCopyWith<$Res> implements $CategorieCopyWith<$Res> {
  factory _$CategorieCopyWith(
          _Categorie value, $Res Function(_Categorie) then) =
      __$CategorieCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, Action action});

  @override
  $ActionCopyWith<$Res> get action;
}

class __$CategorieCopyWithImpl<$Res> extends _$CategorieCopyWithImpl<$Res>
    implements _$CategorieCopyWith<$Res> {
  __$CategorieCopyWithImpl(_Categorie _value, $Res Function(_Categorie) _then)
      : super(_value, (v) => _then(v as _Categorie));

  @override
  _Categorie get _value => super._value as _Categorie;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object action = freezed,
  }) {
    return _then(_Categorie(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      action: action == freezed ? _value.action : action as Action,
    ));
  }
}

class _$_Categorie implements _Categorie {
  const _$_Categorie({this.id, this.name, this.action});

  @override
  final String id;
  @override
  final String name;
  @override
  final Action action;

  @override
  String toString() {
    return 'Categorie(id: $id, name: $name, action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Categorie &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(action);

  @override
  _$CategorieCopyWith<_Categorie> get copyWith =>
      __$CategorieCopyWithImpl<_Categorie>(this, _$identity);
}

abstract class _Categorie implements Categorie {
  const factory _Categorie({String id, String name, Action action}) =
      _$_Categorie;

  @override
  String get id;
  @override
  String get name;
  @override
  Action get action;
  @override
  _$CategorieCopyWith<_Categorie> get copyWith;
}
