// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'contact_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ContactTypeModelTearOff {
  const _$ContactTypeModelTearOff();

  _ContactTypeModel call(
      {String id,
      String title,
      DocumentReference categorie_ref,
      String subtitle,
      String address,
      String img_url,
      List<ActionModel> actions,
      ContactModel contact}) {
    return _ContactTypeModel(
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
const $ContactTypeModel = _$ContactTypeModelTearOff();

mixin _$ContactTypeModel {
  String get id;
  String get title;
  DocumentReference get categorie_ref;
  String get subtitle;
  String get address;
  String get img_url;
  List<ActionModel> get actions;
  ContactModel get contact;

  $ContactTypeModelCopyWith<ContactTypeModel> get copyWith;
}

abstract class $ContactTypeModelCopyWith<$Res> {
  factory $ContactTypeModelCopyWith(
          ContactTypeModel value, $Res Function(ContactTypeModel) then) =
      _$ContactTypeModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      DocumentReference categorie_ref,
      String subtitle,
      String address,
      String img_url,
      List<ActionModel> actions,
      ContactModel contact});

  $ContactModelCopyWith<$Res> get contact;
}

class _$ContactTypeModelCopyWithImpl<$Res>
    implements $ContactTypeModelCopyWith<$Res> {
  _$ContactTypeModelCopyWithImpl(this._value, this._then);

  final ContactTypeModel _value;
  // ignore: unused_field
  final $Res Function(ContactTypeModel) _then;

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
          : categorie_ref as DocumentReference,
      subtitle: subtitle == freezed ? _value.subtitle : subtitle as String,
      address: address == freezed ? _value.address : address as String,
      img_url: img_url == freezed ? _value.img_url : img_url as String,
      actions:
          actions == freezed ? _value.actions : actions as List<ActionModel>,
      contact: contact == freezed ? _value.contact : contact as ContactModel,
    ));
  }

  @override
  $ContactModelCopyWith<$Res> get contact {
    if (_value.contact == null) {
      return null;
    }
    return $ContactModelCopyWith<$Res>(_value.contact, (value) {
      return _then(_value.copyWith(contact: value));
    });
  }
}

abstract class _$ContactTypeModelCopyWith<$Res>
    implements $ContactTypeModelCopyWith<$Res> {
  factory _$ContactTypeModelCopyWith(
          _ContactTypeModel value, $Res Function(_ContactTypeModel) then) =
      __$ContactTypeModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      DocumentReference categorie_ref,
      String subtitle,
      String address,
      String img_url,
      List<ActionModel> actions,
      ContactModel contact});

  @override
  $ContactModelCopyWith<$Res> get contact;
}

class __$ContactTypeModelCopyWithImpl<$Res>
    extends _$ContactTypeModelCopyWithImpl<$Res>
    implements _$ContactTypeModelCopyWith<$Res> {
  __$ContactTypeModelCopyWithImpl(
      _ContactTypeModel _value, $Res Function(_ContactTypeModel) _then)
      : super(_value, (v) => _then(v as _ContactTypeModel));

  @override
  _ContactTypeModel get _value => super._value as _ContactTypeModel;

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
    return _then(_ContactTypeModel(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      categorie_ref: categorie_ref == freezed
          ? _value.categorie_ref
          : categorie_ref as DocumentReference,
      subtitle: subtitle == freezed ? _value.subtitle : subtitle as String,
      address: address == freezed ? _value.address : address as String,
      img_url: img_url == freezed ? _value.img_url : img_url as String,
      actions:
          actions == freezed ? _value.actions : actions as List<ActionModel>,
      contact: contact == freezed ? _value.contact : contact as ContactModel,
    ));
  }
}

class _$_ContactTypeModel implements _ContactTypeModel {
  const _$_ContactTypeModel(
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
  final DocumentReference categorie_ref;
  @override
  final String subtitle;
  @override
  final String address;
  @override
  final String img_url;
  @override
  final List<ActionModel> actions;
  @override
  final ContactModel contact;

  @override
  String toString() {
    return 'ContactTypeModel(id: $id, title: $title, categorie_ref: $categorie_ref, subtitle: $subtitle, address: $address, img_url: $img_url, actions: $actions, contact: $contact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ContactTypeModel &&
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
  _$ContactTypeModelCopyWith<_ContactTypeModel> get copyWith =>
      __$ContactTypeModelCopyWithImpl<_ContactTypeModel>(this, _$identity);
}

abstract class _ContactTypeModel implements ContactTypeModel {
  const factory _ContactTypeModel(
      {String id,
      String title,
      DocumentReference categorie_ref,
      String subtitle,
      String address,
      String img_url,
      List<ActionModel> actions,
      ContactModel contact}) = _$_ContactTypeModel;

  @override
  String get id;
  @override
  String get title;
  @override
  DocumentReference get categorie_ref;
  @override
  String get subtitle;
  @override
  String get address;
  @override
  String get img_url;
  @override
  List<ActionModel> get actions;
  @override
  ContactModel get contact;
  @override
  _$ContactTypeModelCopyWith<_ContactTypeModel> get copyWith;
}
