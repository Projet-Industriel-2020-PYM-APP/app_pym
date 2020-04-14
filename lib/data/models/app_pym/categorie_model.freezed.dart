// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'categorie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CategorieModelTearOff {
  const _$CategorieModelTearOff();

  _CategorieModel call({String id, String name, ActionModel action}) {
    return _CategorieModel(
      id: id,
      name: name,
      action: action,
    );
  }
}

// ignore: unused_element
const $CategorieModel = _$CategorieModelTearOff();

mixin _$CategorieModel {
  String get id;
  String get name;
  ActionModel get action;

  $CategorieModelCopyWith<CategorieModel> get copyWith;
}

abstract class $CategorieModelCopyWith<$Res> {
  factory $CategorieModelCopyWith(
          CategorieModel value, $Res Function(CategorieModel) then) =
      _$CategorieModelCopyWithImpl<$Res>;
  $Res call({String id, String name, ActionModel action});
}

class _$CategorieModelCopyWithImpl<$Res>
    implements $CategorieModelCopyWith<$Res> {
  _$CategorieModelCopyWithImpl(this._value, this._then);

  final CategorieModel _value;
  // ignore: unused_field
  final $Res Function(CategorieModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object action = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      action: action == freezed ? _value.action : action as ActionModel,
    ));
  }
}

abstract class _$CategorieModelCopyWith<$Res>
    implements $CategorieModelCopyWith<$Res> {
  factory _$CategorieModelCopyWith(
          _CategorieModel value, $Res Function(_CategorieModel) then) =
      __$CategorieModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, ActionModel action});
}

class __$CategorieModelCopyWithImpl<$Res>
    extends _$CategorieModelCopyWithImpl<$Res>
    implements _$CategorieModelCopyWith<$Res> {
  __$CategorieModelCopyWithImpl(
      _CategorieModel _value, $Res Function(_CategorieModel) _then)
      : super(_value, (v) => _then(v as _CategorieModel));

  @override
  _CategorieModel get _value => super._value as _CategorieModel;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object action = freezed,
  }) {
    return _then(_CategorieModel(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      action: action == freezed ? _value.action : action as ActionModel,
    ));
  }
}

class _$_CategorieModel implements _CategorieModel {
  const _$_CategorieModel({this.id, this.name, this.action});

  @override
  final String id;
  @override
  final String name;
  @override
  final ActionModel action;

  @override
  String toString() {
    return 'CategorieModel(id: $id, name: $name, action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CategorieModel &&
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
  _$CategorieModelCopyWith<_CategorieModel> get copyWith =>
      __$CategorieModelCopyWithImpl<_CategorieModel>(this, _$identity);
}

abstract class _CategorieModel implements CategorieModel {
  const factory _CategorieModel({String id, String name, ActionModel action}) =
      _$_CategorieModel;

  @override
  String get id;
  @override
  String get name;
  @override
  ActionModel get action;
  @override
  _$CategorieModelCopyWith<_CategorieModel> get copyWith;
}
