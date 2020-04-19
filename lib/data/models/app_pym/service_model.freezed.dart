// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'service_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ServiceModelTearOff {
  const _$ServiceModelTearOff();

  _ServiceModel call(
      {String id,
      String title,
      String categorie_id,
      String subtitle,
      String address,
      String img_url,
      List<ActionModel> actions}) {
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
  String get id;
  String get title;
  String get categorie_id;
  String get subtitle;
  String get address;
  String get img_url;
  List<ActionModel> get actions;

  $ServiceModelCopyWith<ServiceModel> get copyWith;
}

abstract class $ServiceModelCopyWith<$Res> {
  factory $ServiceModelCopyWith(
          ServiceModel value, $Res Function(ServiceModel) then) =
      _$ServiceModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String categorie_id,
      String subtitle,
      String address,
      String img_url,
      List<ActionModel> actions});
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
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      categorie_id: categorie_id == freezed
          ? _value.categorie_id
          : categorie_id as String,
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
      {String id,
      String title,
      String categorie_id,
      String subtitle,
      String address,
      String img_url,
      List<ActionModel> actions});
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
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      categorie_id: categorie_id == freezed
          ? _value.categorie_id
          : categorie_id as String,
      subtitle: subtitle == freezed ? _value.subtitle : subtitle as String,
      address: address == freezed ? _value.address : address as String,
      img_url: img_url == freezed ? _value.img_url : img_url as String,
      actions:
          actions == freezed ? _value.actions : actions as List<ActionModel>,
    ));
  }
}

class _$_ServiceModel implements _ServiceModel {
  const _$_ServiceModel(
      {this.id,
      this.title,
      this.categorie_id,
      this.subtitle,
      this.address,
      this.img_url,
      this.actions});

  @override
  final String id;
  @override
  final String title;
  @override
  final String categorie_id;
  @override
  final String subtitle;
  @override
  final String address;
  @override
  final String img_url;
  @override
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
}

abstract class _ServiceModel implements ServiceModel {
  const factory _ServiceModel(
      {String id,
      String title,
      String categorie_id,
      String subtitle,
      String address,
      String img_url,
      List<ActionModel> actions}) = _$_ServiceModel;

  @override
  String get id;
  @override
  String get title;
  @override
  String get categorie_id;
  @override
  String get subtitle;
  @override
  String get address;
  @override
  String get img_url;
  @override
  List<ActionModel> get actions;
  @override
  _$ServiceModelCopyWith<_ServiceModel> get copyWith;
}
