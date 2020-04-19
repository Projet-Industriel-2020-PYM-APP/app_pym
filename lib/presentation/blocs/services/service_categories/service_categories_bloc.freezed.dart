// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'service_categories_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ServiceCategoriesEventTearOff {
  const _$ServiceCategoriesEventTearOff();

  FetchServiceCategoriesEvent fetch() {
    return const FetchServiceCategoriesEvent();
  }

  RefreshServiceCategoriesEvent refresh(List<Categorie> categories) {
    return RefreshServiceCategoriesEvent(
      categories,
    );
  }
}

// ignore: unused_element
const $ServiceCategoriesEvent = _$ServiceCategoriesEventTearOff();

mixin _$ServiceCategoriesEvent {
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
    @required Result fetch(FetchServiceCategoriesEvent value),
    @required Result refresh(RefreshServiceCategoriesEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(FetchServiceCategoriesEvent value),
    Result refresh(RefreshServiceCategoriesEvent value),
    @required Result orElse(),
  });
}

abstract class $ServiceCategoriesEventCopyWith<$Res> {
  factory $ServiceCategoriesEventCopyWith(ServiceCategoriesEvent value,
          $Res Function(ServiceCategoriesEvent) then) =
      _$ServiceCategoriesEventCopyWithImpl<$Res>;
}

class _$ServiceCategoriesEventCopyWithImpl<$Res>
    implements $ServiceCategoriesEventCopyWith<$Res> {
  _$ServiceCategoriesEventCopyWithImpl(this._value, this._then);

  final ServiceCategoriesEvent _value;
  // ignore: unused_field
  final $Res Function(ServiceCategoriesEvent) _then;
}

abstract class $FetchServiceCategoriesEventCopyWith<$Res> {
  factory $FetchServiceCategoriesEventCopyWith(
          FetchServiceCategoriesEvent value,
          $Res Function(FetchServiceCategoriesEvent) then) =
      _$FetchServiceCategoriesEventCopyWithImpl<$Res>;
}

class _$FetchServiceCategoriesEventCopyWithImpl<$Res>
    extends _$ServiceCategoriesEventCopyWithImpl<$Res>
    implements $FetchServiceCategoriesEventCopyWith<$Res> {
  _$FetchServiceCategoriesEventCopyWithImpl(FetchServiceCategoriesEvent _value,
      $Res Function(FetchServiceCategoriesEvent) _then)
      : super(_value, (v) => _then(v as FetchServiceCategoriesEvent));

  @override
  FetchServiceCategoriesEvent get _value =>
      super._value as FetchServiceCategoriesEvent;
}

class _$FetchServiceCategoriesEvent
    with DiagnosticableTreeMixin
    implements FetchServiceCategoriesEvent {
  const _$FetchServiceCategoriesEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServiceCategoriesEvent.fetch()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServiceCategoriesEvent.fetch'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchServiceCategoriesEvent);
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
    @required Result fetch(FetchServiceCategoriesEvent value),
    @required Result refresh(RefreshServiceCategoriesEvent value),
  }) {
    assert(fetch != null);
    assert(refresh != null);
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(FetchServiceCategoriesEvent value),
    Result refresh(RefreshServiceCategoriesEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class FetchServiceCategoriesEvent implements ServiceCategoriesEvent {
  const factory FetchServiceCategoriesEvent() = _$FetchServiceCategoriesEvent;
}

abstract class $RefreshServiceCategoriesEventCopyWith<$Res> {
  factory $RefreshServiceCategoriesEventCopyWith(
          RefreshServiceCategoriesEvent value,
          $Res Function(RefreshServiceCategoriesEvent) then) =
      _$RefreshServiceCategoriesEventCopyWithImpl<$Res>;
  $Res call({List<Categorie> categories});
}

class _$RefreshServiceCategoriesEventCopyWithImpl<$Res>
    extends _$ServiceCategoriesEventCopyWithImpl<$Res>
    implements $RefreshServiceCategoriesEventCopyWith<$Res> {
  _$RefreshServiceCategoriesEventCopyWithImpl(
      RefreshServiceCategoriesEvent _value,
      $Res Function(RefreshServiceCategoriesEvent) _then)
      : super(_value, (v) => _then(v as RefreshServiceCategoriesEvent));

  @override
  RefreshServiceCategoriesEvent get _value =>
      super._value as RefreshServiceCategoriesEvent;

  @override
  $Res call({
    Object categories = freezed,
  }) {
    return _then(RefreshServiceCategoriesEvent(
      categories == freezed ? _value.categories : categories as List<Categorie>,
    ));
  }
}

class _$RefreshServiceCategoriesEvent
    with DiagnosticableTreeMixin
    implements RefreshServiceCategoriesEvent {
  const _$RefreshServiceCategoriesEvent(this.categories)
      : assert(categories != null);

  @override
  final List<Categorie> categories;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServiceCategoriesEvent.refresh(categories: $categories)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServiceCategoriesEvent.refresh'))
      ..add(DiagnosticsProperty('categories', categories));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RefreshServiceCategoriesEvent &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(categories);

  @override
  $RefreshServiceCategoriesEventCopyWith<RefreshServiceCategoriesEvent>
      get copyWith => _$RefreshServiceCategoriesEventCopyWithImpl<
          RefreshServiceCategoriesEvent>(this, _$identity);

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
    @required Result fetch(FetchServiceCategoriesEvent value),
    @required Result refresh(RefreshServiceCategoriesEvent value),
  }) {
    assert(fetch != null);
    assert(refresh != null);
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(FetchServiceCategoriesEvent value),
    Result refresh(RefreshServiceCategoriesEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class RefreshServiceCategoriesEvent implements ServiceCategoriesEvent {
  const factory RefreshServiceCategoriesEvent(List<Categorie> categories) =
      _$RefreshServiceCategoriesEvent;

  List<Categorie> get categories;
  $RefreshServiceCategoriesEventCopyWith<RefreshServiceCategoriesEvent>
      get copyWith;
}

class _$ServiceCategoriesStateTearOff {
  const _$ServiceCategoriesStateTearOff();

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
const $ServiceCategoriesState = _$ServiceCategoriesStateTearOff();

mixin _$ServiceCategoriesState {
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

abstract class $ServiceCategoriesStateCopyWith<$Res> {
  factory $ServiceCategoriesStateCopyWith(ServiceCategoriesState value,
          $Res Function(ServiceCategoriesState) then) =
      _$ServiceCategoriesStateCopyWithImpl<$Res>;
}

class _$ServiceCategoriesStateCopyWithImpl<$Res>
    implements $ServiceCategoriesStateCopyWith<$Res> {
  _$ServiceCategoriesStateCopyWithImpl(this._value, this._then);

  final ServiceCategoriesState _value;
  // ignore: unused_field
  final $Res Function(ServiceCategoriesState) _then;
}

abstract class $CategoriesInitialCopyWith<$Res> {
  factory $CategoriesInitialCopyWith(
          CategoriesInitial value, $Res Function(CategoriesInitial) then) =
      _$CategoriesInitialCopyWithImpl<$Res>;
}

class _$CategoriesInitialCopyWithImpl<$Res>
    extends _$ServiceCategoriesStateCopyWithImpl<$Res>
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
    return 'ServiceCategoriesState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServiceCategoriesState.initial'));
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

abstract class CategoriesInitial implements ServiceCategoriesState {
  const factory CategoriesInitial() = _$CategoriesInitial;
}

abstract class $CategoriesLoadingCopyWith<$Res> {
  factory $CategoriesLoadingCopyWith(
          CategoriesLoading value, $Res Function(CategoriesLoading) then) =
      _$CategoriesLoadingCopyWithImpl<$Res>;
}

class _$CategoriesLoadingCopyWithImpl<$Res>
    extends _$ServiceCategoriesStateCopyWithImpl<$Res>
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
    return 'ServiceCategoriesState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServiceCategoriesState.loading'));
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

abstract class CategoriesLoading implements ServiceCategoriesState {
  const factory CategoriesLoading() = _$CategoriesLoading;
}

abstract class $CategoriesLoadedCopyWith<$Res> {
  factory $CategoriesLoadedCopyWith(
          CategoriesLoaded value, $Res Function(CategoriesLoaded) then) =
      _$CategoriesLoadedCopyWithImpl<$Res>;
  $Res call({List<Categorie> categories});
}

class _$CategoriesLoadedCopyWithImpl<$Res>
    extends _$ServiceCategoriesStateCopyWithImpl<$Res>
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
    return 'ServiceCategoriesState.loaded(categories: $categories)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServiceCategoriesState.loaded'))
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

abstract class CategoriesLoaded implements ServiceCategoriesState {
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
    extends _$ServiceCategoriesStateCopyWithImpl<$Res>
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
    return 'ServiceCategoriesState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServiceCategoriesState.error'))
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

abstract class CategoriesError implements ServiceCategoriesState {
  const factory CategoriesError(String message) = _$CategoriesError;

  String get message;
  $CategoriesErrorCopyWith<CategoriesError> get copyWith;
}
