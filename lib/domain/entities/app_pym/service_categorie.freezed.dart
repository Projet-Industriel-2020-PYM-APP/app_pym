// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'service_categorie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ServiceCategorieTearOff {
  const _$ServiceCategorieTearOff();

  _ServiceCategorie call(
      {@required int id,
      @required @nullable String name,
      @required @nullable Color primary_color,
      @required @nullable String img_url,
      @required @nullable Action action}) {
    return _ServiceCategorie(
      id: id,
      name: name,
      primary_color: primary_color,
      img_url: img_url,
      action: action,
    );
  }
}

// ignore: unused_element
const $ServiceCategorie = _$ServiceCategorieTearOff();

mixin _$ServiceCategorie {
  int get id;
  @nullable
  String get name;
  @nullable
  Color get primary_color;
  @nullable
  String get img_url;
  @nullable
  Action get action;

  $ServiceCategorieCopyWith<ServiceCategorie> get copyWith;
}

abstract class $ServiceCategorieCopyWith<$Res> {
  factory $ServiceCategorieCopyWith(
          ServiceCategorie value, $Res Function(ServiceCategorie) then) =
      _$ServiceCategorieCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @nullable String name,
      @nullable Color primary_color,
      @nullable String img_url,
      @nullable Action action});

  $ActionCopyWith<$Res> get action;
}

class _$ServiceCategorieCopyWithImpl<$Res>
    implements $ServiceCategorieCopyWith<$Res> {
  _$ServiceCategorieCopyWithImpl(this._value, this._then);

  final ServiceCategorie _value;
  // ignore: unused_field
  final $Res Function(ServiceCategorie) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object primary_color = freezed,
    Object img_url = freezed,
    Object action = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      primary_color: primary_color == freezed
          ? _value.primary_color
          : primary_color as Color,
      img_url: img_url == freezed ? _value.img_url : img_url as String,
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

abstract class _$ServiceCategorieCopyWith<$Res>
    implements $ServiceCategorieCopyWith<$Res> {
  factory _$ServiceCategorieCopyWith(
          _ServiceCategorie value, $Res Function(_ServiceCategorie) then) =
      __$ServiceCategorieCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @nullable String name,
      @nullable Color primary_color,
      @nullable String img_url,
      @nullable Action action});

  @override
  $ActionCopyWith<$Res> get action;
}

class __$ServiceCategorieCopyWithImpl<$Res>
    extends _$ServiceCategorieCopyWithImpl<$Res>
    implements _$ServiceCategorieCopyWith<$Res> {
  __$ServiceCategorieCopyWithImpl(
      _ServiceCategorie _value, $Res Function(_ServiceCategorie) _then)
      : super(_value, (v) => _then(v as _ServiceCategorie));

  @override
  _ServiceCategorie get _value => super._value as _ServiceCategorie;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object primary_color = freezed,
    Object img_url = freezed,
    Object action = freezed,
  }) {
    return _then(_ServiceCategorie(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      primary_color: primary_color == freezed
          ? _value.primary_color
          : primary_color as Color,
      img_url: img_url == freezed ? _value.img_url : img_url as String,
      action: action == freezed ? _value.action : action as Action,
    ));
  }
}

class _$_ServiceCategorie
    with DiagnosticableTreeMixin
    implements _ServiceCategorie {
  const _$_ServiceCategorie(
      {@required this.id,
      @required @nullable this.name,
      @required @nullable this.primary_color,
      @required @nullable this.img_url,
      @required @nullable this.action})
      : assert(id != null);

  @override
  final int id;
  @override
  @nullable
  final String name;
  @override
  @nullable
  final Color primary_color;
  @override
  @nullable
  final String img_url;
  @override
  @nullable
  final Action action;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServiceCategorie(id: $id, name: $name, primary_color: $primary_color, img_url: $img_url, action: $action)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServiceCategorie'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('primary_color', primary_color))
      ..add(DiagnosticsProperty('img_url', img_url))
      ..add(DiagnosticsProperty('action', action));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ServiceCategorie &&
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
  _$ServiceCategorieCopyWith<_ServiceCategorie> get copyWith =>
      __$ServiceCategorieCopyWithImpl<_ServiceCategorie>(this, _$identity);
}

abstract class _ServiceCategorie implements ServiceCategorie {
  const factory _ServiceCategorie(
      {@required int id,
      @required @nullable String name,
      @required @nullable Color primary_color,
      @required @nullable String img_url,
      @required @nullable Action action}) = _$_ServiceCategorie;

  @override
  int get id;
  @override
  @nullable
  String get name;
  @override
  @nullable
  Color get primary_color;
  @override
  @nullable
  String get img_url;
  @override
  @nullable
  Action get action;
  @override
  _$ServiceCategorieCopyWith<_ServiceCategorie> get copyWith;
}
