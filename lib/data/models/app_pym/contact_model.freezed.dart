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
      {@required @HiveField(0) int id,
      @required @nullable @HiveField(1) String nom,
      @required @nullable @HiveField(2) String prenom,
      @required @nullable @HiveField(3) String mail,
      @required @nullable @HiveField(4) String telephone,
      @required @nullable @HiveField(5) int idEntreprise}) {
    return _ContactModel(
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
const $ContactModel = _$ContactModelTearOff();

mixin _$ContactModel {
  @HiveField(0)
  int get id;
  @nullable
  @HiveField(1)
  String get nom;
  @nullable
  @HiveField(2)
  String get prenom;
  @nullable
  @HiveField(3)
  String get mail;
  @nullable
  @HiveField(4)
  String get telephone;
  @nullable
  @HiveField(5)
  int get idEntreprise;

  Map<String, dynamic> toJson();
  $ContactModelCopyWith<ContactModel> get copyWith;
}

abstract class $ContactModelCopyWith<$Res> {
  factory $ContactModelCopyWith(
          ContactModel value, $Res Function(ContactModel) then) =
      _$ContactModelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) int id,
      @nullable @HiveField(1) String nom,
      @nullable @HiveField(2) String prenom,
      @nullable @HiveField(3) String mail,
      @nullable @HiveField(4) String telephone,
      @nullable @HiveField(5) int idEntreprise});
}

class _$ContactModelCopyWithImpl<$Res> implements $ContactModelCopyWith<$Res> {
  _$ContactModelCopyWithImpl(this._value, this._then);

  final ContactModel _value;
  // ignore: unused_field
  final $Res Function(ContactModel) _then;

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

abstract class _$ContactModelCopyWith<$Res>
    implements $ContactModelCopyWith<$Res> {
  factory _$ContactModelCopyWith(
          _ContactModel value, $Res Function(_ContactModel) then) =
      __$ContactModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) int id,
      @nullable @HiveField(1) String nom,
      @nullable @HiveField(2) String prenom,
      @nullable @HiveField(3) String mail,
      @nullable @HiveField(4) String telephone,
      @nullable @HiveField(5) int idEntreprise});
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
    Object nom = freezed,
    Object prenom = freezed,
    Object mail = freezed,
    Object telephone = freezed,
    Object idEntreprise = freezed,
  }) {
    return _then(_ContactModel(
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

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 6)
class _$_ContactModel implements _ContactModel {
  const _$_ContactModel(
      {@required @HiveField(0) this.id,
      @required @nullable @HiveField(1) this.nom,
      @required @nullable @HiveField(2) this.prenom,
      @required @nullable @HiveField(3) this.mail,
      @required @nullable @HiveField(4) this.telephone,
      @required @nullable @HiveField(5) this.idEntreprise})
      : assert(id != null);

  factory _$_ContactModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ContactModelFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @nullable
  @HiveField(1)
  final String nom;
  @override
  @nullable
  @HiveField(2)
  final String prenom;
  @override
  @nullable
  @HiveField(3)
  final String mail;
  @override
  @nullable
  @HiveField(4)
  final String telephone;
  @override
  @nullable
  @HiveField(5)
  final int idEntreprise;

  @override
  String toString() {
    return 'ContactModel(id: $id, nom: $nom, prenom: $prenom, mail: $mail, telephone: $telephone, idEntreprise: $idEntreprise)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ContactModel &&
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
  _$ContactModelCopyWith<_ContactModel> get copyWith =>
      __$ContactModelCopyWithImpl<_ContactModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ContactModelToJson(this);
  }
}

abstract class _ContactModel implements ContactModel {
  const factory _ContactModel(
      {@required @HiveField(0) int id,
      @required @nullable @HiveField(1) String nom,
      @required @nullable @HiveField(2) String prenom,
      @required @nullable @HiveField(3) String mail,
      @required @nullable @HiveField(4) String telephone,
      @required @nullable @HiveField(5) int idEntreprise}) = _$_ContactModel;

  factory _ContactModel.fromJson(Map<String, dynamic> json) =
      _$_ContactModel.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @nullable
  @HiveField(1)
  String get nom;
  @override
  @nullable
  @HiveField(2)
  String get prenom;
  @override
  @nullable
  @HiveField(3)
  String get mail;
  @override
  @nullable
  @HiveField(4)
  String get telephone;
  @override
  @nullable
  @HiveField(5)
  int get idEntreprise;
  @override
  _$ContactModelCopyWith<_ContactModel> get copyWith;
}
