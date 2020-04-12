// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'entreprise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$EntrepriseTearOff {
  const _$EntrepriseTearOff();

  _Entreprise call(
      {@required int id,
      @required String nom,
      @required String site_internet,
      @required int nb_salaries,
      @required String telephone,
      @required String mail,
      @required String logo,
      @required int idBatiment}) {
    return _Entreprise(
      id: id,
      nom: nom,
      site_internet: site_internet,
      nb_salaries: nb_salaries,
      telephone: telephone,
      mail: mail,
      logo: logo,
      idBatiment: idBatiment,
    );
  }
}

// ignore: unused_element
const $Entreprise = _$EntrepriseTearOff();

mixin _$Entreprise {
  int get id;
  String get nom;
  String get site_internet;
  int get nb_salaries;
  String get telephone;
  String get mail;
  String get logo;
  int get idBatiment;

  $EntrepriseCopyWith<Entreprise> get copyWith;
}

abstract class $EntrepriseCopyWith<$Res> {
  factory $EntrepriseCopyWith(
          Entreprise value, $Res Function(Entreprise) then) =
      _$EntrepriseCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String nom,
      String site_internet,
      int nb_salaries,
      String telephone,
      String mail,
      String logo,
      int idBatiment});
}

class _$EntrepriseCopyWithImpl<$Res> implements $EntrepriseCopyWith<$Res> {
  _$EntrepriseCopyWithImpl(this._value, this._then);

  final Entreprise _value;
  // ignore: unused_field
  final $Res Function(Entreprise) _then;

  @override
  $Res call({
    Object id = freezed,
    Object nom = freezed,
    Object site_internet = freezed,
    Object nb_salaries = freezed,
    Object telephone = freezed,
    Object mail = freezed,
    Object logo = freezed,
    Object idBatiment = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      nom: nom == freezed ? _value.nom : nom as String,
      site_internet: site_internet == freezed
          ? _value.site_internet
          : site_internet as String,
      nb_salaries:
          nb_salaries == freezed ? _value.nb_salaries : nb_salaries as int,
      telephone: telephone == freezed ? _value.telephone : telephone as String,
      mail: mail == freezed ? _value.mail : mail as String,
      logo: logo == freezed ? _value.logo : logo as String,
      idBatiment: idBatiment == freezed ? _value.idBatiment : idBatiment as int,
    ));
  }
}

abstract class _$EntrepriseCopyWith<$Res> implements $EntrepriseCopyWith<$Res> {
  factory _$EntrepriseCopyWith(
          _Entreprise value, $Res Function(_Entreprise) then) =
      __$EntrepriseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String nom,
      String site_internet,
      int nb_salaries,
      String telephone,
      String mail,
      String logo,
      int idBatiment});
}

class __$EntrepriseCopyWithImpl<$Res> extends _$EntrepriseCopyWithImpl<$Res>
    implements _$EntrepriseCopyWith<$Res> {
  __$EntrepriseCopyWithImpl(
      _Entreprise _value, $Res Function(_Entreprise) _then)
      : super(_value, (v) => _then(v as _Entreprise));

  @override
  _Entreprise get _value => super._value as _Entreprise;

  @override
  $Res call({
    Object id = freezed,
    Object nom = freezed,
    Object site_internet = freezed,
    Object nb_salaries = freezed,
    Object telephone = freezed,
    Object mail = freezed,
    Object logo = freezed,
    Object idBatiment = freezed,
  }) {
    return _then(_Entreprise(
      id: id == freezed ? _value.id : id as int,
      nom: nom == freezed ? _value.nom : nom as String,
      site_internet: site_internet == freezed
          ? _value.site_internet
          : site_internet as String,
      nb_salaries:
          nb_salaries == freezed ? _value.nb_salaries : nb_salaries as int,
      telephone: telephone == freezed ? _value.telephone : telephone as String,
      mail: mail == freezed ? _value.mail : mail as String,
      logo: logo == freezed ? _value.logo : logo as String,
      idBatiment: idBatiment == freezed ? _value.idBatiment : idBatiment as int,
    ));
  }
}

class _$_Entreprise implements _Entreprise {
  const _$_Entreprise(
      {@required this.id,
      @required this.nom,
      @required this.site_internet,
      @required this.nb_salaries,
      @required this.telephone,
      @required this.mail,
      @required this.logo,
      @required this.idBatiment})
      : assert(id != null),
        assert(nom != null),
        assert(site_internet != null),
        assert(nb_salaries != null),
        assert(telephone != null),
        assert(mail != null),
        assert(logo != null),
        assert(idBatiment != null);

  @override
  final int id;
  @override
  final String nom;
  @override
  final String site_internet;
  @override
  final int nb_salaries;
  @override
  final String telephone;
  @override
  final String mail;
  @override
  final String logo;
  @override
  final int idBatiment;

  @override
  String toString() {
    return 'Entreprise(id: $id, nom: $nom, site_internet: $site_internet, nb_salaries: $nb_salaries, telephone: $telephone, mail: $mail, logo: $logo, idBatiment: $idBatiment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Entreprise &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.nom, nom) ||
                const DeepCollectionEquality().equals(other.nom, nom)) &&
            (identical(other.site_internet, site_internet) ||
                const DeepCollectionEquality()
                    .equals(other.site_internet, site_internet)) &&
            (identical(other.nb_salaries, nb_salaries) ||
                const DeepCollectionEquality()
                    .equals(other.nb_salaries, nb_salaries)) &&
            (identical(other.telephone, telephone) ||
                const DeepCollectionEquality()
                    .equals(other.telephone, telephone)) &&
            (identical(other.mail, mail) ||
                const DeepCollectionEquality().equals(other.mail, mail)) &&
            (identical(other.logo, logo) ||
                const DeepCollectionEquality().equals(other.logo, logo)) &&
            (identical(other.idBatiment, idBatiment) ||
                const DeepCollectionEquality()
                    .equals(other.idBatiment, idBatiment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(nom) ^
      const DeepCollectionEquality().hash(site_internet) ^
      const DeepCollectionEquality().hash(nb_salaries) ^
      const DeepCollectionEquality().hash(telephone) ^
      const DeepCollectionEquality().hash(mail) ^
      const DeepCollectionEquality().hash(logo) ^
      const DeepCollectionEquality().hash(idBatiment);

  @override
  _$EntrepriseCopyWith<_Entreprise> get copyWith =>
      __$EntrepriseCopyWithImpl<_Entreprise>(this, _$identity);
}

abstract class _Entreprise implements Entreprise {
  const factory _Entreprise(
      {@required int id,
      @required String nom,
      @required String site_internet,
      @required int nb_salaries,
      @required String telephone,
      @required String mail,
      @required String logo,
      @required int idBatiment}) = _$_Entreprise;

  @override
  int get id;
  @override
  String get nom;
  @override
  String get site_internet;
  @override
  int get nb_salaries;
  @override
  String get telephone;
  @override
  String get mail;
  @override
  String get logo;
  @override
  int get idBatiment;
  @override
  _$EntrepriseCopyWith<_Entreprise> get copyWith;
}
