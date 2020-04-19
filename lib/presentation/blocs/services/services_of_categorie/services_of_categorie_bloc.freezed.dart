// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'services_of_categorie_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ServicesOfCategorieEventTearOff {
  const _$ServicesOfCategorieEventTearOff();

  FetchServicesOfCategorieEvent fetch(Categorie categorie) {
    return FetchServicesOfCategorieEvent(
      categorie,
    );
  }

  RefreshServicesOfCategorieEvent refresh(List<Service> services) {
    return RefreshServicesOfCategorieEvent(
      services,
    );
  }
}

// ignore: unused_element
const $ServicesOfCategorieEvent = _$ServicesOfCategorieEventTearOff();

mixin _$ServicesOfCategorieEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetch(Categorie categorie),
    @required Result refresh(List<Service> services),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetch(Categorie categorie),
    Result refresh(List<Service> services),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetch(FetchServicesOfCategorieEvent value),
    @required Result refresh(RefreshServicesOfCategorieEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(FetchServicesOfCategorieEvent value),
    Result refresh(RefreshServicesOfCategorieEvent value),
    @required Result orElse(),
  });
}

abstract class $ServicesOfCategorieEventCopyWith<$Res> {
  factory $ServicesOfCategorieEventCopyWith(ServicesOfCategorieEvent value,
          $Res Function(ServicesOfCategorieEvent) then) =
      _$ServicesOfCategorieEventCopyWithImpl<$Res>;
}

class _$ServicesOfCategorieEventCopyWithImpl<$Res>
    implements $ServicesOfCategorieEventCopyWith<$Res> {
  _$ServicesOfCategorieEventCopyWithImpl(this._value, this._then);

  final ServicesOfCategorieEvent _value;
  // ignore: unused_field
  final $Res Function(ServicesOfCategorieEvent) _then;
}

abstract class $FetchServicesOfCategorieEventCopyWith<$Res> {
  factory $FetchServicesOfCategorieEventCopyWith(
          FetchServicesOfCategorieEvent value,
          $Res Function(FetchServicesOfCategorieEvent) then) =
      _$FetchServicesOfCategorieEventCopyWithImpl<$Res>;
  $Res call({Categorie categorie});

  $CategorieCopyWith<$Res> get categorie;
}

class _$FetchServicesOfCategorieEventCopyWithImpl<$Res>
    extends _$ServicesOfCategorieEventCopyWithImpl<$Res>
    implements $FetchServicesOfCategorieEventCopyWith<$Res> {
  _$FetchServicesOfCategorieEventCopyWithImpl(
      FetchServicesOfCategorieEvent _value,
      $Res Function(FetchServicesOfCategorieEvent) _then)
      : super(_value, (v) => _then(v as FetchServicesOfCategorieEvent));

  @override
  FetchServicesOfCategorieEvent get _value =>
      super._value as FetchServicesOfCategorieEvent;

  @override
  $Res call({
    Object categorie = freezed,
  }) {
    return _then(FetchServicesOfCategorieEvent(
      categorie == freezed ? _value.categorie : categorie as Categorie,
    ));
  }

  @override
  $CategorieCopyWith<$Res> get categorie {
    if (_value.categorie == null) {
      return null;
    }
    return $CategorieCopyWith<$Res>(_value.categorie, (value) {
      return _then(_value.copyWith(categorie: value));
    });
  }
}

class _$FetchServicesOfCategorieEvent
    with DiagnosticableTreeMixin
    implements FetchServicesOfCategorieEvent {
  const _$FetchServicesOfCategorieEvent(this.categorie)
      : assert(categorie != null);

  @override
  final Categorie categorie;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServicesOfCategorieEvent.fetch(categorie: $categorie)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServicesOfCategorieEvent.fetch'))
      ..add(DiagnosticsProperty('categorie', categorie));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchServicesOfCategorieEvent &&
            (identical(other.categorie, categorie) ||
                const DeepCollectionEquality()
                    .equals(other.categorie, categorie)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(categorie);

  @override
  $FetchServicesOfCategorieEventCopyWith<FetchServicesOfCategorieEvent>
      get copyWith => _$FetchServicesOfCategorieEventCopyWithImpl<
          FetchServicesOfCategorieEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetch(Categorie categorie),
    @required Result refresh(List<Service> services),
  }) {
    assert(fetch != null);
    assert(refresh != null);
    return fetch(categorie);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetch(Categorie categorie),
    Result refresh(List<Service> services),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetch != null) {
      return fetch(categorie);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetch(FetchServicesOfCategorieEvent value),
    @required Result refresh(RefreshServicesOfCategorieEvent value),
  }) {
    assert(fetch != null);
    assert(refresh != null);
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(FetchServicesOfCategorieEvent value),
    Result refresh(RefreshServicesOfCategorieEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class FetchServicesOfCategorieEvent
    implements ServicesOfCategorieEvent {
  const factory FetchServicesOfCategorieEvent(Categorie categorie) =
      _$FetchServicesOfCategorieEvent;

  Categorie get categorie;
  $FetchServicesOfCategorieEventCopyWith<FetchServicesOfCategorieEvent>
      get copyWith;
}

abstract class $RefreshServicesOfCategorieEventCopyWith<$Res> {
  factory $RefreshServicesOfCategorieEventCopyWith(
          RefreshServicesOfCategorieEvent value,
          $Res Function(RefreshServicesOfCategorieEvent) then) =
      _$RefreshServicesOfCategorieEventCopyWithImpl<$Res>;
  $Res call({List<Service> services});
}

class _$RefreshServicesOfCategorieEventCopyWithImpl<$Res>
    extends _$ServicesOfCategorieEventCopyWithImpl<$Res>
    implements $RefreshServicesOfCategorieEventCopyWith<$Res> {
  _$RefreshServicesOfCategorieEventCopyWithImpl(
      RefreshServicesOfCategorieEvent _value,
      $Res Function(RefreshServicesOfCategorieEvent) _then)
      : super(_value, (v) => _then(v as RefreshServicesOfCategorieEvent));

  @override
  RefreshServicesOfCategorieEvent get _value =>
      super._value as RefreshServicesOfCategorieEvent;

  @override
  $Res call({
    Object services = freezed,
  }) {
    return _then(RefreshServicesOfCategorieEvent(
      services == freezed ? _value.services : services as List<Service>,
    ));
  }
}

class _$RefreshServicesOfCategorieEvent
    with DiagnosticableTreeMixin
    implements RefreshServicesOfCategorieEvent {
  const _$RefreshServicesOfCategorieEvent(this.services)
      : assert(services != null);

  @override
  final List<Service> services;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServicesOfCategorieEvent.refresh(services: $services)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServicesOfCategorieEvent.refresh'))
      ..add(DiagnosticsProperty('services', services));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RefreshServicesOfCategorieEvent &&
            (identical(other.services, services) ||
                const DeepCollectionEquality()
                    .equals(other.services, services)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(services);

  @override
  $RefreshServicesOfCategorieEventCopyWith<RefreshServicesOfCategorieEvent>
      get copyWith => _$RefreshServicesOfCategorieEventCopyWithImpl<
          RefreshServicesOfCategorieEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetch(Categorie categorie),
    @required Result refresh(List<Service> services),
  }) {
    assert(fetch != null);
    assert(refresh != null);
    return refresh(services);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetch(Categorie categorie),
    Result refresh(List<Service> services),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refresh != null) {
      return refresh(services);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetch(FetchServicesOfCategorieEvent value),
    @required Result refresh(RefreshServicesOfCategorieEvent value),
  }) {
    assert(fetch != null);
    assert(refresh != null);
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(FetchServicesOfCategorieEvent value),
    Result refresh(RefreshServicesOfCategorieEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class RefreshServicesOfCategorieEvent
    implements ServicesOfCategorieEvent {
  const factory RefreshServicesOfCategorieEvent(List<Service> services) =
      _$RefreshServicesOfCategorieEvent;

  List<Service> get services;
  $RefreshServicesOfCategorieEventCopyWith<RefreshServicesOfCategorieEvent>
      get copyWith;
}

class _$ServicesOfCategorieStateTearOff {
  const _$ServicesOfCategorieStateTearOff();

  ServicesOfCategorieInitial initial() {
    return const ServicesOfCategorieInitial();
  }

  ServicesOfCategorieLoading loading() {
    return const ServicesOfCategorieLoading();
  }

  ServicesOfCategorieLoaded loaded(List<Service> services) {
    return ServicesOfCategorieLoaded(
      services,
    );
  }

  ServicesOfCategorieError error(String message) {
    return ServicesOfCategorieError(
      message,
    );
  }
}

// ignore: unused_element
const $ServicesOfCategorieState = _$ServicesOfCategorieStateTearOff();

mixin _$ServicesOfCategorieState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<Service> services),
    @required Result error(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<Service> services),
    Result error(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(ServicesOfCategorieInitial value),
    @required Result loading(ServicesOfCategorieLoading value),
    @required Result loaded(ServicesOfCategorieLoaded value),
    @required Result error(ServicesOfCategorieError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(ServicesOfCategorieInitial value),
    Result loading(ServicesOfCategorieLoading value),
    Result loaded(ServicesOfCategorieLoaded value),
    Result error(ServicesOfCategorieError value),
    @required Result orElse(),
  });
}

abstract class $ServicesOfCategorieStateCopyWith<$Res> {
  factory $ServicesOfCategorieStateCopyWith(ServicesOfCategorieState value,
          $Res Function(ServicesOfCategorieState) then) =
      _$ServicesOfCategorieStateCopyWithImpl<$Res>;
}

class _$ServicesOfCategorieStateCopyWithImpl<$Res>
    implements $ServicesOfCategorieStateCopyWith<$Res> {
  _$ServicesOfCategorieStateCopyWithImpl(this._value, this._then);

  final ServicesOfCategorieState _value;
  // ignore: unused_field
  final $Res Function(ServicesOfCategorieState) _then;
}

abstract class $ServicesOfCategorieInitialCopyWith<$Res> {
  factory $ServicesOfCategorieInitialCopyWith(ServicesOfCategorieInitial value,
          $Res Function(ServicesOfCategorieInitial) then) =
      _$ServicesOfCategorieInitialCopyWithImpl<$Res>;
}

class _$ServicesOfCategorieInitialCopyWithImpl<$Res>
    extends _$ServicesOfCategorieStateCopyWithImpl<$Res>
    implements $ServicesOfCategorieInitialCopyWith<$Res> {
  _$ServicesOfCategorieInitialCopyWithImpl(ServicesOfCategorieInitial _value,
      $Res Function(ServicesOfCategorieInitial) _then)
      : super(_value, (v) => _then(v as ServicesOfCategorieInitial));

  @override
  ServicesOfCategorieInitial get _value =>
      super._value as ServicesOfCategorieInitial;
}

class _$ServicesOfCategorieInitial
    with DiagnosticableTreeMixin
    implements ServicesOfCategorieInitial {
  const _$ServicesOfCategorieInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServicesOfCategorieState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServicesOfCategorieState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServicesOfCategorieInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<Service> services),
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
    Result loaded(List<Service> services),
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
    @required Result initial(ServicesOfCategorieInitial value),
    @required Result loading(ServicesOfCategorieLoading value),
    @required Result loaded(ServicesOfCategorieLoaded value),
    @required Result error(ServicesOfCategorieError value),
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
    Result initial(ServicesOfCategorieInitial value),
    Result loading(ServicesOfCategorieLoading value),
    Result loaded(ServicesOfCategorieLoaded value),
    Result error(ServicesOfCategorieError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ServicesOfCategorieInitial implements ServicesOfCategorieState {
  const factory ServicesOfCategorieInitial() = _$ServicesOfCategorieInitial;
}

abstract class $ServicesOfCategorieLoadingCopyWith<$Res> {
  factory $ServicesOfCategorieLoadingCopyWith(ServicesOfCategorieLoading value,
          $Res Function(ServicesOfCategorieLoading) then) =
      _$ServicesOfCategorieLoadingCopyWithImpl<$Res>;
}

class _$ServicesOfCategorieLoadingCopyWithImpl<$Res>
    extends _$ServicesOfCategorieStateCopyWithImpl<$Res>
    implements $ServicesOfCategorieLoadingCopyWith<$Res> {
  _$ServicesOfCategorieLoadingCopyWithImpl(ServicesOfCategorieLoading _value,
      $Res Function(ServicesOfCategorieLoading) _then)
      : super(_value, (v) => _then(v as ServicesOfCategorieLoading));

  @override
  ServicesOfCategorieLoading get _value =>
      super._value as ServicesOfCategorieLoading;
}

class _$ServicesOfCategorieLoading
    with DiagnosticableTreeMixin
    implements ServicesOfCategorieLoading {
  const _$ServicesOfCategorieLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServicesOfCategorieState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServicesOfCategorieState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServicesOfCategorieLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<Service> services),
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
    Result loaded(List<Service> services),
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
    @required Result initial(ServicesOfCategorieInitial value),
    @required Result loading(ServicesOfCategorieLoading value),
    @required Result loaded(ServicesOfCategorieLoaded value),
    @required Result error(ServicesOfCategorieError value),
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
    Result initial(ServicesOfCategorieInitial value),
    Result loading(ServicesOfCategorieLoading value),
    Result loaded(ServicesOfCategorieLoaded value),
    Result error(ServicesOfCategorieError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ServicesOfCategorieLoading implements ServicesOfCategorieState {
  const factory ServicesOfCategorieLoading() = _$ServicesOfCategorieLoading;
}

abstract class $ServicesOfCategorieLoadedCopyWith<$Res> {
  factory $ServicesOfCategorieLoadedCopyWith(ServicesOfCategorieLoaded value,
          $Res Function(ServicesOfCategorieLoaded) then) =
      _$ServicesOfCategorieLoadedCopyWithImpl<$Res>;
  $Res call({List<Service> services});
}

class _$ServicesOfCategorieLoadedCopyWithImpl<$Res>
    extends _$ServicesOfCategorieStateCopyWithImpl<$Res>
    implements $ServicesOfCategorieLoadedCopyWith<$Res> {
  _$ServicesOfCategorieLoadedCopyWithImpl(ServicesOfCategorieLoaded _value,
      $Res Function(ServicesOfCategorieLoaded) _then)
      : super(_value, (v) => _then(v as ServicesOfCategorieLoaded));

  @override
  ServicesOfCategorieLoaded get _value =>
      super._value as ServicesOfCategorieLoaded;

  @override
  $Res call({
    Object services = freezed,
  }) {
    return _then(ServicesOfCategorieLoaded(
      services == freezed ? _value.services : services as List<Service>,
    ));
  }
}

class _$ServicesOfCategorieLoaded
    with DiagnosticableTreeMixin
    implements ServicesOfCategorieLoaded {
  const _$ServicesOfCategorieLoaded(this.services) : assert(services != null);

  @override
  final List<Service> services;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServicesOfCategorieState.loaded(services: $services)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServicesOfCategorieState.loaded'))
      ..add(DiagnosticsProperty('services', services));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ServicesOfCategorieLoaded &&
            (identical(other.services, services) ||
                const DeepCollectionEquality()
                    .equals(other.services, services)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(services);

  @override
  $ServicesOfCategorieLoadedCopyWith<ServicesOfCategorieLoaded> get copyWith =>
      _$ServicesOfCategorieLoadedCopyWithImpl<ServicesOfCategorieLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<Service> services),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(services);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<Service> services),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(services);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(ServicesOfCategorieInitial value),
    @required Result loading(ServicesOfCategorieLoading value),
    @required Result loaded(ServicesOfCategorieLoaded value),
    @required Result error(ServicesOfCategorieError value),
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
    Result initial(ServicesOfCategorieInitial value),
    Result loading(ServicesOfCategorieLoading value),
    Result loaded(ServicesOfCategorieLoaded value),
    Result error(ServicesOfCategorieError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ServicesOfCategorieLoaded implements ServicesOfCategorieState {
  const factory ServicesOfCategorieLoaded(List<Service> services) =
      _$ServicesOfCategorieLoaded;

  List<Service> get services;
  $ServicesOfCategorieLoadedCopyWith<ServicesOfCategorieLoaded> get copyWith;
}

abstract class $ServicesOfCategorieErrorCopyWith<$Res> {
  factory $ServicesOfCategorieErrorCopyWith(ServicesOfCategorieError value,
          $Res Function(ServicesOfCategorieError) then) =
      _$ServicesOfCategorieErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

class _$ServicesOfCategorieErrorCopyWithImpl<$Res>
    extends _$ServicesOfCategorieStateCopyWithImpl<$Res>
    implements $ServicesOfCategorieErrorCopyWith<$Res> {
  _$ServicesOfCategorieErrorCopyWithImpl(ServicesOfCategorieError _value,
      $Res Function(ServicesOfCategorieError) _then)
      : super(_value, (v) => _then(v as ServicesOfCategorieError));

  @override
  ServicesOfCategorieError get _value =>
      super._value as ServicesOfCategorieError;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(ServicesOfCategorieError(
      message == freezed ? _value.message : message as String,
    ));
  }
}

class _$ServicesOfCategorieError
    with DiagnosticableTreeMixin
    implements ServicesOfCategorieError {
  const _$ServicesOfCategorieError(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServicesOfCategorieState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServicesOfCategorieState.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ServicesOfCategorieError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $ServicesOfCategorieErrorCopyWith<ServicesOfCategorieError> get copyWith =>
      _$ServicesOfCategorieErrorCopyWithImpl<ServicesOfCategorieError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<Service> services),
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
    Result loaded(List<Service> services),
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
    @required Result initial(ServicesOfCategorieInitial value),
    @required Result loading(ServicesOfCategorieLoading value),
    @required Result loaded(ServicesOfCategorieLoaded value),
    @required Result error(ServicesOfCategorieError value),
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
    Result initial(ServicesOfCategorieInitial value),
    Result loading(ServicesOfCategorieLoading value),
    Result loaded(ServicesOfCategorieLoaded value),
    Result error(ServicesOfCategorieError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ServicesOfCategorieError implements ServicesOfCategorieState {
  const factory ServicesOfCategorieError(String message) =
      _$ServicesOfCategorieError;

  String get message;
  $ServicesOfCategorieErrorCopyWith<ServicesOfCategorieError> get copyWith;
}
