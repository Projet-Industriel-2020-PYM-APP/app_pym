// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'batiment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$BatimentTearOff {
  const _$BatimentTearOff();

  _Batiment call(
      {@required int id,
      @required String nom,
      @required int nbEtage,
      @required String description,
      @required bool accesHandicape,
      @required String url,
      @required String adresse}) {
    return _Batiment(
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
const $Batiment = _$BatimentTearOff();

mixin _$Batiment {
  int get id;
  String get nom;
  int get nbEtage;
  String get description;
  bool get accesHandicape;
  String get url;
  String get adresse;

  $BatimentCopyWith<Batiment> get copyWith;
}

abstract class $BatimentCopyWith<$Res> {
  factory $BatimentCopyWith(Batiment value, $Res Function(Batiment) then) =
      _$BatimentCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String nom,
      int nbEtage,
      String description,
      bool accesHandicape,
      String url,
      String adresse});
}

class _$BatimentCopyWithImpl<$Res> implements $BatimentCopyWith<$Res> {
  _$BatimentCopyWithImpl(this._value, this._then);

  final Batiment _value;
  // ignore: unused_field
  final $Res Function(Batiment) _then;

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

abstract class _$BatimentCopyWith<$Res> implements $BatimentCopyWith<$Res> {
  factory _$BatimentCopyWith(_Batiment value, $Res Function(_Batiment) then) =
      __$BatimentCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String nom,
      int nbEtage,
      String description,
      bool accesHandicape,
      String url,
      String adresse});
}

class __$BatimentCopyWithImpl<$Res> extends _$BatimentCopyWithImpl<$Res>
    implements _$BatimentCopyWith<$Res> {
  __$BatimentCopyWithImpl(_Batiment _value, $Res Function(_Batiment) _then)
      : super(_value, (v) => _then(v as _Batiment));

  @override
  _Batiment get _value => super._value as _Batiment;

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
    return _then(_Batiment(
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

class _$_Batiment implements _Batiment {
  const _$_Batiment(
      {@required this.id,
      @required this.nom,
      @required this.nbEtage,
      @required this.description,
      @required this.accesHandicape,
      @required this.url,
      @required this.adresse})
      : assert(id != null),
        assert(nom != null),
        assert(nbEtage != null),
        assert(description != null),
        assert(accesHandicape != null),
        assert(url != null),
        assert(adresse != null);

  @override
  final int id;
  @override
  final String nom;
  @override
  final int nbEtage;
  @override
  final String description;
  @override
  final bool accesHandicape;
  @override
  final String url;
  @override
  final String adresse;

  @override
  String toString() {
    return 'Batiment(id: $id, nom: $nom, nbEtage: $nbEtage, description: $description, accesHandicape: $accesHandicape, url: $url, adresse: $adresse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Batiment &&
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
  _$BatimentCopyWith<_Batiment> get copyWith =>
      __$BatimentCopyWithImpl<_Batiment>(this, _$identity);
}

abstract class _Batiment implements Batiment {
  const factory _Batiment(
      {@required int id,
      @required String nom,
      @required int nbEtage,
      @required String description,
      @required bool accesHandicape,
      @required String url,
      @required String adresse}) = _$_Batiment;

  @override
  int get id;
  @override
  String get nom;
  @override
  int get nbEtage;
  @override
  String get description;
  @override
  bool get accesHandicape;
  @override
  String get url;
  @override
  String get adresse;
  @override
  _$BatimentCopyWith<_Batiment> get copyWith;
}