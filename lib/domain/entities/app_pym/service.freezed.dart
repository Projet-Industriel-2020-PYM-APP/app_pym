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
      {@required int id,
      @required @nullable String title,
      @required @nullable int categorie_id,
      @required @nullable String subtitle,
      @required @nullable String address,
      @required @nullable String telephone,
      @required @nullable String website,
      @required @nullable String img_url,
      @required @nullable List<Action> actions}) {
    return _Service(
      id: id,
      title: title,
      categorie_id: categorie_id,
      subtitle: subtitle,
      address: address,
      telephone: telephone,
      website: website,
      img_url: img_url,
      actions: actions,
    );
  }
}

// ignore: unused_element
const $Service = _$ServiceTearOff();

mixin _$Service {
  int get id;
  @nullable
  String get title;
  @nullable
  int get categorie_id;
  @nullable
  String get subtitle;
  @nullable
  String get address;
  @nullable
  String get telephone;
  @nullable
  String get website;
  @nullable
  String get img_url;
  @nullable
  List<Action> get actions;

  $ServiceCopyWith<Service> get copyWith;
}

abstract class $ServiceCopyWith<$Res> {
  factory $ServiceCopyWith(Service value, $Res Function(Service) then) =
      _$ServiceCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @nullable String title,
      @nullable int categorie_id,
      @nullable String subtitle,
      @nullable String address,
      @nullable String telephone,
      @nullable String website,
      @nullable String img_url,
      @nullable List<Action> actions});
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
    Object categorie_id = freezed,
    Object subtitle = freezed,
    Object address = freezed,
    Object telephone = freezed,
    Object website = freezed,
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
      telephone: telephone == freezed ? _value.telephone : telephone as String,
      website: website == freezed ? _value.website : website as String,
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
      {int id,
      @nullable String title,
      @nullable int categorie_id,
      @nullable String subtitle,
      @nullable String address,
      @nullable String telephone,
      @nullable String website,
      @nullable String img_url,
      @nullable List<Action> actions});
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
    Object categorie_id = freezed,
    Object subtitle = freezed,
    Object address = freezed,
    Object telephone = freezed,
    Object website = freezed,
    Object img_url = freezed,
    Object actions = freezed,
  }) {
    return _then(_Service(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      categorie_id:
          categorie_id == freezed ? _value.categorie_id : categorie_id as int,
      subtitle: subtitle == freezed ? _value.subtitle : subtitle as String,
      address: address == freezed ? _value.address : address as String,
      telephone: telephone == freezed ? _value.telephone : telephone as String,
      website: website == freezed ? _value.website : website as String,
      img_url: img_url == freezed ? _value.img_url : img_url as String,
      actions: actions == freezed ? _value.actions : actions as List<Action>,
    ));
  }
}

class _$_Service implements _Service {
  const _$_Service(
      {@required this.id,
      @required @nullable this.title,
      @required @nullable this.categorie_id,
      @required @nullable this.subtitle,
      @required @nullable this.address,
      @required @nullable this.telephone,
      @required @nullable this.website,
      @required @nullable this.img_url,
      @required @nullable this.actions})
      : assert(id != null);

  @override
  final int id;
  @override
  @nullable
  final String title;
  @override
  @nullable
  final int categorie_id;
  @override
  @nullable
  final String subtitle;
  @override
  @nullable
  final String address;
  @override
  @nullable
  final String telephone;
  @override
  @nullable
  final String website;
  @override
  @nullable
  final String img_url;
  @override
  @nullable
  final List<Action> actions;

  @override
  String toString() {
    return 'Service(id: $id, title: $title, categorie_id: $categorie_id, subtitle: $subtitle, address: $address, telephone: $telephone, website: $website, img_url: $img_url, actions: $actions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Service &&
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
            (identical(other.telephone, telephone) ||
                const DeepCollectionEquality()
                    .equals(other.telephone, telephone)) &&
            (identical(other.website, website) ||
                const DeepCollectionEquality()
                    .equals(other.website, website)) &&
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
      const DeepCollectionEquality().hash(telephone) ^
      const DeepCollectionEquality().hash(website) ^
      const DeepCollectionEquality().hash(img_url) ^
      const DeepCollectionEquality().hash(actions);

  @override
  _$ServiceCopyWith<_Service> get copyWith =>
      __$ServiceCopyWithImpl<_Service>(this, _$identity);
}

abstract class _Service implements Service {
  const factory _Service(
      {@required int id,
      @required @nullable String title,
      @required @nullable int categorie_id,
      @required @nullable String subtitle,
      @required @nullable String address,
      @required @nullable String telephone,
      @required @nullable String website,
      @required @nullable String img_url,
      @required @nullable List<Action> actions}) = _$_Service;

  @override
  int get id;
  @override
  @nullable
  String get title;
  @override
  @nullable
  int get categorie_id;
  @override
  @nullable
  String get subtitle;
  @override
  @nullable
  String get address;
  @override
  @nullable
  String get telephone;
  @override
  @nullable
  String get website;
  @override
  @nullable
  String get img_url;
  @override
  @nullable
  List<Action> get actions;
  @override
  _$ServiceCopyWith<_Service> get copyWith;
}
