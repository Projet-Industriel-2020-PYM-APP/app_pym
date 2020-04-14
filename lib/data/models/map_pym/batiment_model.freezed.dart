// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'batiment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
BatimentModel _$BatimentModelFromJson(Map<String, dynamic> json) {
  return _BatimentModel.fromJson(json);
}

class _$BatimentModelTearOff {
  const _$BatimentModelTearOff();

  _BatimentModel call(
      {@required @HiveField(0) int id,
      @required @HiveField(1) String nom,
      @required @HiveField(2) int nbEtage,
      @required @HiveField(3) String description,
      @required @HiveField(4) bool accesHandicape,
      @required @HiveField(5) String url,
      @required @HiveField(6) String adresse}) {
    return _BatimentModel(
      id: id,
      nom: nom,
      nbEtage: nbEtage,
      description: description,
      accesHandicape: accesHandicape,
      url: url,
      adresse: adresse,
    );
  }
}

// ignore: unused_element
const $BatimentModel = _$BatimentModelTearOff();

mixin _$BatimentModel {
  @HiveField(0)
  int get id;
  @HiveField(1)
  String get nom;
  @HiveField(2)
  int get nbEtage;
  @HiveField(3)
  String get description;
  @HiveField(4)
  bool get accesHandicape;
  @HiveField(5)
  String get url;
  @HiveField(6)
  String get adresse;

  Map<String, dynamic> toJson();
  $BatimentModelCopyWith<BatimentModel> get copyWith;
}

abstract class $BatimentModelCopyWith<$Res> {
  factory $BatimentModelCopyWith(
          BatimentModel value, $Res Function(BatimentModel) then) =
      _$BatimentModelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String nom,
      @HiveField(2) int nbEtage,
      @HiveField(3) String description,
      @HiveField(4) bool accesHandicape,
      @HiveField(5) String url,
      @HiveField(6) String adresse});
}

class _$BatimentModelCopyWithImpl<$Res>
    implements $BatimentModelCopyWith<$Res> {
  _$BatimentModelCopyWithImpl(this._value, this._then);

  final BatimentModel _value;
  // ignore: unused_field
  final $Res Function(BatimentModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object nom = freezed,
    Object nbEtage = freezed,
    Object description = freezed,
    Object accesHandicape = freezed,
    Object url = freezed,
    Object adresse = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      nom: nom == freezed ? _value.nom : nom as String,
      nbEtage: nbEtage == freezed ? _value.nbEtage : nbEtage as int,
      description:
          description == freezed ? _value.description : description as String,
      accesHandicape: accesHandicape == freezed
          ? _value.accesHandicape
          : accesHandicape as bool,
      url: url == freezed ? _value.url : url as String,
      adresse: adresse == freezed ? _value.adresse : adresse as String,
    ));
  }
}

abstract class _$BatimentModelCopyWith<$Res>
    implements $BatimentModelCopyWith<$Res> {
  factory _$BatimentModelCopyWith(
          _BatimentModel value, $Res Function(_BatimentModel) then) =
      __$BatimentModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String nom,
      @HiveField(2) int nbEtage,
      @HiveField(3) String description,
      @HiveField(4) bool accesHandicape,
      @HiveField(5) String url,
      @HiveField(6) String adresse});
}

class __$BatimentModelCopyWithImpl<$Res>
    extends _$BatimentModelCopyWithImpl<$Res>
    implements _$BatimentModelCopyWith<$Res> {
  __$BatimentModelCopyWithImpl(
      _BatimentModel _value, $Res Function(_BatimentModel) _then)
      : super(_value, (v) => _then(v as _BatimentModel));

  @override
  _BatimentModel get _value => super._value as _BatimentModel;

  @override
  $Res call({
    Object id = freezed,
    Object nom = freezed,
    Object nbEtage = freezed,
    Object description = freezed,
    Object accesHandicape = freezed,
    Object url = freezed,
    Object adresse = freezed,
  }) {
    return _then(_BatimentModel(
      id: id == freezed ? _value.id : id as int,
      nom: nom == freezed ? _value.nom : nom as String,
      nbEtage: nbEtage == freezed ? _value.nbEtage : nbEtage as int,
      description:
          description == freezed ? _value.description : description as String,
      accesHandicape: accesHandicape == freezed
          ? _value.accesHandicape
          : accesHandicape as bool,
      url: url == freezed ? _value.url : url as String,
      adresse: adresse == freezed ? _value.adresse : adresse as String,
    ));
  }
}

@HiveType(typeId: 1)
@JsonSerializable(explicitToJson: true)
class _$_BatimentModel implements _BatimentModel {
  const _$_BatimentModel(
      {@required @HiveField(0) this.id,
      @required @HiveField(1) this.nom,
      @required @HiveField(2) this.nbEtage,
      @required @HiveField(3) this.description,
      @required @HiveField(4) this.accesHandicape,
      @required @HiveField(5) this.url,
      @required @HiveField(6) this.adresse})
      : assert(id != null),
        assert(nom != null),
        assert(nbEtage != null),
        assert(description != null),
        assert(accesHandicape != null),
        assert(url != null),
        assert(adresse != null);

  factory _$_BatimentModel.fromJson(Map<String, dynamic> json) =>
      _$_$_BatimentModelFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final String nom;
  @override
  @HiveField(2)
  final int nbEtage;
  @override
  @HiveField(3)
  final String description;
  @override
  @HiveField(4)
  final bool accesHandicape;
  @override
  @HiveField(5)
  final String url;
  @override
  @HiveField(6)
  final String adresse;

  @override
  String toString() {
    return 'BatimentModel(id: $id, nom: $nom, nbEtage: $nbEtage, description: $description, accesHandicape: $accesHandicape, url: $url, adresse: $adresse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BatimentModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.nom, nom) ||
                const DeepCollectionEquality().equals(other.nom, nom)) &&
            (identical(other.nbEtage, nbEtage) ||
                const DeepCollectionEquality()
                    .equals(other.nbEtage, nbEtage)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.accesHandicape, accesHandicape) ||
                const DeepCollectionEquality()
                    .equals(other.accesHandicape, accesHandicape)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.adresse, adresse) ||
                const DeepCollectionEquality().equals(other.adresse, adresse)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(nom) ^
      const DeepCollectionEquality().hash(nbEtage) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(accesHandicape) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(adresse);

  @override
  _$BatimentModelCopyWith<_BatimentModel> get copyWith =>
      __$BatimentModelCopyWithImpl<_BatimentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BatimentModelToJson(this);
  }
}

abstract class _BatimentModel implements BatimentModel {
  const factory _BatimentModel(
      {@required @HiveField(0) int id,
      @required @HiveField(1) String nom,
      @required @HiveField(2) int nbEtage,
      @required @HiveField(3) String description,
      @required @HiveField(4) bool accesHandicape,
      @required @HiveField(5) String url,
      @required @HiveField(6) String adresse}) = _$_BatimentModel;

  factory _BatimentModel.fromJson(Map<String, dynamic> json) =
      _$_BatimentModel.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  String get nom;
  @override
  @HiveField(2)
  int get nbEtage;
  @override
  @HiveField(3)
  String get description;
  @override
  @HiveField(4)
  bool get accesHandicape;
  @override
  @HiveField(5)
  String get url;
  @override
  @HiveField(6)
  String get adresse;
  @override
  _$BatimentModelCopyWith<_BatimentModel> get copyWith;
}
