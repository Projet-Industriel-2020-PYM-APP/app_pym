// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'entreprise_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
EntrepriseModel _$EntrepriseModelFromJson(Map<String, dynamic> json) {
  return _EntrepriseModel.fromJson(json);
}

class _$EntrepriseModelTearOff {
  const _$EntrepriseModelTearOff();

  _EntrepriseModel call(
      {@required @HiveField(0) int id,
      @required @HiveField(1) String nom,
      @required @HiveField(2) String site_internet,
      @required @HiveField(3) int nb_salaries,
      @required @HiveField(4) String telephone,
      @required @HiveField(5) String mail,
      @required @HiveField(6) String logo,
      @required @HiveField(7) int idBatiment}) {
    return _EntrepriseModel(
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
const $EntrepriseModel = _$EntrepriseModelTearOff();

mixin _$EntrepriseModel {
  @HiveField(0)
  int get id;
  @HiveField(1)
  String get nom;
  @HiveField(2)
  String get site_internet;
  @HiveField(3)
  int get nb_salaries;
  @HiveField(4)
  String get telephone;
  @HiveField(5)
  String get mail;
  @HiveField(6)
  String get logo;
  @HiveField(7)
  int get idBatiment;

  Map<String, dynamic> toJson();
  $EntrepriseModelCopyWith<EntrepriseModel> get copyWith;
}

abstract class $EntrepriseModelCopyWith<$Res> {
  factory $EntrepriseModelCopyWith(
          EntrepriseModel value, $Res Function(EntrepriseModel) then) =
      _$EntrepriseModelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String nom,
      @HiveField(2) String site_internet,
      @HiveField(3) int nb_salaries,
      @HiveField(4) String telephone,
      @HiveField(5) String mail,
      @HiveField(6) String logo,
      @HiveField(7) int idBatiment});
}

class _$EntrepriseModelCopyWithImpl<$Res>
    implements $EntrepriseModelCopyWith<$Res> {
  _$EntrepriseModelCopyWithImpl(this._value, this._then);

  final EntrepriseModel _value;
  // ignore: unused_field
  final $Res Function(EntrepriseModel) _then;

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

abstract class _$EntrepriseModelCopyWith<$Res>
    implements $EntrepriseModelCopyWith<$Res> {
  factory _$EntrepriseModelCopyWith(
          _EntrepriseModel value, $Res Function(_EntrepriseModel) then) =
      __$EntrepriseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String nom,
      @HiveField(2) String site_internet,
      @HiveField(3) int nb_salaries,
      @HiveField(4) String telephone,
      @HiveField(5) String mail,
      @HiveField(6) String logo,
      @HiveField(7) int idBatiment});
}

class __$EntrepriseModelCopyWithImpl<$Res>
    extends _$EntrepriseModelCopyWithImpl<$Res>
    implements _$EntrepriseModelCopyWith<$Res> {
  __$EntrepriseModelCopyWithImpl(
      _EntrepriseModel _value, $Res Function(_EntrepriseModel) _then)
      : super(_value, (v) => _then(v as _EntrepriseModel));

  @override
  _EntrepriseModel get _value => super._value as _EntrepriseModel;

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
    return _then(_EntrepriseModel(
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

@HiveType(typeId: 2)
@JsonSerializable(explicitToJson: true)
class _$_EntrepriseModel
    with DiagnosticableTreeMixin
    implements _EntrepriseModel {
  const _$_EntrepriseModel(
      {@required @HiveField(0) this.id,
      @required @HiveField(1) this.nom,
      @required @HiveField(2) this.site_internet,
      @required @HiveField(3) this.nb_salaries,
      @required @HiveField(4) this.telephone,
      @required @HiveField(5) this.mail,
      @required @HiveField(6) this.logo,
      @required @HiveField(7) this.idBatiment})
      : assert(id != null),
        assert(nom != null),
        assert(site_internet != null),
        assert(nb_salaries != null),
        assert(telephone != null),
        assert(mail != null),
        assert(logo != null),
        assert(idBatiment != null);

  factory _$_EntrepriseModel.fromJson(Map<String, dynamic> json) =>
      _$_$_EntrepriseModelFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final String nom;
  @override
  @HiveField(2)
  final String site_internet;
  @override
  @HiveField(3)
  final int nb_salaries;
  @override
  @HiveField(4)
  final String telephone;
  @override
  @HiveField(5)
  final String mail;
  @override
  @HiveField(6)
  final String logo;
  @override
  @HiveField(7)
  final int idBatiment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EntrepriseModel(id: $id, nom: $nom, site_internet: $site_internet, nb_salaries: $nb_salaries, telephone: $telephone, mail: $mail, logo: $logo, idBatiment: $idBatiment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EntrepriseModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('nom', nom))
      ..add(DiagnosticsProperty('site_internet', site_internet))
      ..add(DiagnosticsProperty('nb_salaries', nb_salaries))
      ..add(DiagnosticsProperty('telephone', telephone))
      ..add(DiagnosticsProperty('mail', mail))
      ..add(DiagnosticsProperty('logo', logo))
      ..add(DiagnosticsProperty('idBatiment', idBatiment));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EntrepriseModel &&
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
  _$EntrepriseModelCopyWith<_EntrepriseModel> get copyWith =>
      __$EntrepriseModelCopyWithImpl<_EntrepriseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EntrepriseModelToJson(this);
  }
}

abstract class _EntrepriseModel implements EntrepriseModel {
  const factory _EntrepriseModel(
      {@required @HiveField(0) int id,
      @required @HiveField(1) String nom,
      @required @HiveField(2) String site_internet,
      @required @HiveField(3) int nb_salaries,
      @required @HiveField(4) String telephone,
      @required @HiveField(5) String mail,
      @required @HiveField(6) String logo,
      @required @HiveField(7) int idBatiment}) = _$_EntrepriseModel;

  factory _EntrepriseModel.fromJson(Map<String, dynamic> json) =
      _$_EntrepriseModel.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  String get nom;
  @override
  @HiveField(2)
  String get site_internet;
  @override
  @HiveField(3)
  int get nb_salaries;
  @override
  @HiveField(4)
  String get telephone;
  @override
  @HiveField(5)
  String get mail;
  @override
  @HiveField(6)
  String get logo;
  @override
  @HiveField(7)
  int get idBatiment;
  @override
  _$EntrepriseModelCopyWith<_EntrepriseModel> get copyWith;
}
