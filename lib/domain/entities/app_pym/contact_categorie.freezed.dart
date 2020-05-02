// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'contact_categorie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ContactCategorieTearOff {
  const _$ContactCategorieTearOff();

  _ContactCategorie call(
      {@required int id,
      @required @nullable String title,
      @required @nullable String subtitle,
      @required @nullable String address,
      @required @nullable String img_url,
      @required @nullable List<Action> actions,
      @required @nullable int contact_id}) {
    return _ContactCategorie(
      id: id,
      title: title,
      subtitle: subtitle,
      address: address,
      img_url: img_url,
      actions: actions,
      contact_id: contact_id,
    );
  }
}

// ignore: unused_element
const $ContactCategorie = _$ContactCategorieTearOff();

mixin _$ContactCategorie {
  int get id;
  @nullable
  String get title;
  @nullable
  String get subtitle;
  @nullable
  String get address;
  @nullable
  String get img_url;
  @nullable
  List<Action> get actions;
  @nullable
  int get contact_id;

  $ContactCategorieCopyWith<ContactCategorie> get copyWith;
}

abstract class $ContactCategorieCopyWith<$Res> {
  factory $ContactCategorieCopyWith(
          ContactCategorie value, $Res Function(ContactCategorie) then) =
      _$ContactCategorieCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @nullable String title,
      @nullable String subtitle,
      @nullable String address,
      @nullable String img_url,
      @nullable List<Action> actions,
      @nullable int contact_id});
}

class _$ContactCategorieCopyWithImpl<$Res>
    implements $ContactCategorieCopyWith<$Res> {
  _$ContactCategorieCopyWithImpl(this._value, this._then);

  final ContactCategorie _value;
  // ignore: unused_field
  final $Res Function(ContactCategorie) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object subtitle = freezed,
    Object address = freezed,
    Object img_url = freezed,
    Object actions = freezed,
    Object contact_id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      subtitle: subtitle == freezed ? _value.subtitle : subtitle as String,
      address: address == freezed ? _value.address : address as String,
      img_url: img_url == freezed ? _value.img_url : img_url as String,
      actions: actions == freezed ? _value.actions : actions as List<Action>,
      contact_id: contact_id == freezed ? _value.contact_id : contact_id as int,
    ));
  }
}

abstract class _$ContactCategorieCopyWith<$Res>
    implements $ContactCategorieCopyWith<$Res> {
  factory _$ContactCategorieCopyWith(
          _ContactCategorie value, $Res Function(_ContactCategorie) then) =
      __$ContactCategorieCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @nullable String title,
      @nullable String subtitle,
      @nullable String address,
      @nullable String img_url,
      @nullable List<Action> actions,
      @nullable int contact_id});
}

class __$ContactCategorieCopyWithImpl<$Res>
    extends _$ContactCategorieCopyWithImpl<$Res>
    implements _$ContactCategorieCopyWith<$Res> {
  __$ContactCategorieCopyWithImpl(
      _ContactCategorie _value, $Res Function(_ContactCategorie) _then)
      : super(_value, (v) => _then(v as _ContactCategorie));

  @override
  _ContactCategorie get _value => super._value as _ContactCategorie;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object subtitle = freezed,
    Object address = freezed,
    Object img_url = freezed,
    Object actions = freezed,
    Object contact_id = freezed,
  }) {
    return _then(_ContactCategorie(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      subtitle: subtitle == freezed ? _value.subtitle : subtitle as String,
      address: address == freezed ? _value.address : address as String,
      img_url: img_url == freezed ? _value.img_url : img_url as String,
      actions: actions == freezed ? _value.actions : actions as List<Action>,
      contact_id: contact_id == freezed ? _value.contact_id : contact_id as int,
    ));
  }
}

class _$_ContactCategorie implements _ContactCategorie {
  const _$_ContactCategorie(
      {@required this.id,
      @required @nullable this.title,
      @required @nullable this.subtitle,
      @required @nullable this.address,
      @required @nullable this.img_url,
      @required @nullable this.actions,
      @required @nullable this.contact_id})
      : assert(id != null);

  @override
  final int id;
  @override
  @nullable
  final String title;
  @override
  @nullable
  final String subtitle;
  @override
  @nullable
  final String address;
  @override
  @nullable
  final String img_url;
  @override
  @nullable
  final List<Action> actions;
  @override
  @nullable
  final int contact_id;

  @override
  String toString() {
    return 'ContactCategorie(id: $id, title: $title, subtitle: $subtitle, address: $address, img_url: $img_url, actions: $actions, contact_id: $contact_id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ContactCategorie &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
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
                const DeepCollectionEquality()
                    .equals(other.actions, actions)) &&
            (identical(other.contact_id, contact_id) ||
                const DeepCollectionEquality()
                    .equals(other.contact_id, contact_id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(subtitle) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(img_url) ^
      const DeepCollectionEquality().hash(actions) ^
      const DeepCollectionEquality().hash(contact_id);

  @override
  _$ContactCategorieCopyWith<_ContactCategorie> get copyWith =>
      __$ContactCategorieCopyWithImpl<_ContactCategorie>(this, _$identity);
}

abstract class _ContactCategorie implements ContactCategorie {
  const factory _ContactCategorie(
      {@required int id,
      @required @nullable String title,
      @required @nullable String subtitle,
      @required @nullable String address,
      @required @nullable String img_url,
      @required @nullable List<Action> actions,
      @required @nullable int contact_id}) = _$_ContactCategorie;

  @override
  int get id;
  @override
  @nullable
  String get title;
  @override
  @nullable
  String get subtitle;
  @override
  @nullable
  String get address;
  @override
  @nullable
  String get img_url;
  @override
  @nullable
  List<Action> get actions;
  @override
  @nullable
  int get contact_id;
  @override
  _$ContactCategorieCopyWith<_ContactCategorie> get copyWith;
}
