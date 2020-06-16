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
      @required @nullable String nom,
      @required @nullable int nbEtage,
      @required @nullable String description,
      @required @nullable bool accesHandicape,
      @required @nullable String url,
      @required @nullable String adresse,
      @required @nullable double latitude,
      @required @nullable double longitude,
      @required @nullable bool isVisibleAR,
      @required @nullable String img_url}) {
    return _Batiment(
      id: id,
      nom: nom,
      nbEtage: nbEtage,
      description: description,
      accesHandicape: accesHandicape,
      url: url,
      adresse: adresse,
      latitude: latitude,
      longitude: longitude,
      isVisibleAR: isVisibleAR,
      img_url: img_url,
    );
  }
}

// ignore: unused_element
const $Batiment = _$BatimentTearOff();

mixin _$Batiment {
  int get id;
  @nullable
  String get nom;
  @nullable
  int get nbEtage;
  @nullable
  String get description;
  @nullable
  bool get accesHandicape;
  @nullable
  String get url;
  @nullable
  String get adresse;
  @nullable
  double get latitude;
  @nullable
  double get longitude;
  @nullable
  bool get isVisibleAR;
  @nullable
  String get img_url;

  $BatimentCopyWith<Batiment> get copyWith;
}

abstract class $BatimentCopyWith<$Res> {
  factory $BatimentCopyWith(Batiment value, $Res Function(Batiment) then) =
      _$BatimentCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @nullable String nom,
      @nullable int nbEtage,
      @nullable String description,
      @nullable bool accesHandicape,
      @nullable String url,
      @nullable String adresse,
      @nullable double latitude,
      @nullable double longitude,
      @nullable bool isVisibleAR,
      @nullable String img_url});
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
    Object latitude = freezed,
    Object longitude = freezed,
    Object isVisibleAR = freezed,
    Object img_url = freezed,
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
      latitude: latitude == freezed ? _value.latitude : latitude as double,
      longitude: longitude == freezed ? _value.longitude : longitude as double,
      isVisibleAR:
          isVisibleAR == freezed ? _value.isVisibleAR : isVisibleAR as bool,
      img_url: img_url == freezed ? _value.img_url : img_url as String,
    ));
  }
}

abstract class _$BatimentCopyWith<$Res> implements $BatimentCopyWith<$Res> {
  factory _$BatimentCopyWith(_Batiment value, $Res Function(_Batiment) then) =
      __$BatimentCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @nullable String nom,
      @nullable int nbEtage,
      @nullable String description,
      @nullable bool accesHandicape,
      @nullable String url,
      @nullable String adresse,
      @nullable double latitude,
      @nullable double longitude,
      @nullable bool isVisibleAR,
      @nullable String img_url});
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
    Object latitude = freezed,
    Object longitude = freezed,
    Object isVisibleAR = freezed,
    Object img_url = freezed,
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
      latitude: latitude == freezed ? _value.latitude : latitude as double,
      longitude: longitude == freezed ? _value.longitude : longitude as double,
      isVisibleAR:
          isVisibleAR == freezed ? _value.isVisibleAR : isVisibleAR as bool,
      img_url: img_url == freezed ? _value.img_url : img_url as String,
    ));
  }
}

class _$_Batiment with DiagnosticableTreeMixin implements _Batiment {
  const _$_Batiment(
      {@required this.id,
      @required @nullable this.nom,
      @required @nullable this.nbEtage,
      @required @nullable this.description,
      @required @nullable this.accesHandicape,
      @required @nullable this.url,
      @required @nullable this.adresse,
      @required @nullable this.latitude,
      @required @nullable this.longitude,
      @required @nullable this.isVisibleAR,
      @required @nullable this.img_url})
      : assert(id != null);

  @override
  final int id;
  @override
  @nullable
  final String nom;
  @override
  @nullable
  final int nbEtage;
  @override
  @nullable
  final String description;
  @override
  @nullable
  final bool accesHandicape;
  @override
  @nullable
  final String url;
  @override
  @nullable
  final String adresse;
  @override
  @nullable
  final double latitude;
  @override
  @nullable
  final double longitude;
  @override
  @nullable
  final bool isVisibleAR;
  @override
  @nullable
  final String img_url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Batiment(id: $id, nom: $nom, nbEtage: $nbEtage, description: $description, accesHandicape: $accesHandicape, url: $url, adresse: $adresse, latitude: $latitude, longitude: $longitude, isVisibleAR: $isVisibleAR, img_url: $img_url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Batiment'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('nom', nom))
      ..add(DiagnosticsProperty('nbEtage', nbEtage))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('accesHandicape', accesHandicape))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('adresse', adresse))
      ..add(DiagnosticsProperty('latitude', latitude))
      ..add(DiagnosticsProperty('longitude', longitude))
      ..add(DiagnosticsProperty('isVisibleAR', isVisibleAR))
      ..add(DiagnosticsProperty('img_url', img_url));
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
                const DeepCollectionEquality()
                    .equals(other.adresse, adresse)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.isVisibleAR, isVisibleAR) ||
                const DeepCollectionEquality()
                    .equals(other.isVisibleAR, isVisibleAR)) &&
            (identical(other.img_url, img_url) ||
                const DeepCollectionEquality().equals(other.img_url, img_url)));
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
      const DeepCollectionEquality().hash(adresse) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(isVisibleAR) ^
      const DeepCollectionEquality().hash(img_url);

  @override
  _$BatimentCopyWith<_Batiment> get copyWith =>
      __$BatimentCopyWithImpl<_Batiment>(this, _$identity);
}

abstract class _Batiment implements Batiment {
  const factory _Batiment(
      {@required int id,
      @required @nullable String nom,
      @required @nullable int nbEtage,
      @required @nullable String description,
      @required @nullable bool accesHandicape,
      @required @nullable String url,
      @required @nullable String adresse,
      @required @nullable double latitude,
      @required @nullable double longitude,
      @required @nullable bool isVisibleAR,
      @required @nullable String img_url}) = _$_Batiment;

  @override
  int get id;
  @override
  @nullable
  String get nom;
  @override
  @nullable
  int get nbEtage;
  @override
  @nullable
  String get description;
  @override
  @nullable
  bool get accesHandicape;
  @override
  @nullable
  String get url;
  @override
  @nullable
  String get adresse;
  @override
  @nullable
  double get latitude;
  @override
  @nullable
  double get longitude;
  @override
  @nullable
  bool get isVisibleAR;
  @override
  @nullable
  String get img_url;
  @override
  _$BatimentCopyWith<_Batiment> get copyWith;
}
