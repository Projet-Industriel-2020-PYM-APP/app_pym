// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'fetch_all_bookings_of_service_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FetchAllBookingsOfServiceEventTearOff {
  const _$FetchAllBookingsOfServiceEventTearOff();

  FetchAllBookingsOfServiceFetch fetch(int service_id) {
    return FetchAllBookingsOfServiceFetch(
      service_id,
    );
  }

  FetchAllBookingsOfServiceRefresh refresh(List<Booking> bookings) {
    return FetchAllBookingsOfServiceRefresh(
      bookings,
    );
  }
}

// ignore: unused_element
const $FetchAllBookingsOfServiceEvent =
    _$FetchAllBookingsOfServiceEventTearOff();

mixin _$FetchAllBookingsOfServiceEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetch(int service_id),
    @required Result refresh(List<Booking> bookings),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetch(int service_id),
    Result refresh(List<Booking> bookings),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetch(FetchAllBookingsOfServiceFetch value),
    @required Result refresh(FetchAllBookingsOfServiceRefresh value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(FetchAllBookingsOfServiceFetch value),
    Result refresh(FetchAllBookingsOfServiceRefresh value),
    @required Result orElse(),
  });
}

abstract class $FetchAllBookingsOfServiceEventCopyWith<$Res> {
  factory $FetchAllBookingsOfServiceEventCopyWith(
          FetchAllBookingsOfServiceEvent value,
          $Res Function(FetchAllBookingsOfServiceEvent) then) =
      _$FetchAllBookingsOfServiceEventCopyWithImpl<$Res>;
}

class _$FetchAllBookingsOfServiceEventCopyWithImpl<$Res>
    implements $FetchAllBookingsOfServiceEventCopyWith<$Res> {
  _$FetchAllBookingsOfServiceEventCopyWithImpl(this._value, this._then);

  final FetchAllBookingsOfServiceEvent _value;
  // ignore: unused_field
  final $Res Function(FetchAllBookingsOfServiceEvent) _then;
}

abstract class $FetchAllBookingsOfServiceFetchCopyWith<$Res> {
  factory $FetchAllBookingsOfServiceFetchCopyWith(
          FetchAllBookingsOfServiceFetch value,
          $Res Function(FetchAllBookingsOfServiceFetch) then) =
      _$FetchAllBookingsOfServiceFetchCopyWithImpl<$Res>;
  $Res call({int service_id});
}

class _$FetchAllBookingsOfServiceFetchCopyWithImpl<$Res>
    extends _$FetchAllBookingsOfServiceEventCopyWithImpl<$Res>
    implements $FetchAllBookingsOfServiceFetchCopyWith<$Res> {
  _$FetchAllBookingsOfServiceFetchCopyWithImpl(
      FetchAllBookingsOfServiceFetch _value,
      $Res Function(FetchAllBookingsOfServiceFetch) _then)
      : super(_value, (v) => _then(v as FetchAllBookingsOfServiceFetch));

  @override
  FetchAllBookingsOfServiceFetch get _value =>
      super._value as FetchAllBookingsOfServiceFetch;

  @override
  $Res call({
    Object service_id = freezed,
  }) {
    return _then(FetchAllBookingsOfServiceFetch(
      service_id == freezed ? _value.service_id : service_id as int,
    ));
  }
}

class _$FetchAllBookingsOfServiceFetch
    implements FetchAllBookingsOfServiceFetch {
  const _$FetchAllBookingsOfServiceFetch(this.service_id)
      : assert(service_id != null);

  @override
  final int service_id;

  @override
  String toString() {
    return 'FetchAllBookingsOfServiceEvent.fetch(service_id: $service_id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchAllBookingsOfServiceFetch &&
            (identical(other.service_id, service_id) ||
                const DeepCollectionEquality()
                    .equals(other.service_id, service_id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(service_id);

  @override
  $FetchAllBookingsOfServiceFetchCopyWith<FetchAllBookingsOfServiceFetch>
      get copyWith => _$FetchAllBookingsOfServiceFetchCopyWithImpl<
          FetchAllBookingsOfServiceFetch>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetch(int service_id),
    @required Result refresh(List<Booking> bookings),
  }) {
    assert(fetch != null);
    assert(refresh != null);
    return fetch(service_id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetch(int service_id),
    Result refresh(List<Booking> bookings),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetch != null) {
      return fetch(service_id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetch(FetchAllBookingsOfServiceFetch value),
    @required Result refresh(FetchAllBookingsOfServiceRefresh value),
  }) {
    assert(fetch != null);
    assert(refresh != null);
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(FetchAllBookingsOfServiceFetch value),
    Result refresh(FetchAllBookingsOfServiceRefresh value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class FetchAllBookingsOfServiceFetch
    implements FetchAllBookingsOfServiceEvent {
  const factory FetchAllBookingsOfServiceFetch(int service_id) =
      _$FetchAllBookingsOfServiceFetch;

  int get service_id;
  $FetchAllBookingsOfServiceFetchCopyWith<FetchAllBookingsOfServiceFetch>
      get copyWith;
}

abstract class $FetchAllBookingsOfServiceRefreshCopyWith<$Res> {
  factory $FetchAllBookingsOfServiceRefreshCopyWith(
          FetchAllBookingsOfServiceRefresh value,
          $Res Function(FetchAllBookingsOfServiceRefresh) then) =
      _$FetchAllBookingsOfServiceRefreshCopyWithImpl<$Res>;
  $Res call({List<Booking> bookings});
}

class _$FetchAllBookingsOfServiceRefreshCopyWithImpl<$Res>
    extends _$FetchAllBookingsOfServiceEventCopyWithImpl<$Res>
    implements $FetchAllBookingsOfServiceRefreshCopyWith<$Res> {
  _$FetchAllBookingsOfServiceRefreshCopyWithImpl(
      FetchAllBookingsOfServiceRefresh _value,
      $Res Function(FetchAllBookingsOfServiceRefresh) _then)
      : super(_value, (v) => _then(v as FetchAllBookingsOfServiceRefresh));

  @override
  FetchAllBookingsOfServiceRefresh get _value =>
      super._value as FetchAllBookingsOfServiceRefresh;

  @override
  $Res call({
    Object bookings = freezed,
  }) {
    return _then(FetchAllBookingsOfServiceRefresh(
      bookings == freezed ? _value.bookings : bookings as List<Booking>,
    ));
  }
}

class _$FetchAllBookingsOfServiceRefresh
    implements FetchAllBookingsOfServiceRefresh {
  const _$FetchAllBookingsOfServiceRefresh(this.bookings)
      : assert(bookings != null);

  @override
  final List<Booking> bookings;

  @override
  String toString() {
    return 'FetchAllBookingsOfServiceEvent.refresh(bookings: $bookings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchAllBookingsOfServiceRefresh &&
            (identical(other.bookings, bookings) ||
                const DeepCollectionEquality()
                    .equals(other.bookings, bookings)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bookings);

  @override
  $FetchAllBookingsOfServiceRefreshCopyWith<FetchAllBookingsOfServiceRefresh>
      get copyWith => _$FetchAllBookingsOfServiceRefreshCopyWithImpl<
          FetchAllBookingsOfServiceRefresh>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetch(int service_id),
    @required Result refresh(List<Booking> bookings),
  }) {
    assert(fetch != null);
    assert(refresh != null);
    return refresh(bookings);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetch(int service_id),
    Result refresh(List<Booking> bookings),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refresh != null) {
      return refresh(bookings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetch(FetchAllBookingsOfServiceFetch value),
    @required Result refresh(FetchAllBookingsOfServiceRefresh value),
  }) {
    assert(fetch != null);
    assert(refresh != null);
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(FetchAllBookingsOfServiceFetch value),
    Result refresh(FetchAllBookingsOfServiceRefresh value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class FetchAllBookingsOfServiceRefresh
    implements FetchAllBookingsOfServiceEvent {
  const factory FetchAllBookingsOfServiceRefresh(List<Booking> bookings) =
      _$FetchAllBookingsOfServiceRefresh;

  List<Booking> get bookings;
  $FetchAllBookingsOfServiceRefreshCopyWith<FetchAllBookingsOfServiceRefresh>
      get copyWith;
}

class _$FetchAllBookingsOfServiceStateTearOff {
  const _$FetchAllBookingsOfServiceStateTearOff();

  FetchAllBookingsOfServiceInitial initial() {
    return const FetchAllBookingsOfServiceInitial();
  }

  FetchAllBookingsOfServiceLoading loading() {
    return const FetchAllBookingsOfServiceLoading();
  }

  FetchAllBookingsOfServiceLoaded loaded(List<Booking> bookings) {
    return FetchAllBookingsOfServiceLoaded(
      bookings,
    );
  }

  FetchAllBookingsOfServiceError error(String message) {
    return FetchAllBookingsOfServiceError(
      message,
    );
  }
}

// ignore: unused_element
const $FetchAllBookingsOfServiceState =
    _$FetchAllBookingsOfServiceStateTearOff();

mixin _$FetchAllBookingsOfServiceState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<Booking> bookings),
    @required Result error(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<Booking> bookings),
    Result error(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(FetchAllBookingsOfServiceInitial value),
    @required Result loading(FetchAllBookingsOfServiceLoading value),
    @required Result loaded(FetchAllBookingsOfServiceLoaded value),
    @required Result error(FetchAllBookingsOfServiceError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(FetchAllBookingsOfServiceInitial value),
    Result loading(FetchAllBookingsOfServiceLoading value),
    Result loaded(FetchAllBookingsOfServiceLoaded value),
    Result error(FetchAllBookingsOfServiceError value),
    @required Result orElse(),
  });
}

abstract class $FetchAllBookingsOfServiceStateCopyWith<$Res> {
  factory $FetchAllBookingsOfServiceStateCopyWith(
          FetchAllBookingsOfServiceState value,
          $Res Function(FetchAllBookingsOfServiceState) then) =
      _$FetchAllBookingsOfServiceStateCopyWithImpl<$Res>;
}

class _$FetchAllBookingsOfServiceStateCopyWithImpl<$Res>
    implements $FetchAllBookingsOfServiceStateCopyWith<$Res> {
  _$FetchAllBookingsOfServiceStateCopyWithImpl(this._value, this._then);

  final FetchAllBookingsOfServiceState _value;
  // ignore: unused_field
  final $Res Function(FetchAllBookingsOfServiceState) _then;
}

abstract class $FetchAllBookingsOfServiceInitialCopyWith<$Res> {
  factory $FetchAllBookingsOfServiceInitialCopyWith(
          FetchAllBookingsOfServiceInitial value,
          $Res Function(FetchAllBookingsOfServiceInitial) then) =
      _$FetchAllBookingsOfServiceInitialCopyWithImpl<$Res>;
}

class _$FetchAllBookingsOfServiceInitialCopyWithImpl<$Res>
    extends _$FetchAllBookingsOfServiceStateCopyWithImpl<$Res>
    implements $FetchAllBookingsOfServiceInitialCopyWith<$Res> {
  _$FetchAllBookingsOfServiceInitialCopyWithImpl(
      FetchAllBookingsOfServiceInitial _value,
      $Res Function(FetchAllBookingsOfServiceInitial) _then)
      : super(_value, (v) => _then(v as FetchAllBookingsOfServiceInitial));

  @override
  FetchAllBookingsOfServiceInitial get _value =>
      super._value as FetchAllBookingsOfServiceInitial;
}

class _$FetchAllBookingsOfServiceInitial
    implements FetchAllBookingsOfServiceInitial {
  const _$FetchAllBookingsOfServiceInitial();

  @override
  String toString() {
    return 'FetchAllBookingsOfServiceState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchAllBookingsOfServiceInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<Booking> bookings),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<Booking> bookings),
    Result error(String message),
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
    @required Result initial(FetchAllBookingsOfServiceInitial value),
    @required Result loading(FetchAllBookingsOfServiceLoading value),
    @required Result loaded(FetchAllBookingsOfServiceLoaded value),
    @required Result error(FetchAllBookingsOfServiceError value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(FetchAllBookingsOfServiceInitial value),
    Result loading(FetchAllBookingsOfServiceLoading value),
    Result loaded(FetchAllBookingsOfServiceLoaded value),
    Result error(FetchAllBookingsOfServiceError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FetchAllBookingsOfServiceInitial
    implements FetchAllBookingsOfServiceState {
  const factory FetchAllBookingsOfServiceInitial() =
      _$FetchAllBookingsOfServiceInitial;
}

abstract class $FetchAllBookingsOfServiceLoadingCopyWith<$Res> {
  factory $FetchAllBookingsOfServiceLoadingCopyWith(
          FetchAllBookingsOfServiceLoading value,
          $Res Function(FetchAllBookingsOfServiceLoading) then) =
      _$FetchAllBookingsOfServiceLoadingCopyWithImpl<$Res>;
}

class _$FetchAllBookingsOfServiceLoadingCopyWithImpl<$Res>
    extends _$FetchAllBookingsOfServiceStateCopyWithImpl<$Res>
    implements $FetchAllBookingsOfServiceLoadingCopyWith<$Res> {
  _$FetchAllBookingsOfServiceLoadingCopyWithImpl(
      FetchAllBookingsOfServiceLoading _value,
      $Res Function(FetchAllBookingsOfServiceLoading) _then)
      : super(_value, (v) => _then(v as FetchAllBookingsOfServiceLoading));

  @override
  FetchAllBookingsOfServiceLoading get _value =>
      super._value as FetchAllBookingsOfServiceLoading;
}

class _$FetchAllBookingsOfServiceLoading
    implements FetchAllBookingsOfServiceLoading {
  const _$FetchAllBookingsOfServiceLoading();

  @override
  String toString() {
    return 'FetchAllBookingsOfServiceState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchAllBookingsOfServiceLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<Booking> bookings),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<Booking> bookings),
    Result error(String message),
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
    @required Result initial(FetchAllBookingsOfServiceInitial value),
    @required Result loading(FetchAllBookingsOfServiceLoading value),
    @required Result loaded(FetchAllBookingsOfServiceLoaded value),
    @required Result error(FetchAllBookingsOfServiceError value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(FetchAllBookingsOfServiceInitial value),
    Result loading(FetchAllBookingsOfServiceLoading value),
    Result loaded(FetchAllBookingsOfServiceLoaded value),
    Result error(FetchAllBookingsOfServiceError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FetchAllBookingsOfServiceLoading
    implements FetchAllBookingsOfServiceState {
  const factory FetchAllBookingsOfServiceLoading() =
      _$FetchAllBookingsOfServiceLoading;
}

abstract class $FetchAllBookingsOfServiceLoadedCopyWith<$Res> {
  factory $FetchAllBookingsOfServiceLoadedCopyWith(
          FetchAllBookingsOfServiceLoaded value,
          $Res Function(FetchAllBookingsOfServiceLoaded) then) =
      _$FetchAllBookingsOfServiceLoadedCopyWithImpl<$Res>;
  $Res call({List<Booking> bookings});
}

class _$FetchAllBookingsOfServiceLoadedCopyWithImpl<$Res>
    extends _$FetchAllBookingsOfServiceStateCopyWithImpl<$Res>
    implements $FetchAllBookingsOfServiceLoadedCopyWith<$Res> {
  _$FetchAllBookingsOfServiceLoadedCopyWithImpl(
      FetchAllBookingsOfServiceLoaded _value,
      $Res Function(FetchAllBookingsOfServiceLoaded) _then)
      : super(_value, (v) => _then(v as FetchAllBookingsOfServiceLoaded));

  @override
  FetchAllBookingsOfServiceLoaded get _value =>
      super._value as FetchAllBookingsOfServiceLoaded;

  @override
  $Res call({
    Object bookings = freezed,
  }) {
    return _then(FetchAllBookingsOfServiceLoaded(
      bookings == freezed ? _value.bookings : bookings as List<Booking>,
    ));
  }
}

class _$FetchAllBookingsOfServiceLoaded
    implements FetchAllBookingsOfServiceLoaded {
  const _$FetchAllBookingsOfServiceLoaded(this.bookings)
      : assert(bookings != null);

  @override
  final List<Booking> bookings;

  @override
  String toString() {
    return 'FetchAllBookingsOfServiceState.loaded(bookings: $bookings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchAllBookingsOfServiceLoaded &&
            (identical(other.bookings, bookings) ||
                const DeepCollectionEquality()
                    .equals(other.bookings, bookings)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bookings);

  @override
  $FetchAllBookingsOfServiceLoadedCopyWith<FetchAllBookingsOfServiceLoaded>
      get copyWith => _$FetchAllBookingsOfServiceLoadedCopyWithImpl<
          FetchAllBookingsOfServiceLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<Booking> bookings),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(bookings);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<Booking> bookings),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(bookings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(FetchAllBookingsOfServiceInitial value),
    @required Result loading(FetchAllBookingsOfServiceLoading value),
    @required Result loaded(FetchAllBookingsOfServiceLoaded value),
    @required Result error(FetchAllBookingsOfServiceError value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(FetchAllBookingsOfServiceInitial value),
    Result loading(FetchAllBookingsOfServiceLoading value),
    Result loaded(FetchAllBookingsOfServiceLoaded value),
    Result error(FetchAllBookingsOfServiceError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class FetchAllBookingsOfServiceLoaded
    implements FetchAllBookingsOfServiceState {
  const factory FetchAllBookingsOfServiceLoaded(List<Booking> bookings) =
      _$FetchAllBookingsOfServiceLoaded;

  List<Booking> get bookings;
  $FetchAllBookingsOfServiceLoadedCopyWith<FetchAllBookingsOfServiceLoaded>
      get copyWith;
}

abstract class $FetchAllBookingsOfServiceErrorCopyWith<$Res> {
  factory $FetchAllBookingsOfServiceErrorCopyWith(
          FetchAllBookingsOfServiceError value,
          $Res Function(FetchAllBookingsOfServiceError) then) =
      _$FetchAllBookingsOfServiceErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

class _$FetchAllBookingsOfServiceErrorCopyWithImpl<$Res>
    extends _$FetchAllBookingsOfServiceStateCopyWithImpl<$Res>
    implements $FetchAllBookingsOfServiceErrorCopyWith<$Res> {
  _$FetchAllBookingsOfServiceErrorCopyWithImpl(
      FetchAllBookingsOfServiceError _value,
      $Res Function(FetchAllBookingsOfServiceError) _then)
      : super(_value, (v) => _then(v as FetchAllBookingsOfServiceError));

  @override
  FetchAllBookingsOfServiceError get _value =>
      super._value as FetchAllBookingsOfServiceError;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(FetchAllBookingsOfServiceError(
      message == freezed ? _value.message : message as String,
    ));
  }
}

class _$FetchAllBookingsOfServiceError
    implements FetchAllBookingsOfServiceError {
  const _$FetchAllBookingsOfServiceError(this.message)
      : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'FetchAllBookingsOfServiceState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchAllBookingsOfServiceError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $FetchAllBookingsOfServiceErrorCopyWith<FetchAllBookingsOfServiceError>
      get copyWith => _$FetchAllBookingsOfServiceErrorCopyWithImpl<
          FetchAllBookingsOfServiceError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<Booking> bookings),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<Booking> bookings),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(FetchAllBookingsOfServiceInitial value),
    @required Result loading(FetchAllBookingsOfServiceLoading value),
    @required Result loaded(FetchAllBookingsOfServiceLoaded value),
    @required Result error(FetchAllBookingsOfServiceError value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(FetchAllBookingsOfServiceInitial value),
    Result loading(FetchAllBookingsOfServiceLoading value),
    Result loaded(FetchAllBookingsOfServiceLoaded value),
    Result error(FetchAllBookingsOfServiceError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FetchAllBookingsOfServiceError
    implements FetchAllBookingsOfServiceState {
  const factory FetchAllBookingsOfServiceError(String message) =
      _$FetchAllBookingsOfServiceError;

  String get message;
  $FetchAllBookingsOfServiceErrorCopyWith<FetchAllBookingsOfServiceError>
      get copyWith;
}
