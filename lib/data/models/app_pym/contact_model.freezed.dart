// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'contact_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ContactModel _$ContactModelFromJson(Map<String, dynamic> json) {
  return _ContactModel.fromJson(json);
}

class _$ContactModelTearOff {
  const _$ContactModelTearOff();

  _ContactModel call(
      {String id,
      String html_url,
      String address,
      String name,
      String email,
      String telephone,
      String user_id}) {
    return _ContactModel(
      id: id,
      html_url: html_url,
      address: address,
      name: name,
      email: email,
      telephone: telephone,
      user_id: user_id,
    );
  }
}

// ignore: unused_element
const $ContactModel = _$ContactModelTearOff();

mixin _$ContactModel {
  String get id;
  String get html_url;
  String get address;
  String get name;
  String get email;
  String get telephone;
  String get user_id;

  Map<String, dynamic> toJson();
  $ContactModelCopyWith<ContactModel> get copyWith;
}

abstract class $ContactModelCopyWith<$Res> {
  factory $ContactModelCopyWith(
          ContactModel value, $Res Function(ContactModel) then) =
      _$ContactModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String html_url,
      String address,
      String name,
      String email,
      String telephone,
      String user_id});
}

class _$ContactModelCopyWithImpl<$Res> implements $ContactModelCopyWith<$Res> {
  _$ContactModelCopyWithImpl(this._value, this._then);

  final ContactModel _value;
  // ignore: unused_field
  final $Res Function(ContactModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object html_url = freezed,
    Object address = freezed,
    Object name = freezed,
    Object email = freezed,
    Object telephone = freezed,
    Object user_id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      html_url: html_url == freezed ? _value.html_url : html_url as String,
      address: address == freezed ? _value.address : address as String,
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
      telephone: telephone == freezed ? _value.telephone : telephone as String,
      user_id: user_id == freezed ? _value.user_id : user_id as String,
    ));
  }
}

abstract class _$ContactModelCopyWith<$Res>
    implements $ContactModelCopyWith<$Res> {
  factory _$ContactModelCopyWith(
          _ContactModel value, $Res Function(_ContactModel) then) =
      __$ContactModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String html_url,
      String address,
      String name,
      String email,
      String telephone,
      String user_id});
}

class __$ContactModelCopyWithImpl<$Res> extends _$ContactModelCopyWithImpl<$Res>
    implements _$ContactModelCopyWith<$Res> {
  __$ContactModelCopyWithImpl(
      _ContactModel _value, $Res Function(_ContactModel) _then)
      : super(_value, (v) => _then(v as _ContactModel));

  @override
  _ContactModel get _value => super._value as _ContactModel;

  @override
  $Res call({
    Object id = freezed,
    Object html_url = freezed,
    Object address = freezed,
    Object name = freezed,
    Object email = freezed,
    Object telephone = freezed,
    Object user_id = freezed,
  }) {
    return _then(_ContactModel(
      id: id == freezed ? _value.id : id as String,
      html_url: html_url == freezed ? _value.html_url : html_url as String,
      address: address == freezed ? _value.address : address as String,
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
      telephone: telephone == freezed ? _value.telephone : telephone as String,
      user_id: user_id == freezed ? _value.user_id : user_id as String,
    ));
  }
}

@JsonSerializable()
class _$_ContactModel implements _ContactModel {
  const _$_ContactModel(
      {this.id,
      this.html_url,
      this.address,
      this.name,
      this.email,
      this.telephone,
      this.user_id});

  factory _$_ContactModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ContactModelFromJson(json);

  @override
  final String id;
  @override
  final String html_url;
  @override
  final String address;
  @override
  final String name;
  @override
  final String email;
  @override
  final String telephone;
  @override
  final String user_id;

  @override
  String toString() {
    return 'ContactModel(id: $id, html_url: $html_url, address: $address, name: $name, email: $email, telephone: $telephone, user_id: $user_id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ContactModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.html_url, html_url) ||
                const DeepCollectionEquality()
                    .equals(other.html_url, html_url)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
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
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(telephone) ^
      const DeepCollectionEquality().hash(user_id);

  @override
  _$ContactModelCopyWith<_ContactModel> get copyWith =>
      __$ContactModelCopyWithImpl<_ContactModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ContactModelToJson(this);
  }
}

abstract class _ContactModel implements ContactModel {
  const factory _ContactModel(
      {String id,
      String html_url,
      String address,
      String name,
      String email,
      String telephone,
      String user_id}) = _$_ContactModel;

  factory _ContactModel.fromJson(Map<String, dynamic> json) =
      _$_ContactModel.fromJson;

  @override
  String get id;
  @override
  String get html_url;
  @override
  String get address;
  @override
  String get name;
  @override
  String get email;
  @override
  String get telephone;
  @override
  String get user_id;
  @override
  _$ContactModelCopyWith<_ContactModel> get copyWith;
}
