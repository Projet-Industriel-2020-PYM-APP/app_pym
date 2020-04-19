// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'categories_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CategoriesEventTearOff {
  const _$CategoriesEventTearOff();

  FetchCategoriesEvent fetch() {
    return const FetchCategoriesEvent();
  }

  RefreshCategoriesEvent refresh(List<Categorie> categories) {
    return RefreshCategoriesEvent(
      categories,
    );
  }
}

// ignore: unused_element
const $CategoriesEvent = _$CategoriesEventTearOff();

mixin _$CategoriesEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetch(),
    @required Result refresh(List<Categorie> categories),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetch(),
    Result refresh(List<Categorie> categories),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetch(FetchCategoriesEvent value),
    @required Result refresh(RefreshCategoriesEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(FetchCategoriesEvent value),
    Result refresh(RefreshCategoriesEvent value),
    @required Result orElse(),
  });
}

abstract class $CategoriesEventCopyWith<$Res> {
  factory $CategoriesEventCopyWith(
          CategoriesEvent value, $Res Function(CategoriesEvent) then) =
      _$CategoriesEventCopyWithImpl<$Res>;
}

class _$CategoriesEventCopyWithImpl<$Res>
    implements $CategoriesEventCopyWith<$Res> {
  _$CategoriesEventCopyWithImpl(this._value, this._then);

  final CategoriesEvent _value;
  // ignore: unused_field
  final $Res Function(CategoriesEvent) _then;
}

abstract class $FetchCategoriesEventCopyWith<$Res> {
  factory $FetchCategoriesEventCopyWith(FetchCategoriesEvent value,
          $Res Function(FetchCategoriesEvent) then) =
      _$FetchCategoriesEventCopyWithImpl<$Res>;
}

class _$FetchCategoriesEventCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res>
    implements $FetchCategoriesEventCopyWith<$Res> {
  _$FetchCategoriesEventCopyWithImpl(
      FetchCategoriesEvent _value, $Res Function(FetchCategoriesEvent) _then)
      : super(_value, (v) => _then(v as FetchCategoriesEvent));

  @override
  FetchCategoriesEvent get _value => super._value as FetchCategoriesEvent;
}

class _$FetchCategoriesEvent
    with DiagnosticableTreeMixin
    implements FetchCategoriesEvent {
  const _$FetchCategoriesEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoriesEvent.fetch()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'CategoriesEvent.fetch'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchCategoriesEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetch(),
    @required Result refresh(List<Categorie> categories),
  }) {
    assert(fetch != null);
    assert(refresh != null);
    return fetch();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetch(),
    Result refresh(List<Categorie> categories),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetch(FetchCategoriesEvent value),
    @required Result refresh(RefreshCategoriesEvent value),
  }) {
    assert(fetch != null);
    assert(refresh != null);
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(FetchCategoriesEvent value),
    Result refresh(RefreshCategoriesEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class FetchCategoriesEvent implements CategoriesEvent {
  const factory FetchCategoriesEvent() = _$FetchCategoriesEvent;
}

abstract class $RefreshCategoriesEventCopyWith<$Res> {
  factory $RefreshCategoriesEventCopyWith(RefreshCategoriesEvent value,
          $Res Function(RefreshCategoriesEvent) then) =
      _$RefreshCategoriesEventCopyWithImpl<$Res>;
  $Res call({List<Categorie> categories});
}

class _$RefreshCategoriesEventCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res>
    implements $RefreshCategoriesEventCopyWith<$Res> {
  _$RefreshCategoriesEventCopyWithImpl(RefreshCategoriesEvent _value,
      $Res Function(RefreshCategoriesEvent) _then)
      : super(_value, (v) => _then(v as RefreshCategoriesEvent));

  @override
  RefreshCategoriesEvent get _value => super._value as RefreshCategoriesEvent;

  @override
  $Res call({
    Object categories = freezed,
  }) {
    return _then(RefreshCategoriesEvent(
      categories == freezed ? _value.categories : categories as List<Categorie>,
    ));
  }
}

class _$RefreshCategoriesEvent
    with DiagnosticableTreeMixin
    implements RefreshCategoriesEvent {
  const _$RefreshCategoriesEvent(this.categories) : assert(categories != null);

  @override
  final List<Categorie> categories;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoriesEvent.refresh(categories: $categories)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoriesEvent.refresh'))
      ..add(DiagnosticsProperty('categories', categories));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RefreshCategoriesEvent &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(categories);

  @override
  $RefreshCategoriesEventCopyWith<RefreshCategoriesEvent> get copyWith =>
      _$RefreshCategoriesEventCopyWithImpl<RefreshCategoriesEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetch(),
    @required Result refresh(List<Categorie> categories),
  }) {
    assert(fetch != null);
    assert(refresh != null);
    return refresh(categories);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetch(),
    Result refresh(List<Categorie> categories),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refresh != null) {
      return refresh(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetch(FetchCategoriesEvent value),
    @required Result refresh(RefreshCategoriesEvent value),
  }) {
    assert(fetch != null);
    assert(refresh != null);
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(FetchCategoriesEvent value),
    Result refresh(RefreshCategoriesEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class RefreshCategoriesEvent implements CategoriesEvent {
  const factory RefreshCategoriesEvent(List<Categorie> categories) =
      _$RefreshCategoriesEvent;

  List<Categorie> get categories;
  $RefreshCategoriesEventCopyWith<RefreshCategoriesEvent> get copyWith;
}

class _$CategoriesStateTearOff {
  const _$CategoriesStateTearOff();

  CategoriesInitial initial() {
    return const CategoriesInitial();
  }

  CategoriesLoading loading() {
    return const CategoriesLoading();
  }

  CategoriesLoaded loaded(List<Categorie> categories) {
    return CategoriesLoaded(
      categories,
    );
  }

  CategoriesError error(String message) {
    return CategoriesError(
      message,
    );
  }
}

// ignore: unused_element
const $CategoriesState = _$CategoriesStateTearOff();

mixin _$CategoriesState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<Categorie> categories),
    @required Result error(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<Categorie> categories),
    Result error(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(CategoriesInitial value),
    @required Result loading(CategoriesLoading value),
    @required Result loaded(CategoriesLoaded value),
    @required Result error(CategoriesError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(CategoriesInitial value),
    Result loading(CategoriesLoading value),
    Result loaded(CategoriesLoaded value),
    Result error(CategoriesError value),
    @required Result orElse(),
  });
}

abstract class $CategoriesStateCopyWith<$Res> {
  factory $CategoriesStateCopyWith(
          CategoriesState value, $Res Function(CategoriesState) then) =
      _$CategoriesStateCopyWithImpl<$Res>;
}

class _$CategoriesStateCopyWithImpl<$Res>
    implements $CategoriesStateCopyWith<$Res> {
  _$CategoriesStateCopyWithImpl(this._value, this._then);

  final CategoriesState _value;
  // ignore: unused_field
  final $Res Function(CategoriesState) _then;
}

abstract class $CategoriesInitialCopyWith<$Res> {
  factory $CategoriesInitialCopyWith(
          CategoriesInitial value, $Res Function(CategoriesInitial) then) =
      _$CategoriesInitialCopyWithImpl<$Res>;
}

class _$CategoriesInitialCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res>
    implements $CategoriesInitialCopyWith<$Res> {
  _$CategoriesInitialCopyWithImpl(
      CategoriesInitial _value, $Res Function(CategoriesInitial) _then)
      : super(_value, (v) => _then(v as CategoriesInitial));

  @override
  CategoriesInitial get _value => super._value as CategoriesInitial;
}

class _$CategoriesInitial
    with DiagnosticableTreeMixin
    implements CategoriesInitial {
  const _$CategoriesInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoriesState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'CategoriesState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CategoriesInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<Categorie> categories),
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
    Result loaded(List<Categorie> categories),
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
    @required Result initial(CategoriesInitial value),
    @required Result loading(CategoriesLoading value),
    @required Result loaded(CategoriesLoaded value),
    @required Result error(CategoriesError value),
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
    Result initial(CategoriesInitial value),
    Result loading(CategoriesLoading value),
    Result loaded(CategoriesLoaded value),
    Result error(CategoriesError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CategoriesInitial implements CategoriesState {
  const factory CategoriesInitial() = _$CategoriesInitial;
}

abstract class $CategoriesLoadingCopyWith<$Res> {
  factory $CategoriesLoadingCopyWith(
          CategoriesLoading value, $Res Function(CategoriesLoading) then) =
      _$CategoriesLoadingCopyWithImpl<$Res>;
}

class _$CategoriesLoadingCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res>
    implements $CategoriesLoadingCopyWith<$Res> {
  _$CategoriesLoadingCopyWithImpl(
      CategoriesLoading _value, $Res Function(CategoriesLoading) _then)
      : super(_value, (v) => _then(v as CategoriesLoading));

  @override
  CategoriesLoading get _value => super._value as CategoriesLoading;
}

class _$CategoriesLoading
    with DiagnosticableTreeMixin
    implements CategoriesLoading {
  const _$CategoriesLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoriesState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'CategoriesState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CategoriesLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<Categorie> categories),
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
    Result loaded(List<Categorie> categories),
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
    @required Result initial(CategoriesInitial value),
    @required Result loading(CategoriesLoading value),
    @required Result loaded(CategoriesLoaded value),
    @required Result error(CategoriesError value),
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
    Result initial(CategoriesInitial value),
    Result loading(CategoriesLoading value),
    Result loaded(CategoriesLoaded value),
    Result error(CategoriesError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CategoriesLoading implements CategoriesState {
  const factory CategoriesLoading() = _$CategoriesLoading;
}

abstract class $CategoriesLoadedCopyWith<$Res> {
  factory $CategoriesLoadedCopyWith(
          CategoriesLoaded value, $Res Function(CategoriesLoaded) then) =
      _$CategoriesLoadedCopyWithImpl<$Res>;
  $Res call({List<Categorie> categories});
}

class _$CategoriesLoadedCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res>
    implements $CategoriesLoadedCopyWith<$Res> {
  _$CategoriesLoadedCopyWithImpl(
      CategoriesLoaded _value, $Res Function(CategoriesLoaded) _then)
      : super(_value, (v) => _then(v as CategoriesLoaded));

  @override
  CategoriesLoaded get _value => super._value as CategoriesLoaded;

  @override
  $Res call({
    Object categories = freezed,
  }) {
    return _then(CategoriesLoaded(
      categories == freezed ? _value.categories : categories as List<Categorie>,
    ));
  }
}

class _$CategoriesLoaded
    with DiagnosticableTreeMixin
    implements CategoriesLoaded {
  const _$CategoriesLoaded(this.categories) : assert(categories != null);

  @override
  final List<Categorie> categories;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoriesState.loaded(categories: $categories)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoriesState.loaded'))
      ..add(DiagnosticsProperty('categories', categories));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CategoriesLoaded &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(categories);

  @override
  $CategoriesLoadedCopyWith<CategoriesLoaded> get copyWith =>
      _$CategoriesLoadedCopyWithImpl<CategoriesLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<Categorie> categories),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(categories);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<Categorie> categories),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(CategoriesInitial value),
    @required Result loading(CategoriesLoading value),
    @required Result loaded(CategoriesLoaded value),
    @required Result error(CategoriesError value),
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
    Result initial(CategoriesInitial value),
    Result loading(CategoriesLoading value),
    Result loaded(CategoriesLoaded value),
    Result error(CategoriesError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CategoriesLoaded implements CategoriesState {
  const factory CategoriesLoaded(List<Categorie> categories) =
      _$CategoriesLoaded;

  List<Categorie> get categories;
  $CategoriesLoadedCopyWith<CategoriesLoaded> get copyWith;
}

abstract class $CategoriesErrorCopyWith<$Res> {
  factory $CategoriesErrorCopyWith(
          CategoriesError value, $Res Function(CategoriesError) then) =
      _$CategoriesErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

class _$CategoriesErrorCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res>
    implements $CategoriesErrorCopyWith<$Res> {
  _$CategoriesErrorCopyWithImpl(
      CategoriesError _value, $Res Function(CategoriesError) _then)
      : super(_value, (v) => _then(v as CategoriesError));

  @override
  CategoriesError get _value => super._value as CategoriesError;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(CategoriesError(
      message == freezed ? _value.message : message as String,
    ));
  }
}

class _$CategoriesError
    with DiagnosticableTreeMixin
    implements CategoriesError {
  const _$CategoriesError(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoriesState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoriesState.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CategoriesError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $CategoriesErrorCopyWith<CategoriesError> get copyWith =>
      _$CategoriesErrorCopyWithImpl<CategoriesError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<Categorie> categories),
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
    Result loaded(List<Categorie> categories),
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
    @required Result initial(CategoriesInitial value),
    @required Result loading(CategoriesLoading value),
    @required Result loaded(CategoriesLoaded value),
    @required Result error(CategoriesError value),
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
    Result initial(CategoriesInitial value),
    Result loading(CategoriesLoading value),
    Result loaded(CategoriesLoaded value),
    Result error(CategoriesError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CategoriesError implements CategoriesState {
  const factory CategoriesError(String message) = _$CategoriesError;

  String get message;
  $CategoriesErrorCopyWith<CategoriesError> get copyWith;
}
