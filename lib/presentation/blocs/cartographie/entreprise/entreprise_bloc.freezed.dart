// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'entreprise_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$EntrepriseEventTearOff {
  const _$EntrepriseEventTearOff();

  GetEntreprisesOfBatimentEvent getEntreprisesOfBatiment(int idBatiment) {
    return GetEntreprisesOfBatimentEvent(
      idBatiment,
    );
  }
}

// ignore: unused_element
const $EntrepriseEvent = _$EntrepriseEventTearOff();

mixin _$EntrepriseEvent {
  int get idBatiment;

  $EntrepriseEventCopyWith<EntrepriseEvent> get copyWith;
}

abstract class $EntrepriseEventCopyWith<$Res> {
  factory $EntrepriseEventCopyWith(
          EntrepriseEvent value, $Res Function(EntrepriseEvent) then) =
      _$EntrepriseEventCopyWithImpl<$Res>;
  $Res call({int idBatiment});
}

class _$EntrepriseEventCopyWithImpl<$Res>
    implements $EntrepriseEventCopyWith<$Res> {
  _$EntrepriseEventCopyWithImpl(this._value, this._then);

  final EntrepriseEvent _value;
  // ignore: unused_field
  final $Res Function(EntrepriseEvent) _then;

  @override
  $Res call({
    Object idBatiment = freezed,
  }) {
    return _then(_value.copyWith(
      idBatiment: idBatiment == freezed ? _value.idBatiment : idBatiment as int,
    ));
  }
}

abstract class $GetEntreprisesOfBatimentEventCopyWith<$Res>
    implements $EntrepriseEventCopyWith<$Res> {
  factory $GetEntreprisesOfBatimentEventCopyWith(
          GetEntreprisesOfBatimentEvent value,
          $Res Function(GetEntreprisesOfBatimentEvent) then) =
      _$GetEntreprisesOfBatimentEventCopyWithImpl<$Res>;
  @override
  $Res call({int idBatiment});
}

class _$GetEntreprisesOfBatimentEventCopyWithImpl<$Res>
    extends _$EntrepriseEventCopyWithImpl<$Res>
    implements $GetEntreprisesOfBatimentEventCopyWith<$Res> {
  _$GetEntreprisesOfBatimentEventCopyWithImpl(
      GetEntreprisesOfBatimentEvent _value,
      $Res Function(GetEntreprisesOfBatimentEvent) _then)
      : super(_value, (v) => _then(v as GetEntreprisesOfBatimentEvent));

  @override
  GetEntreprisesOfBatimentEvent get _value =>
      super._value as GetEntreprisesOfBatimentEvent;

  @override
  $Res call({
    Object idBatiment = freezed,
  }) {
    return _then(GetEntreprisesOfBatimentEvent(
      idBatiment == freezed ? _value.idBatiment : idBatiment as int,
    ));
  }
}

class _$GetEntreprisesOfBatimentEvent implements GetEntreprisesOfBatimentEvent {
  const _$GetEntreprisesOfBatimentEvent(this.idBatiment)
      : assert(idBatiment != null);

  @override
  final int idBatiment;

  @override
  String toString() {
    return 'EntrepriseEvent.getEntreprisesOfBatiment(idBatiment: $idBatiment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetEntreprisesOfBatimentEvent &&
            (identical(other.idBatiment, idBatiment) ||
                const DeepCollectionEquality()
                    .equals(other.idBatiment, idBatiment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(idBatiment);

  @override
  $GetEntreprisesOfBatimentEventCopyWith<GetEntreprisesOfBatimentEvent>
      get copyWith => _$GetEntreprisesOfBatimentEventCopyWithImpl<
          GetEntreprisesOfBatimentEvent>(this, _$identity);
}

abstract class GetEntreprisesOfBatimentEvent implements EntrepriseEvent {
  const factory GetEntreprisesOfBatimentEvent(int idBatiment) =
      _$GetEntreprisesOfBatimentEvent;

  @override
  int get idBatiment;
  @override
  $GetEntreprisesOfBatimentEventCopyWith<GetEntreprisesOfBatimentEvent>
      get copyWith;
}

class _$EntrepriseStateTearOff {
  const _$EntrepriseStateTearOff();

  EntrepriseInitial initial() {
    return const EntrepriseInitial();
  }

  EntreprisesOfBatimentLoaded entreprisesOfBatimentLoaded(
      List<Entreprise> entreprises) {
    return EntreprisesOfBatimentLoaded(
      entreprises,
    );
  }

  EntrepriseLoading loading() {
    return const EntrepriseLoading();
  }

  EntrepriseError error(Exception error) {
    return EntrepriseError(
      error,
    );
  }
}

// ignore: unused_element
const $EntrepriseState = _$EntrepriseStateTearOff();

mixin _$EntrepriseState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result entreprisesOfBatimentLoaded(List<Entreprise> entreprises),
    @required Result loading(),
    @required Result error(Exception error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result entreprisesOfBatimentLoaded(List<Entreprise> entreprises),
    Result loading(),
    Result error(Exception error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(EntrepriseInitial value),
    @required
        Result entreprisesOfBatimentLoaded(EntreprisesOfBatimentLoaded value),
    @required Result loading(EntrepriseLoading value),
    @required Result error(EntrepriseError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(EntrepriseInitial value),
    Result entreprisesOfBatimentLoaded(EntreprisesOfBatimentLoaded value),
    Result loading(EntrepriseLoading value),
    Result error(EntrepriseError value),
    @required Result orElse(),
  });
}

abstract class $EntrepriseStateCopyWith<$Res> {
  factory $EntrepriseStateCopyWith(
          EntrepriseState value, $Res Function(EntrepriseState) then) =
      _$EntrepriseStateCopyWithImpl<$Res>;
}

class _$EntrepriseStateCopyWithImpl<$Res>
    implements $EntrepriseStateCopyWith<$Res> {
  _$EntrepriseStateCopyWithImpl(this._value, this._then);

  final EntrepriseState _value;
  // ignore: unused_field
  final $Res Function(EntrepriseState) _then;
}

abstract class $EntrepriseInitialCopyWith<$Res> {
  factory $EntrepriseInitialCopyWith(
          EntrepriseInitial value, $Res Function(EntrepriseInitial) then) =
      _$EntrepriseInitialCopyWithImpl<$Res>;
}

class _$EntrepriseInitialCopyWithImpl<$Res>
    extends _$EntrepriseStateCopyWithImpl<$Res>
    implements $EntrepriseInitialCopyWith<$Res> {
  _$EntrepriseInitialCopyWithImpl(
      EntrepriseInitial _value, $Res Function(EntrepriseInitial) _then)
      : super(_value, (v) => _then(v as EntrepriseInitial));

  @override
  EntrepriseInitial get _value => super._value as EntrepriseInitial;
}

class _$EntrepriseInitial implements EntrepriseInitial {
  const _$EntrepriseInitial();

  @override
  String toString() {
    return 'EntrepriseState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EntrepriseInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result entreprisesOfBatimentLoaded(List<Entreprise> entreprises),
    @required Result loading(),
    @required Result error(Exception error),
  }) {
    assert(initial != null);
    assert(entreprisesOfBatimentLoaded != null);
    assert(loading != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result entreprisesOfBatimentLoaded(List<Entreprise> entreprises),
    Result loading(),
    Result error(Exception error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(EntrepriseInitial value),
    @required
        Result entreprisesOfBatimentLoaded(EntreprisesOfBatimentLoaded value),
    @required Result loading(EntrepriseLoading value),
    @required Result error(EntrepriseError value),
  }) {
    assert(initial != null);
    assert(entreprisesOfBatimentLoaded != null);
    assert(loading != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(EntrepriseInitial value),
    Result entreprisesOfBatimentLoaded(EntreprisesOfBatimentLoaded value),
    Result loading(EntrepriseLoading value),
    Result error(EntrepriseError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class EntrepriseInitial implements EntrepriseState {
  const factory EntrepriseInitial() = _$EntrepriseInitial;
}

abstract class $EntreprisesOfBatimentLoadedCopyWith<$Res> {
  factory $EntreprisesOfBatimentLoadedCopyWith(
          EntreprisesOfBatimentLoaded value,
          $Res Function(EntreprisesOfBatimentLoaded) then) =
      _$EntreprisesOfBatimentLoadedCopyWithImpl<$Res>;
  $Res call({List<Entreprise> entreprises});
}

class _$EntreprisesOfBatimentLoadedCopyWithImpl<$Res>
    extends _$EntrepriseStateCopyWithImpl<$Res>
    implements $EntreprisesOfBatimentLoadedCopyWith<$Res> {
  _$EntreprisesOfBatimentLoadedCopyWithImpl(EntreprisesOfBatimentLoaded _value,
      $Res Function(EntreprisesOfBatimentLoaded) _then)
      : super(_value, (v) => _then(v as EntreprisesOfBatimentLoaded));

  @override
  EntreprisesOfBatimentLoaded get _value =>
      super._value as EntreprisesOfBatimentLoaded;

  @override
  $Res call({
    Object entreprises = freezed,
  }) {
    return _then(EntreprisesOfBatimentLoaded(
      entreprises == freezed
          ? _value.entreprises
          : entreprises as List<Entreprise>,
    ));
  }
}

class _$EntreprisesOfBatimentLoaded implements EntreprisesOfBatimentLoaded {
  const _$EntreprisesOfBatimentLoaded(this.entreprises)
      : assert(entreprises != null);

  @override
  final List<Entreprise> entreprises;

  @override
  String toString() {
    return 'EntrepriseState.entreprisesOfBatimentLoaded(entreprises: $entreprises)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EntreprisesOfBatimentLoaded &&
            (identical(other.entreprises, entreprises) ||
                const DeepCollectionEquality()
                    .equals(other.entreprises, entreprises)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(entreprises);

  @override
  $EntreprisesOfBatimentLoadedCopyWith<EntreprisesOfBatimentLoaded>
      get copyWith => _$EntreprisesOfBatimentLoadedCopyWithImpl<
          EntreprisesOfBatimentLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result entreprisesOfBatimentLoaded(List<Entreprise> entreprises),
    @required Result loading(),
    @required Result error(Exception error),
  }) {
    assert(initial != null);
    assert(entreprisesOfBatimentLoaded != null);
    assert(loading != null);
    assert(error != null);
    return entreprisesOfBatimentLoaded(entreprises);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result entreprisesOfBatimentLoaded(List<Entreprise> entreprises),
    Result loading(),
    Result error(Exception error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (entreprisesOfBatimentLoaded != null) {
      return entreprisesOfBatimentLoaded(entreprises);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(EntrepriseInitial value),
    @required
        Result entreprisesOfBatimentLoaded(EntreprisesOfBatimentLoaded value),
    @required Result loading(EntrepriseLoading value),
    @required Result error(EntrepriseError value),
  }) {
    assert(initial != null);
    assert(entreprisesOfBatimentLoaded != null);
    assert(loading != null);
    assert(error != null);
    return entreprisesOfBatimentLoaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(EntrepriseInitial value),
    Result entreprisesOfBatimentLoaded(EntreprisesOfBatimentLoaded value),
    Result loading(EntrepriseLoading value),
    Result error(EntrepriseError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (entreprisesOfBatimentLoaded != null) {
      return entreprisesOfBatimentLoaded(this);
    }
    return orElse();
  }
}

abstract class EntreprisesOfBatimentLoaded implements EntrepriseState {
  const factory EntreprisesOfBatimentLoaded(List<Entreprise> entreprises) =
      _$EntreprisesOfBatimentLoaded;

  List<Entreprise> get entreprises;
  $EntreprisesOfBatimentLoadedCopyWith<EntreprisesOfBatimentLoaded>
      get copyWith;
}

abstract class $EntrepriseLoadingCopyWith<$Res> {
  factory $EntrepriseLoadingCopyWith(
          EntrepriseLoading value, $Res Function(EntrepriseLoading) then) =
      _$EntrepriseLoadingCopyWithImpl<$Res>;
}

class _$EntrepriseLoadingCopyWithImpl<$Res>
    extends _$EntrepriseStateCopyWithImpl<$Res>
    implements $EntrepriseLoadingCopyWith<$Res> {
  _$EntrepriseLoadingCopyWithImpl(
      EntrepriseLoading _value, $Res Function(EntrepriseLoading) _then)
      : super(_value, (v) => _then(v as EntrepriseLoading));

  @override
  EntrepriseLoading get _value => super._value as EntrepriseLoading;
}

class _$EntrepriseLoading implements EntrepriseLoading {
  const _$EntrepriseLoading();

  @override
  String toString() {
    return 'EntrepriseState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EntrepriseLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result entreprisesOfBatimentLoaded(List<Entreprise> entreprises),
    @required Result loading(),
    @required Result error(Exception error),
  }) {
    assert(initial != null);
    assert(entreprisesOfBatimentLoaded != null);
    assert(loading != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result entreprisesOfBatimentLoaded(List<Entreprise> entreprises),
    Result loading(),
    Result error(Exception error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(EntrepriseInitial value),
    @required
        Result entreprisesOfBatimentLoaded(EntreprisesOfBatimentLoaded value),
    @required Result loading(EntrepriseLoading value),
    @required Result error(EntrepriseError value),
  }) {
    assert(initial != null);
    assert(entreprisesOfBatimentLoaded != null);
    assert(loading != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(EntrepriseInitial value),
    Result entreprisesOfBatimentLoaded(EntreprisesOfBatimentLoaded value),
    Result loading(EntrepriseLoading value),
    Result error(EntrepriseError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class EntrepriseLoading implements EntrepriseState {
  const factory EntrepriseLoading() = _$EntrepriseLoading;
}

abstract class $EntrepriseErrorCopyWith<$Res> {
  factory $EntrepriseErrorCopyWith(
          EntrepriseError value, $Res Function(EntrepriseError) then) =
      _$EntrepriseErrorCopyWithImpl<$Res>;
  $Res call({Exception error});
}

class _$EntrepriseErrorCopyWithImpl<$Res>
    extends _$EntrepriseStateCopyWithImpl<$Res>
    implements $EntrepriseErrorCopyWith<$Res> {
  _$EntrepriseErrorCopyWithImpl(
      EntrepriseError _value, $Res Function(EntrepriseError) _then)
      : super(_value, (v) => _then(v as EntrepriseError));

  @override
  EntrepriseError get _value => super._value as EntrepriseError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(EntrepriseError(
      error == freezed ? _value.error : error as Exception,
    ));
  }
}

class _$EntrepriseError implements EntrepriseError {
  const _$EntrepriseError(this.error) : assert(error != null);

  @override
  final Exception error;

  @override
  String toString() {
    return 'EntrepriseState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EntrepriseError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $EntrepriseErrorCopyWith<EntrepriseError> get copyWith =>
      _$EntrepriseErrorCopyWithImpl<EntrepriseError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result entreprisesOfBatimentLoaded(List<Entreprise> entreprises),
    @required Result loading(),
    @required Result error(Exception error),
  }) {
    assert(initial != null);
    assert(entreprisesOfBatimentLoaded != null);
    assert(loading != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result entreprisesOfBatimentLoaded(List<Entreprise> entreprises),
    Result loading(),
    Result error(Exception error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(EntrepriseInitial value),
    @required
        Result entreprisesOfBatimentLoaded(EntreprisesOfBatimentLoaded value),
    @required Result loading(EntrepriseLoading value),
    @required Result error(EntrepriseError value),
  }) {
    assert(initial != null);
    assert(entreprisesOfBatimentLoaded != null);
    assert(loading != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(EntrepriseInitial value),
    Result entreprisesOfBatimentLoaded(EntreprisesOfBatimentLoaded value),
    Result loading(EntrepriseLoading value),
    Result error(EntrepriseError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class EntrepriseError implements EntrepriseState {
  const factory EntrepriseError(Exception error) = _$EntrepriseError;

  Exception get error;
  $EntrepriseErrorCopyWith<EntrepriseError> get copyWith;
}
