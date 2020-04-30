// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'contact.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ContactTearOff {
  const _$ContactTearOff();

  _Contact call(
      {String id,
      String html_url,
      String address,
      String email,
      String name,
      String telephone,
      String user_id}) {
    return _Contact(
      id: id,
      html_url: html_url,
      address: address,
      email: email,
      name: name,
      telephone: telephone,
      user_id: user_id,
    );
  }
}

// ignore: unused_element
const $Contact = _$ContactTearOff();

mixin _$Contact {
  String get id;
  String get html_url;
  String get address;
  String get email;
  String get name;
  String get telephone;
  String get user_id;

  $ContactCopyWith<Contact> get copyWith;
}

abstract class $ContactCopyWith<$Res> {
  factory $ContactCopyWith(Contact value, $Res Function(Contact) then) =
      _$ContactCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String html_url,
      String address,
      String email,
      String name,
      String telephone,
      String user_id});
}

class _$ContactCopyWithImpl<$Res> implements $ContactCopyWith<$Res> {
  _$ContactCopyWithImpl(this._value, this._then);

  final Contact _value;
  // ignore: unused_field
  final $Res Function(Contact) _then;

  @override
  $Res call({
    Object id = freezed,
    Object html_url = freezed,
    Object address = freezed,
    Object email = freezed,
    Object name = freezed,
    Object telephone = freezed,
    Object user_id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      html_url: html_url == freezed ? _value.html_url : html_url as String,
      address: address == freezed ? _value.address : address as String,
      email: email == freezed ? _value.email : email as String,
      name: name == freezed ? _value.name : name as String,
      telephone: telephone == freezed ? _value.telephone : telephone as String,
      user_id: user_id == freezed ? _value.user_id : user_id as String,
    ));
  }
}

abstract class _$ContactCopyWith<$Res> implements $ContactCopyWith<$Res> {
  factory _$ContactCopyWith(_Contact value, $Res Function(_Contact) then) =
      __$ContactCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String html_url,
      String address,
      String email,
      String name,
      String telephone,
      String user_id});
}

class __$ContactCopyWithImpl<$Res> extends _$ContactCopyWithImpl<$Res>
    implements _$ContactCopyWith<$Res> {
  __$ContactCopyWithImpl(_Contact _value, $Res Function(_Contact) _then)
      : super(_value, (v) => _then(v as _Contact));

  @override
  _Contact get _value => super._value as _Contact;

  @override
  $Res call({
    Object id = freezed,
    Object html_url = freezed,
    Object address = freezed,
    Object email = freezed,
    Object name = freezed,
    Object telephone = freezed,
    Object user_id = freezed,
  }) {
    return _then(_Contact(
      id: id == freezed ? _value.id : id as String,
      html_url: html_url == freezed ? _value.html_url : html_url as String,
      address: address == freezed ? _value.address : address as String,
      email: email == freezed ? _value.email : email as String,
      name: name == freezed ? _value.name : name as String,
      telephone: telephone == freezed ? _value.telephone : telephone as String,
      user_id: user_id == freezed ? _value.user_id : user_id as String,
    ));
  }
}

class _$_Contact implements _Contact {
  const _$_Contact(
      {this.id,
      this.html_url,
      this.address,
      this.email,
      this.name,
      this.telephone,
      this.user_id});

  @override
  final String id;
  @override
  final String html_url;
  @override
  final String address;
  @override
  final String email;
  @override
  final String name;
  @override
  final String telephone;
  @override
  final String user_id;

  @override
  String toString() {
    return 'Contact(id: $id, html_url: $html_url, address: $address, email: $email, name: $name, telephone: $telephone, user_id: $user_id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Contact &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.html_url, html_url) ||
                const DeepCollectionEquality()
                    .equals(other.html_url, html_url)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.telephone, telephone) ||
                const DeepCollectionEquality()
                    .equals(other.telephone, telephone)) &&
            (identical(other.user_id, user_id) ||
                const DeepCollectionEquality().equals(other.user_id, user_id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(html_url) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(telephone) ^
      const DeepCollectionEquality().hash(user_id);

  @override
  _$ContactCopyWith<_Contact> get copyWith =>
      __$ContactCopyWithImpl<_Contact>(this, _$identity);
}

abstract class _Contact implements Contact {
  const factory _Contact(
      {String id,
      String html_url,
      String address,
      String email,
      String name,
      String telephone,
      String user_id}) = _$_Contact;

  @override
  String get id;
  @override
  String get html_url;
  @override
  String get address;
  @override
  String get email;
  @override
  String get name;
  @override
  String get telephone;
  @override
  String get user_id;
  @override
  _$ContactCopyWith<_Contact> get copyWith;
}
