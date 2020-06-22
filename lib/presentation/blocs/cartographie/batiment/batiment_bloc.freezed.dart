// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'batiment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$BatimentEventTearOff {
  const _$BatimentEventTearOff();

  GetBatimentDetailEvent getBatimentDetail(int id) {
    return GetBatimentDetailEvent(
      id,
    );
  }
}

// ignore: unused_element
const $BatimentEvent = _$BatimentEventTearOff();

mixin _$BatimentEvent {
  int get id;

  $BatimentEventCopyWith<BatimentEvent> get copyWith;
}

abstract class $BatimentEventCopyWith<$Res> {
  factory $BatimentEventCopyWith(
          BatimentEvent value, $Res Function(BatimentEvent) then) =
      _$BatimentEventCopyWithImpl<$Res>;
  $Res call({int id});
}

class _$BatimentEventCopyWithImpl<$Res>
    implements $BatimentEventCopyWith<$Res> {
  _$BatimentEventCopyWithImpl(this._value, this._then);

  final BatimentEvent _value;
  // ignore: unused_field
  final $Res Function(BatimentEvent) _then;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
    ));
  }
}

abstract class $GetBatimentDetailEventCopyWith<$Res>
    implements $BatimentEventCopyWith<$Res> {
  factory $GetBatimentDetailEventCopyWith(GetBatimentDetailEvent value,
          $Res Function(GetBatimentDetailEvent) then) =
      _$GetBatimentDetailEventCopyWithImpl<$Res>;
  @override
  $Res call({int id});
}

class _$GetBatimentDetailEventCopyWithImpl<$Res>
    extends _$BatimentEventCopyWithImpl<$Res>
    implements $GetBatimentDetailEventCopyWith<$Res> {
  _$GetBatimentDetailEventCopyWithImpl(GetBatimentDetailEvent _value,
      $Res Function(GetBatimentDetailEvent) _then)
      : super(_value, (v) => _then(v as GetBatimentDetailEvent));

  @override
  GetBatimentDetailEvent get _value => super._value as GetBatimentDetailEvent;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(GetBatimentDetailEvent(
      id == freezed ? _value.id : id as int,
    ));
  }
}

class _$GetBatimentDetailEvent implements GetBatimentDetailEvent {
  const _$GetBatimentDetailEvent(this.id) : assert(id != null);

  @override
  final int id;

  @override
  String toString() {
    return 'BatimentEvent.getBatimentDetail(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetBatimentDetailEvent &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $GetBatimentDetailEventCopyWith<GetBatimentDetailEvent> get copyWith =>
      _$GetBatimentDetailEventCopyWithImpl<GetBatimentDetailEvent>(
          this, _$identity);
}

abstract class GetBatimentDetailEvent implements BatimentEvent {
  const factory GetBatimentDetailEvent(int id) = _$GetBatimentDetailEvent;

  @override
  int get id;
  @override
  $GetBatimentDetailEventCopyWith<GetBatimentDetailEvent> get copyWith;
}

class _$BatimentStateTearOff {
  const _$BatimentStateTearOff();

  BatimentInitial initial() {
    return const BatimentInitial();
  }

  BatimentLoaded loaded(Batiment batiment) {
    return BatimentLoaded(
      batiment,
    );
  }

  BatimentLoading loading() {
    return const BatimentLoading();
  }

  BatimentError error(Exception error) {
    return BatimentError(
      error,
    );
  }
}

// ignore: unused_element
const $BatimentState = _$BatimentStateTearOff();

mixin _$BatimentState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loaded(Batiment batiment),
    @required Result loading(),
    @required Result error(Exception error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loaded(Batiment batiment),
    Result loading(),
    Result error(Exception error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(BatimentInitial value),
    @required Result loaded(BatimentLoaded value),
    @required Result loading(BatimentLoading value),
    @required Result error(BatimentError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(BatimentInitial value),
    Result loaded(BatimentLoaded value),
    Result loading(BatimentLoading value),
    Result error(BatimentError value),
    @required Result orElse(),
  });
}

abstract class $BatimentStateCopyWith<$Res> {
  factory $BatimentStateCopyWith(
          BatimentState value, $Res Function(BatimentState) then) =
      _$BatimentStateCopyWithImpl<$Res>;
}

class _$BatimentStateCopyWithImpl<$Res>
    implements $BatimentStateCopyWith<$Res> {
  _$BatimentStateCopyWithImpl(this._value, this._then);

  final BatimentState _value;
  // ignore: unused_field
  final $Res Function(BatimentState) _then;
}

abstract class $BatimentInitialCopyWith<$Res> {
  factory $BatimentInitialCopyWith(
          BatimentInitial value, $Res Function(BatimentInitial) then) =
      _$BatimentInitialCopyWithImpl<$Res>;
}

class _$BatimentInitialCopyWithImpl<$Res>
    extends _$BatimentStateCopyWithImpl<$Res>
    implements $BatimentInitialCopyWith<$Res> {
  _$BatimentInitialCopyWithImpl(
      BatimentInitial _value, $Res Function(BatimentInitial) _then)
      : super(_value, (v) => _then(v as BatimentInitial));

  @override
  BatimentInitial get _value => super._value as BatimentInitial;
}

class _$BatimentInitial implements BatimentInitial {
  const _$BatimentInitial();

  @override
  String toString() {
    return 'BatimentState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is BatimentInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loaded(Batiment batiment),
    @required Result loading(),
    @required Result error(Exception error),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loaded(Batiment batiment),
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
    @required Result initial(BatimentInitial value),
    @required Result loaded(BatimentLoaded value),
    @required Result loading(BatimentLoading value),
    @required Result error(BatimentError value),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(BatimentInitial value),
    Result loaded(BatimentLoaded value),
    Result loading(BatimentLoading value),
    Result error(BatimentError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class BatimentInitial implements BatimentState {
  const factory BatimentInitial() = _$BatimentInitial;
}

abstract class $BatimentLoadedCopyWith<$Res> {
  factory $BatimentLoadedCopyWith(
          BatimentLoaded value, $Res Function(BatimentLoaded) then) =
      _$BatimentLoadedCopyWithImpl<$Res>;
  $Res call({Batiment batiment});

  $BatimentCopyWith<$Res> get batiment;
}

class _$BatimentLoadedCopyWithImpl<$Res>
    extends _$BatimentStateCopyWithImpl<$Res>
    implements $BatimentLoadedCopyWith<$Res> {
  _$BatimentLoadedCopyWithImpl(
      BatimentLoaded _value, $Res Function(BatimentLoaded) _then)
      : super(_value, (v) => _then(v as BatimentLoaded));

  @override
  BatimentLoaded get _value => super._value as BatimentLoaded;

  @override
  $Res call({
    Object batiment = freezed,
  }) {
    return _then(BatimentLoaded(
      batiment == freezed ? _value.batiment : batiment as Batiment,
    ));
  }

  @override
  $BatimentCopyWith<$Res> get batiment {
    if (_value.batiment == null) {
      return null;
    }
    return $BatimentCopyWith<$Res>(_value.batiment, (value) {
      return _then(_value.copyWith(batiment: value));
    });
  }
}

class _$BatimentLoaded implements BatimentLoaded {
  const _$BatimentLoaded(this.batiment) : assert(batiment != null);

  @override
  final Batiment batiment;

  @override
  String toString() {
    return 'BatimentState.loaded(batiment: $batiment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BatimentLoaded &&
            (identical(other.batiment, batiment) ||
                const DeepCollectionEquality()
                    .equals(other.batiment, batiment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(batiment);

  @override
  $BatimentLoadedCopyWith<BatimentLoaded> get copyWith =>
      _$BatimentLoadedCopyWithImpl<BatimentLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loaded(Batiment batiment),
    @required Result loading(),
    @required Result error(Exception error),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return loaded(batiment);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loaded(Batiment batiment),
    Result loading(),
    Result error(Exception error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(batiment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(BatimentInitial value),
    @required Result loaded(BatimentLoaded value),
    @required Result loading(BatimentLoading value),
    @required Result error(BatimentError value),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(BatimentInitial value),
    Result loaded(BatimentLoaded value),
    Result loading(BatimentLoading value),
    Result error(BatimentError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class BatimentLoaded implements BatimentState {
  const factory BatimentLoaded(Batiment batiment) = _$BatimentLoaded;

  Batiment get batiment;
  $BatimentLoadedCopyWith<BatimentLoaded> get copyWith;
}

abstract class $BatimentLoadingCopyWith<$Res> {
  factory $BatimentLoadingCopyWith(
          BatimentLoading value, $Res Function(BatimentLoading) then) =
      _$BatimentLoadingCopyWithImpl<$Res>;
}

class _$BatimentLoadingCopyWithImpl<$Res>
    extends _$BatimentStateCopyWithImpl<$Res>
    implements $BatimentLoadingCopyWith<$Res> {
  _$BatimentLoadingCopyWithImpl(
      BatimentLoading _value, $Res Function(BatimentLoading) _then)
      : super(_value, (v) => _then(v as BatimentLoading));

  @override
  BatimentLoading get _value => super._value as BatimentLoading;
}

class _$BatimentLoading implements BatimentLoading {
  const _$BatimentLoading();

  @override
  String toString() {
    return 'BatimentState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is BatimentLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loaded(Batiment batiment),
    @required Result loading(),
    @required Result error(Exception error),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loaded(Batiment batiment),
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
    @required Result initial(BatimentInitial value),
    @required Result loaded(BatimentLoaded value),
    @required Result loading(BatimentLoading value),
    @required Result error(BatimentError value),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(BatimentInitial value),
    Result loaded(BatimentLoaded value),
    Result loading(BatimentLoading value),
    Result error(BatimentError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BatimentLoading implements BatimentState {
  const factory BatimentLoading() = _$BatimentLoading;
}

abstract class $BatimentErrorCopyWith<$Res> {
  factory $BatimentErrorCopyWith(
          BatimentError value, $Res Function(BatimentError) then) =
      _$BatimentErrorCopyWithImpl<$Res>;
  $Res call({Exception error});
}

class _$BatimentErrorCopyWithImpl<$Res>
    extends _$BatimentStateCopyWithImpl<$Res>
    implements $BatimentErrorCopyWith<$Res> {
  _$BatimentErrorCopyWithImpl(
      BatimentError _value, $Res Function(BatimentError) _then)
      : super(_value, (v) => _then(v as BatimentError));

  @override
  BatimentError get _value => super._value as BatimentError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(BatimentError(
      error == freezed ? _value.error : error as Exception,
    ));
  }
}

class _$BatimentError implements BatimentError {
  const _$BatimentError(this.error) : assert(error != null);

  @override
  final Exception error;

  @override
  String toString() {
    return 'BatimentState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BatimentError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $BatimentErrorCopyWith<BatimentError> get copyWith =>
      _$BatimentErrorCopyWithImpl<BatimentError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loaded(Batiment batiment),
    @required Result loading(),
    @required Result error(Exception error),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loaded(Batiment batiment),
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
    @required Result initial(BatimentInitial value),
    @required Result loaded(BatimentLoaded value),
    @required Result loading(BatimentLoading value),
    @required Result error(BatimentError value),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(BatimentInitial value),
    Result loaded(BatimentLoaded value),
    Result loading(BatimentLoading value),
    Result error(BatimentError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class BatimentError implements BatimentState {
  const factory BatimentError(Exception error) = _$BatimentError;

  Exception get error;
  $BatimentErrorCopyWith<BatimentError> get copyWith;
}
