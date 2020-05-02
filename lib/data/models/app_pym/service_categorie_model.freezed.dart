// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'service_categorie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ServiceCategorieModel _$ServiceCategorieModelFromJson(
    Map<String, dynamic> json) {
  return _ServiceCategorieModel.fromJson(json);
}

class _$ServiceCategorieModelTearOff {
  const _$ServiceCategorieModelTearOff();

  _ServiceCategorieModel call(
      {@required @HiveField(0) int id,
      @required @nullable @HiveField(1) String name,
      @required @nullable @HiveField(2) String primary_color,
      @required @nullable @HiveField(3) String img_url,
      @required @nullable @HiveField(4) ActionModel action}) {
    return _ServiceCategorieModel(
      id: id,
      name: name,
      primary_color: primary_color,
      img_url: img_url,
      action: action,
    );
  }
}

// ignore: unused_element
const $ServiceCategorieModel = _$ServiceCategorieModelTearOff();

mixin _$ServiceCategorieModel {
  @HiveField(0)
  int get id;
  @nullable
  @HiveField(1)
  String get name;
  @nullable
  @HiveField(2)
  String get primary_color;
  @nullable
  @HiveField(3)
  String get img_url;
  @nullable
  @HiveField(4)
  ActionModel get action;

  Map<String, dynamic> toJson();
  $ServiceCategorieModelCopyWith<ServiceCategorieModel> get copyWith;
}

abstract class $ServiceCategorieModelCopyWith<$Res> {
  factory $ServiceCategorieModelCopyWith(ServiceCategorieModel value,
          $Res Function(ServiceCategorieModel) then) =
      _$ServiceCategorieModelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) int id,
      @nullable @HiveField(1) String name,
      @nullable @HiveField(2) String primary_color,
      @nullable @HiveField(3) String img_url,
      @nullable @HiveField(4) ActionModel action});

  $ActionModelCopyWith<$Res> get action;
}

class _$ServiceCategorieModelCopyWithImpl<$Res>
    implements $ServiceCategorieModelCopyWith<$Res> {
  _$ServiceCategorieModelCopyWithImpl(this._value, this._then);

  final ServiceCategorieModel _value;
  // ignore: unused_field
  final $Res Function(ServiceCategorieModel) _then;

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

abstract class _$ServiceCategorieModelCopyWith<$Res>
    implements $ServiceCategorieModelCopyWith<$Res> {
  factory _$ServiceCategorieModelCopyWith(_ServiceCategorieModel value,
          $Res Function(_ServiceCategorieModel) then) =
      __$ServiceCategorieModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) int id,
      @nullable @HiveField(1) String name,
      @nullable @HiveField(2) String primary_color,
      @nullable @HiveField(3) String img_url,
      @nullable @HiveField(4) ActionModel action});

  @override
  $ActionModelCopyWith<$Res> get action;
}

class __$ServiceCategorieModelCopyWithImpl<$Res>
    extends _$ServiceCategorieModelCopyWithImpl<$Res>
    implements _$ServiceCategorieModelCopyWith<$Res> {
  __$ServiceCategorieModelCopyWithImpl(_ServiceCategorieModel _value,
      $Res Function(_ServiceCategorieModel) _then)
      : super(_value, (v) => _then(v as _ServiceCategorieModel));

  @override
  _ServiceCategorieModel get _value => super._value as _ServiceCategorieModel;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object primary_color = freezed,
    Object img_url = freezed,
    Object action = freezed,
  }) {
    return _then(_ServiceCategorieModel(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      primary_color: primary_color == freezed
          ? _value.primary_color
          : primary_color as String,
      img_url: img_url == freezed ? _value.img_url : img_url as String,
      action: action == freezed ? _value.action : action as ActionModel,
    ));
  }
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 5)
class _$_ServiceCategorieModel
    with DiagnosticableTreeMixin
    implements _ServiceCategorieModel {
  const _$_ServiceCategorieModel(
      {@required @HiveField(0) this.id,
      @required @nullable @HiveField(1) this.name,
      @required @nullable @HiveField(2) this.primary_color,
      @required @nullable @HiveField(3) this.img_url,
      @required @nullable @HiveField(4) this.action})
      : assert(id != null);

  factory _$_ServiceCategorieModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ServiceCategorieModelFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @nullable
  @HiveField(1)
  final String name;
  @override
  @nullable
  @HiveField(2)
  final String primary_color;
  @override
  @nullable
  @HiveField(3)
  final String img_url;
  @override
  @nullable
  @HiveField(4)
  final ActionModel action;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServiceCategorieModel(id: $id, name: $name, primary_color: $primary_color, img_url: $img_url, action: $action)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServiceCategorieModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('primary_color', primary_color))
      ..add(DiagnosticsProperty('img_url', img_url))
      ..add(DiagnosticsProperty('action', action));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ServiceCategorieModel &&
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
  _$ServiceCategorieModelCopyWith<_ServiceCategorieModel> get copyWith =>
      __$ServiceCategorieModelCopyWithImpl<_ServiceCategorieModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ServiceCategorieModelToJson(this);
  }
}

abstract class _ServiceCategorieModel implements ServiceCategorieModel {
  const factory _ServiceCategorieModel(
          {@required @HiveField(0) int id,
          @required @nullable @HiveField(1) String name,
          @required @nullable @HiveField(2) String primary_color,
          @required @nullable @HiveField(3) String img_url,
          @required @nullable @HiveField(4) ActionModel action}) =
      _$_ServiceCategorieModel;

  factory _ServiceCategorieModel.fromJson(Map<String, dynamic> json) =
      _$_ServiceCategorieModel.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @nullable
  @HiveField(1)
  String get name;
  @override
  @nullable
  @HiveField(2)
  String get primary_color;
  @override
  @nullable
  @HiveField(3)
  String get img_url;
  @override
  @nullable
  @HiveField(4)
  ActionModel get action;
  @override
  _$ServiceCategorieModelCopyWith<_ServiceCategorieModel> get copyWith;
}
