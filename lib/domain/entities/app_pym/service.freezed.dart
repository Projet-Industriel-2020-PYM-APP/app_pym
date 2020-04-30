// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ServiceTearOff {
  const _$ServiceTearOff();

  _Service call(
      {String id,
      String title,
      String categorie_ref,
      String subtitle,
      String address,
      String img_url,
      List<Action> actions}) {
    return _Service(
      id: id,
      title: title,
      categorie_ref: categorie_ref,
      subtitle: subtitle,
      address: address,
      img_url: img_url,
      actions: actions,
    );
  }
}

// ignore: unused_element
const $Service = _$ServiceTearOff();

mixin _$Service {
  String get id;
  String get title;
  String get categorie_ref;
  String get subtitle;
  String get address;
  String get img_url;
  List<Action> get actions;

  $ServiceCopyWith<Service> get copyWith;
}

abstract class $ServiceCopyWith<$Res> {
  factory $ServiceCopyWith(Service value, $Res Function(Service) then) =
      _$ServiceCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String categorie_ref,
      String subtitle,
      String address,
      String img_url,
      List<Action> actions});
}

class _$ServiceCopyWithImpl<$Res> implements $ServiceCopyWith<$Res> {
  _$ServiceCopyWithImpl(this._value, this._then);

  final Service _value;
  // ignore: unused_field
  final $Res Function(Service) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object categorie_ref = freezed,
    Object subtitle = freezed,
    Object address = freezed,
    Object img_url = freezed,
    Object actions = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      categorie_ref: categorie_ref == freezed
          ? _value.categorie_ref
          : categorie_ref as String,
      subtitle: subtitle == freezed ? _value.subtitle : subtitle as String,
      address: address == freezed ? _value.address : address as String,
      img_url: img_url == freezed ? _value.img_url : img_url as String,
      actions: actions == freezed ? _value.actions : actions as List<Action>,
    ));
  }
}

abstract class _$ServiceCopyWith<$Res> implements $ServiceCopyWith<$Res> {
  factory _$ServiceCopyWith(_Service value, $Res Function(_Service) then) =
      __$ServiceCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String categorie_ref,
      String subtitle,
      String address,
      String img_url,
      List<Action> actions});
}

class __$ServiceCopyWithImpl<$Res> extends _$ServiceCopyWithImpl<$Res>
    implements _$ServiceCopyWith<$Res> {
  __$ServiceCopyWithImpl(_Service _value, $Res Function(_Service) _then)
      : super(_value, (v) => _then(v as _Service));

  @override
  _Service get _value => super._value as _Service;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object categorie_ref = freezed,
    Object subtitle = freezed,
    Object address = freezed,
    Object img_url = freezed,
    Object actions = freezed,
  }) {
    return _then(_Service(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      categorie_ref: categorie_ref == freezed
          ? _value.categorie_ref
          : categorie_ref as String,
      subtitle: subtitle == freezed ? _value.subtitle : subtitle as String,
      address: address == freezed ? _value.address : address as String,
      img_url: img_url == freezed ? _value.img_url : img_url as String,
      actions: actions == freezed ? _value.actions : actions as List<Action>,
    ));
  }
}

class _$_Service implements _Service {
  const _$_Service(
      {this.id,
      this.title,
      this.categorie_ref,
      this.subtitle,
      this.address,
      this.img_url,
      this.actions});

  @override
  final String id;
  @override
  final String title;
  @override
  final String categorie_ref;
  @override
  final String subtitle;
  @override
  final String address;
  @override
  final String img_url;
  @override
  final List<Action> actions;

  @override
  String toString() {
    return 'Service(id: $id, title: $title, categorie_ref: $categorie_ref, subtitle: $subtitle, address: $address, img_url: $img_url, actions: $actions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Service &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.categorie_ref, categorie_ref) ||
                const DeepCollectionEquality()
                    .equals(other.categorie_ref, categorie_ref)) &&
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
      const DeepCollectionEquality().hash(categorie_ref) ^
      const DeepCollectionEquality().hash(subtitle) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(img_url) ^
      const DeepCollectionEquality().hash(actions);

  @override
  _$ServiceCopyWith<_Service> get copyWith =>
      __$ServiceCopyWithImpl<_Service>(this, _$identity);
}

abstract class _Service implements Service {
  const factory _Service(
      {String id,
      String title,
      String categorie_ref,
      String subtitle,
      String address,
      String img_url,
      List<Action> actions}) = _$_Service;

  @override
  String get id;
  @override
  String get title;
  @override
  String get categorie_ref;
  @override
  String get subtitle;
  @override
  String get address;
  @override
  String get img_url;
  @override
  List<Action> get actions;
  @override
  _$ServiceCopyWith<_Service> get copyWith;
}
