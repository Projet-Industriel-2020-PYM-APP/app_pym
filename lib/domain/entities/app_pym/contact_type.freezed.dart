// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'contact_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ContactTypeTearOff {
  const _$ContactTypeTearOff();

  _ContactType call(
      {String id,
      String title,
      String categorie_ref,
      String subtitle,
      String address,
      String img_url,
      List<Action> actions,
      Contact contact}) {
    return _ContactType(
      id: id,
      title: title,
      categorie_ref: categorie_ref,
      subtitle: subtitle,
      address: address,
      img_url: img_url,
      actions: actions,
      contact: contact,
    );
  }
}

// ignore: unused_element
const $ContactType = _$ContactTypeTearOff();

mixin _$ContactType {
  String get id;
  String get title;
  String get categorie_ref;
  String get subtitle;
  String get address;
  String get img_url;
  List<Action> get actions;
  Contact get contact;

  $ContactTypeCopyWith<ContactType> get copyWith;
}

abstract class $ContactTypeCopyWith<$Res> {
  factory $ContactTypeCopyWith(
          ContactType value, $Res Function(ContactType) then) =
      _$ContactTypeCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String categorie_ref,
      String subtitle,
      String address,
      String img_url,
      List<Action> actions,
      Contact contact});

  $ContactCopyWith<$Res> get contact;
}

class _$ContactTypeCopyWithImpl<$Res> implements $ContactTypeCopyWith<$Res> {
  _$ContactTypeCopyWithImpl(this._value, this._then);

  final ContactType _value;
  // ignore: unused_field
  final $Res Function(ContactType) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object categorie_ref = freezed,
    Object subtitle = freezed,
    Object address = freezed,
    Object img_url = freezed,
    Object actions = freezed,
    Object contact = freezed,
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
      contact: contact == freezed ? _value.contact : contact as Contact,
    ));
  }

  @override
  $ContactCopyWith<$Res> get contact {
    if (_value.contact == null) {
      return null;
    }
    return $ContactCopyWith<$Res>(_value.contact, (value) {
      return _then(_value.copyWith(contact: value));
    });
  }
}

abstract class _$ContactTypeCopyWith<$Res>
    implements $ContactTypeCopyWith<$Res> {
  factory _$ContactTypeCopyWith(
          _ContactType value, $Res Function(_ContactType) then) =
      __$ContactTypeCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String categorie_ref,
      String subtitle,
      String address,
      String img_url,
      List<Action> actions,
      Contact contact});

  @override
  $ContactCopyWith<$Res> get contact;
}

class __$ContactTypeCopyWithImpl<$Res> extends _$ContactTypeCopyWithImpl<$Res>
    implements _$ContactTypeCopyWith<$Res> {
  __$ContactTypeCopyWithImpl(
      _ContactType _value, $Res Function(_ContactType) _then)
      : super(_value, (v) => _then(v as _ContactType));

  @override
  _ContactType get _value => super._value as _ContactType;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object categorie_ref = freezed,
    Object subtitle = freezed,
    Object address = freezed,
    Object img_url = freezed,
    Object actions = freezed,
    Object contact = freezed,
  }) {
    return _then(_ContactType(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      categorie_ref: categorie_ref == freezed
          ? _value.categorie_ref
          : categorie_ref as String,
      subtitle: subtitle == freezed ? _value.subtitle : subtitle as String,
      address: address == freezed ? _value.address : address as String,
      img_url: img_url == freezed ? _value.img_url : img_url as String,
      actions: actions == freezed ? _value.actions : actions as List<Action>,
      contact: contact == freezed ? _value.contact : contact as Contact,
    ));
  }
}

class _$_ContactType implements _ContactType {
  const _$_ContactType(
      {this.id,
      this.title,
      this.categorie_ref,
      this.subtitle,
      this.address,
      this.img_url,
      this.actions,
      this.contact});

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
  final Contact contact;

  @override
  String toString() {
    return 'ContactType(id: $id, title: $title, categorie_ref: $categorie_ref, subtitle: $subtitle, address: $address, img_url: $img_url, actions: $actions, contact: $contact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ContactType &&
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
                const DeepCollectionEquality()
                    .equals(other.actions, actions)) &&
            (identical(other.contact, contact) ||
                const DeepCollectionEquality().equals(other.contact, contact)));
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
      const DeepCollectionEquality().hash(actions) ^
      const DeepCollectionEquality().hash(contact);

  @override
  _$ContactTypeCopyWith<_ContactType> get copyWith =>
      __$ContactTypeCopyWithImpl<_ContactType>(this, _$identity);
}

abstract class _ContactType implements ContactType {
  const factory _ContactType(
      {String id,
      String title,
      String categorie_ref,
      String subtitle,
      String address,
      String img_url,
      List<Action> actions,
      Contact contact}) = _$_ContactType;

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
  Contact get contact;
  @override
  _$ContactTypeCopyWith<_ContactType> get copyWith;
}
