// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'categorie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CategorieModelTearOff {
  const _$CategorieModelTearOff();

  _CategorieModel call(
      {String id,
      String name,
      String primary_color,
      String img_url,
      ActionModel action}) {
    return _CategorieModel(
      id: id,
      name: name,
      primary_color: primary_color,
      img_url: img_url,
      action: action,
    );
  }
}

// ignore: unused_element
const $CategorieModel = _$CategorieModelTearOff();

mixin _$CategorieModel {
  String get id;
  String get name;
  String get primary_color;
  String get img_url;
  ActionModel get action;

  $CategorieModelCopyWith<CategorieModel> get copyWith;
}

abstract class $CategorieModelCopyWith<$Res> {
  factory $CategorieModelCopyWith(
          CategorieModel value, $Res Function(CategorieModel) then) =
      _$CategorieModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String primary_color,
      String img_url,
      ActionModel action});

  $ActionModelCopyWith<$Res> get action;
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
    Object primary_color = freezed,
    Object img_url = freezed,
    Object action = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      primary_color: primary_color == freezed
          ? _value.primary_color
          : primary_color as String,
      img_url: img_url == freezed ? _value.img_url : img_url as String,
      action: action == freezed ? _value.action : action as ActionModel,
    ));
  }

  @override
  $ActionModelCopyWith<$Res> get action {
    if (_value.action == null) {
      return null;
    }
    return $ActionModelCopyWith<$Res>(_value.action, (value) {
      return _then(_value.copyWith(action: value));
    });
  }
}

abstract class _$CategorieModelCopyWith<$Res>
    implements $CategorieModelCopyWith<$Res> {
  factory _$CategorieModelCopyWith(
          _CategorieModel value, $Res Function(_CategorieModel) then) =
      __$CategorieModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String primary_color,
      String img_url,
      ActionModel action});

  @override
  $ActionModelCopyWith<$Res> get action;
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
    Object primary_color = freezed,
    Object img_url = freezed,
    Object action = freezed,
  }) {
    return _then(_CategorieModel(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      primary_color: primary_color == freezed
          ? _value.primary_color
          : primary_color as String,
      img_url: img_url == freezed ? _value.img_url : img_url as String,
      action: action == freezed ? _value.action : action as ActionModel,
    ));
  }
}

class _$_CategorieModel
    with DiagnosticableTreeMixin
    implements _CategorieModel {
  const _$_CategorieModel(
      {this.id, this.name, this.primary_color, this.img_url, this.action});

  @override
  final String id;
  @override
  final String name;
  @override
  final String primary_color;
  @override
  final String img_url;
  @override
  final ActionModel action;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategorieModel(id: $id, name: $name, primary_color: $primary_color, img_url: $img_url, action: $action)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategorieModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('primary_color', primary_color))
      ..add(DiagnosticsProperty('img_url', img_url))
      ..add(DiagnosticsProperty('action', action));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CategorieModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.primary_color, primary_color) ||
                const DeepCollectionEquality()
                    .equals(other.primary_color, primary_color)) &&
            (identical(other.img_url, img_url) ||
                const DeepCollectionEquality()
                    .equals(other.img_url, img_url)) &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(primary_color) ^
      const DeepCollectionEquality().hash(img_url) ^
      const DeepCollectionEquality().hash(action);

  @override
  _$CategorieModelCopyWith<_CategorieModel> get copyWith =>
      __$CategorieModelCopyWithImpl<_CategorieModel>(this, _$identity);
}

abstract class _CategorieModel implements CategorieModel {
  const factory _CategorieModel(
      {String id,
      String name,
      String primary_color,
      String img_url,
      ActionModel action}) = _$_CategorieModel;

  @override
  String get id;
  @override
  String get name;
  @override
  String get primary_color;
  @override
  String get img_url;
  @override
  ActionModel get action;
  @override
  _$CategorieModelCopyWith<_CategorieModel> get copyWith;
}
