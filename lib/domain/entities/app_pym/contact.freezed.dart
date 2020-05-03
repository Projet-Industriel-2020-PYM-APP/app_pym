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
      {@required int id,
      @required @nullable String nom,
      @required @nullable String prenom,
      @required @nullable String mail,
      @required @nullable String telephone,
      @required @nullable int idEntreprise}) {
    return _Contact(
      id: id,
      nom: nom,
      prenom: prenom,
      mail: mail,
      telephone: telephone,
      idEntreprise: idEntreprise,
    );
  }
}

// ignore: unused_element
const $Contact = _$ContactTearOff();

mixin _$Contact {
  int get id;
  @nullable
  String get nom;
  @nullable
  String get prenom;
  @nullable
  String get mail;
  @nullable
  String get telephone;
  @nullable
  int get idEntreprise;

  $ContactCopyWith<Contact> get copyWith;
}

abstract class $ContactCopyWith<$Res> {
  factory $ContactCopyWith(Contact value, $Res Function(Contact) then) =
      _$ContactCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @nullable String nom,
      @nullable String prenom,
      @nullable String mail,
      @nullable String telephone,
      @nullable int idEntreprise});
}

class _$ContactCopyWithImpl<$Res> implements $ContactCopyWith<$Res> {
  _$ContactCopyWithImpl(this._value, this._then);

  final Contact _value;
  // ignore: unused_field
  final $Res Function(Contact) _then;

  @override
  $Res call({
    Object id = freezed,
    Object nom = freezed,
    Object prenom = freezed,
    Object mail = freezed,
    Object telephone = freezed,
    Object idEntreprise = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      nom: nom == freezed ? _value.nom : nom as String,
      prenom: prenom == freezed ? _value.prenom : prenom as String,
      mail: mail == freezed ? _value.mail : mail as String,
      telephone: telephone == freezed ? _value.telephone : telephone as String,
      idEntreprise:
          idEntreprise == freezed ? _value.idEntreprise : idEntreprise as int,
    ));
  }
}

abstract class _$ContactCopyWith<$Res> implements $ContactCopyWith<$Res> {
  factory _$ContactCopyWith(_Contact value, $Res Function(_Contact) then) =
      __$ContactCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @nullable String nom,
      @nullable String prenom,
      @nullable String mail,
      @nullable String telephone,
      @nullable int idEntreprise});
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
    Object nom = freezed,
    Object prenom = freezed,
    Object mail = freezed,
    Object telephone = freezed,
    Object idEntreprise = freezed,
  }) {
    return _then(_Contact(
      id: id == freezed ? _value.id : id as int,
      nom: nom == freezed ? _value.nom : nom as String,
      prenom: prenom == freezed ? _value.prenom : prenom as String,
      mail: mail == freezed ? _value.mail : mail as String,
      telephone: telephone == freezed ? _value.telephone : telephone as String,
      idEntreprise:
          idEntreprise == freezed ? _value.idEntreprise : idEntreprise as int,
    ));
  }
}

class _$_Contact implements _Contact {
  const _$_Contact(
      {@required this.id,
      @required @nullable this.nom,
      @required @nullable this.prenom,
      @required @nullable this.mail,
      @required @nullable this.telephone,
      @required @nullable this.idEntreprise})
      : assert(id != null);

  @override
  final int id;
  @override
  @nullable
  final String nom;
  @override
  @nullable
  final String prenom;
  @override
  @nullable
  final String mail;
  @override
  @nullable
  final String telephone;
  @override
  @nullable
  final int idEntreprise;

  @override
  String toString() {
    return 'Contact(id: $id, nom: $nom, prenom: $prenom, mail: $mail, telephone: $telephone, idEntreprise: $idEntreprise)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Contact &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.nom, nom) ||
                const DeepCollectionEquality().equals(other.nom, nom)) &&
            (identical(other.prenom, prenom) ||
                const DeepCollectionEquality().equals(other.prenom, prenom)) &&
            (identical(other.mail, mail) ||
                const DeepCollectionEquality().equals(other.mail, mail)) &&
            (identical(other.telephone, telephone) ||
                const DeepCollectionEquality()
                    .equals(other.telephone, telephone)) &&
            (identical(other.idEntreprise, idEntreprise) ||
                const DeepCollectionEquality()
                    .equals(other.idEntreprise, idEntreprise)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(nom) ^
      const DeepCollectionEquality().hash(prenom) ^
      const DeepCollectionEquality().hash(mail) ^
      const DeepCollectionEquality().hash(telephone) ^
      const DeepCollectionEquality().hash(idEntreprise);

  @override
  _$ContactCopyWith<_Contact> get copyWith =>
      __$ContactCopyWithImpl<_Contact>(this, _$identity);
}

abstract class _Contact implements Contact {
  const factory _Contact(
      {@required int id,
      @required @nullable String nom,
      @required @nullable String prenom,
      @required @nullable String mail,
      @required @nullable String telephone,
      @required @nullable int idEntreprise}) = _$_Contact;

  @override
  int get id;
  @override
  @nullable
  String get nom;
  @override
  @nullable
  String get prenom;
  @override
  @nullable
  String get mail;
  @override
  @nullable
  String get telephone;
  @override
  @nullable
  int get idEntreprise;
  @override
  _$ContactCopyWith<_Contact> get copyWith;
}
