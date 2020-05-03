// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'service_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ServiceModel _$ServiceModelFromJson(Map<String, dynamic> json) {
  return _ServiceModel.fromJson(json);
}

class _$ServiceModelTearOff {
  const _$ServiceModelTearOff();

  _ServiceModel call(
      {@required @HiveField(0) int id,
      @required @nullable @HiveField(1) String title,
      @required @nullable @HiveField(2) int categorie_id,
      @required @nullable @HiveField(3) String subtitle,
      @required @nullable @HiveField(4) String address,
      @required @nullable @HiveField(5) String img_url,
      @required @nullable @HiveField(6) List<ActionModel> actions}) {
    return _ServiceModel(
      id: id,
      title: title,
      categorie_id: categorie_id,
      subtitle: subtitle,
      address: address,
      img_url: img_url,
      actions: actions,
    );
  }
}

// ignore: unused_element
const $ServiceModel = _$ServiceModelTearOff();

mixin _$ServiceModel {
  @HiveField(0)
  int get id;
  @nullable
  @HiveField(1)
  String get title;
  @nullable
  @HiveField(2)
  int get categorie_id;
  @nullable
  @HiveField(3)
  String get subtitle;
  @nullable
  @HiveField(4)
  String get address;
  @nullable
  @HiveField(5)
  String get img_url;
  @nullable
  @HiveField(6)
  List<ActionModel> get actions;

  Map<String, dynamic> toJson();
  $ServiceModelCopyWith<ServiceModel> get copyWith;
}

abstract class $ServiceModelCopyWith<$Res> {
  factory $ServiceModelCopyWith(
          ServiceModel value, $Res Function(ServiceModel) then) =
      _$ServiceModelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) int id,
      @nullable @HiveField(1) String title,
      @nullable @HiveField(2) int categorie_id,
      @nullable @HiveField(3) String subtitle,
      @nullable @HiveField(4) String address,
      @nullable @HiveField(5) String img_url,
      @nullable @HiveField(6) List<ActionModel> actions});
}

class _$ServiceModelCopyWithImpl<$Res> implements $ServiceModelCopyWith<$Res> {
  _$ServiceModelCopyWithImpl(this._value, this._then);

  final ServiceModel _value;
  // ignore: unused_field
  final $Res Function(ServiceModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object categorie_id = freezed,
    Object subtitle = freezed,
    Object address = freezed,
    Object img_url = freezed,
    Object actions = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      categorie_id:
          categorie_id == freezed ? _value.categorie_id : categorie_id as int,
      subtitle: subtitle == freezed ? _value.subtitle : subtitle as String,
      address: address == freezed ? _value.address : address as String,
      img_url: img_url == freezed ? _value.img_url : img_url as String,
      actions:
          actions == freezed ? _value.actions : actions as List<ActionModel>,
    ));
  }
}

abstract class _$ServiceModelCopyWith<$Res>
    implements $ServiceModelCopyWith<$Res> {
  factory _$ServiceModelCopyWith(
          _ServiceModel value, $Res Function(_ServiceModel) then) =
      __$ServiceModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) int id,
      @nullable @HiveField(1) String title,
      @nullable @HiveField(2) int categorie_id,
      @nullable @HiveField(3) String subtitle,
      @nullable @HiveField(4) String address,
      @nullable @HiveField(5) String img_url,
      @nullable @HiveField(6) List<ActionModel> actions});
}

class __$ServiceModelCopyWithImpl<$Res> extends _$ServiceModelCopyWithImpl<$Res>
    implements _$ServiceModelCopyWith<$Res> {
  __$ServiceModelCopyWithImpl(
      _ServiceModel _value, $Res Function(_ServiceModel) _then)
      : super(_value, (v) => _then(v as _ServiceModel));

  @override
  _ServiceModel get _value => super._value as _ServiceModel;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object categorie_id = freezed,
    Object subtitle = freezed,
    Object address = freezed,
    Object img_url = freezed,
    Object actions = freezed,
  }) {
    return _then(_ServiceModel(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      categorie_id:
          categorie_id == freezed ? _value.categorie_id : categorie_id as int,
      subtitle: subtitle == freezed ? _value.subtitle : subtitle as String,
      address: address == freezed ? _value.address : address as String,
      img_url: img_url == freezed ? _value.img_url : img_url as String,
      actions:
          actions == freezed ? _value.actions : actions as List<ActionModel>,
    ));
  }
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 8)
class _$_ServiceModel implements _ServiceModel {
  const _$_ServiceModel(
      {@required @HiveField(0) this.id,
      @required @nullable @HiveField(1) this.title,
      @required @nullable @HiveField(2) this.categorie_id,
      @required @nullable @HiveField(3) this.subtitle,
      @required @nullable @HiveField(4) this.address,
      @required @nullable @HiveField(5) this.img_url,
      @required @nullable @HiveField(6) this.actions})
      : assert(id != null);

  factory _$_ServiceModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ServiceModelFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @nullable
  @HiveField(1)
  final String title;
  @override
  @nullable
  @HiveField(2)
  final int categorie_id;
  @override
  @nullable
  @HiveField(3)
  final String subtitle;
  @override
  @nullable
  @HiveField(4)
  final String address;
  @override
  @nullable
  @HiveField(5)
  final String img_url;
  @override
  @nullable
  @HiveField(6)
  final List<ActionModel> actions;

  @override
  String toString() {
    return 'ServiceModel(id: $id, title: $title, categorie_id: $categorie_id, subtitle: $subtitle, address: $address, img_url: $img_url, actions: $actions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ServiceModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.categorie_id, categorie_id) ||
                const DeepCollectionEquality()
                    .equals(other.categorie_id, categorie_id)) &&
            (identical(other.subtitle, subtitle) ||
                const DeepCollectionEquality()
                    .equals(other.subtitle, subtitle)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.img_url, img_url) ||
                const DeepCollectionEquality()
                    .equals(other.img_url, img_url)) &&
            (identical(other.actions, actions) ||
                const DeepCollectionEquality().equals(other.actions, actions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(categorie_id) ^
      const DeepCollectionEquality().hash(subtitle) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(img_url) ^
      const DeepCollectionEquality().hash(actions);

  @override
  _$ServiceModelCopyWith<_ServiceModel> get copyWith =>
      __$ServiceModelCopyWithImpl<_ServiceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ServiceModelToJson(this);
  }
}

abstract class _ServiceModel implements ServiceModel {
  const factory _ServiceModel(
          {@required @HiveField(0) int id,
          @required @nullable @HiveField(1) String title,
          @required @nullable @HiveField(2) int categorie_id,
          @required @nullable @HiveField(3) String subtitle,
          @required @nullable @HiveField(4) String address,
          @required @nullable @HiveField(5) String img_url,
          @required @nullable @HiveField(6) List<ActionModel> actions}) =
      _$_ServiceModel;

  factory _ServiceModel.fromJson(Map<String, dynamic> json) =
      _$_ServiceModel.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @nullable
  @HiveField(1)
  String get title;
  @override
  @nullable
  @HiveField(2)
  int get categorie_id;
  @override
  @nullable
  @HiveField(3)
  String get subtitle;
  @override
  @nullable
  @HiveField(4)
  String get address;
  @override
  @nullable
  @HiveField(5)
  String get img_url;
  @override
  @nullable
  @HiveField(6)
  List<ActionModel> get actions;
  @override
  _$ServiceModelCopyWith<_ServiceModel> get copyWith;
}
