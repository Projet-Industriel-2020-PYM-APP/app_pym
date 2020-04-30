// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'contact_type_categories_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ContactTypeCategoriesEventTearOff {
  const _$ContactTypeCategoriesEventTearOff();

  FetchContactTypeCategoriesEvent fetch() {
    return const FetchContactTypeCategoriesEvent();
  }

  RefreshContactTypeCategoriesEvent refresh(List<Categorie> categories) {
    return RefreshContactTypeCategoriesEvent(
      categories,
    );
  }
}

// ignore: unused_element
const $ContactTypeCategoriesEvent = _$ContactTypeCategoriesEventTearOff();

mixin _$ContactTypeCategoriesEvent {
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
    @required Result fetch(FetchContactTypeCategoriesEvent value),
    @required Result refresh(RefreshContactTypeCategoriesEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(FetchContactTypeCategoriesEvent value),
    Result refresh(RefreshContactTypeCategoriesEvent value),
    @required Result orElse(),
  });
}

abstract class $ContactTypeCategoriesEventCopyWith<$Res> {
  factory $ContactTypeCategoriesEventCopyWith(ContactTypeCategoriesEvent value,
          $Res Function(ContactTypeCategoriesEvent) then) =
      _$ContactTypeCategoriesEventCopyWithImpl<$Res>;
}

class _$ContactTypeCategoriesEventCopyWithImpl<$Res>
    implements $ContactTypeCategoriesEventCopyWith<$Res> {
  _$ContactTypeCategoriesEventCopyWithImpl(this._value, this._then);

  final ContactTypeCategoriesEvent _value;
  // ignore: unused_field
  final $Res Function(ContactTypeCategoriesEvent) _then;
}

abstract class $FetchContactTypeCategoriesEventCopyWith<$Res> {
  factory $FetchContactTypeCategoriesEventCopyWith(
          FetchContactTypeCategoriesEvent value,
          $Res Function(FetchContactTypeCategoriesEvent) then) =
      _$FetchContactTypeCategoriesEventCopyWithImpl<$Res>;
}

class _$FetchContactTypeCategoriesEventCopyWithImpl<$Res>
    extends _$ContactTypeCategoriesEventCopyWithImpl<$Res>
    implements $FetchContactTypeCategoriesEventCopyWith<$Res> {
  _$FetchContactTypeCategoriesEventCopyWithImpl(
      FetchContactTypeCategoriesEvent _value,
      $Res Function(FetchContactTypeCategoriesEvent) _then)
      : super(_value, (v) => _then(v as FetchContactTypeCategoriesEvent));

  @override
  FetchContactTypeCategoriesEvent get _value =>
      super._value as FetchContactTypeCategoriesEvent;
}

class _$FetchContactTypeCategoriesEvent
    with DiagnosticableTreeMixin
    implements FetchContactTypeCategoriesEvent {
  const _$FetchContactTypeCategoriesEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContactTypeCategoriesEvent.fetch()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ContactTypeCategoriesEvent.fetch'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchContactTypeCategoriesEvent);
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
    @required Result fetch(FetchContactTypeCategoriesEvent value),
    @required Result refresh(RefreshContactTypeCategoriesEvent value),
  }) {
    assert(fetch != null);
    assert(refresh != null);
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(FetchContactTypeCategoriesEvent value),
    Result refresh(RefreshContactTypeCategoriesEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class FetchContactTypeCategoriesEvent
    implements ContactTypeCategoriesEvent {
  const factory FetchContactTypeCategoriesEvent() =
      _$FetchContactTypeCategoriesEvent;
}

abstract class $RefreshContactTypeCategoriesEventCopyWith<$Res> {
  factory $RefreshContactTypeCategoriesEventCopyWith(
          RefreshContactTypeCategoriesEvent value,
          $Res Function(RefreshContactTypeCategoriesEvent) then) =
      _$RefreshContactTypeCategoriesEventCopyWithImpl<$Res>;
  $Res call({List<Categorie> categories});
}

class _$RefreshContactTypeCategoriesEventCopyWithImpl<$Res>
    extends _$ContactTypeCategoriesEventCopyWithImpl<$Res>
    implements $RefreshContactTypeCategoriesEventCopyWith<$Res> {
  _$RefreshContactTypeCategoriesEventCopyWithImpl(
      RefreshContactTypeCategoriesEvent _value,
      $Res Function(RefreshContactTypeCategoriesEvent) _then)
      : super(_value, (v) => _then(v as RefreshContactTypeCategoriesEvent));

  @override
  RefreshContactTypeCategoriesEvent get _value =>
      super._value as RefreshContactTypeCategoriesEvent;

  @override
  $Res call({
    Object categories = freezed,
  }) {
    return _then(RefreshContactTypeCategoriesEvent(
      categories == freezed ? _value.categories : categories as List<Categorie>,
    ));
  }
}

class _$RefreshContactTypeCategoriesEvent
    with DiagnosticableTreeMixin
    implements RefreshContactTypeCategoriesEvent {
  const _$RefreshContactTypeCategoriesEvent(this.categories)
      : assert(categories != null);

  @override
  final List<Categorie> categories;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContactTypeCategoriesEvent.refresh(categories: $categories)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ContactTypeCategoriesEvent.refresh'))
      ..add(DiagnosticsProperty('categories', categories));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RefreshContactTypeCategoriesEvent &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(categories);

  @override
  $RefreshContactTypeCategoriesEventCopyWith<RefreshContactTypeCategoriesEvent>
      get copyWith => _$RefreshContactTypeCategoriesEventCopyWithImpl<
          RefreshContactTypeCategoriesEvent>(this, _$identity);

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
    @required Result fetch(FetchContactTypeCategoriesEvent value),
    @required Result refresh(RefreshContactTypeCategoriesEvent value),
  }) {
    assert(fetch != null);
    assert(refresh != null);
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(FetchContactTypeCategoriesEvent value),
    Result refresh(RefreshContactTypeCategoriesEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class RefreshContactTypeCategoriesEvent
    implements ContactTypeCategoriesEvent {
  const factory RefreshContactTypeCategoriesEvent(List<Categorie> categories) =
      _$RefreshContactTypeCategoriesEvent;

  List<Categorie> get categories;
  $RefreshContactTypeCategoriesEventCopyWith<RefreshContactTypeCategoriesEvent>
      get copyWith;
}

class _$ContactTypeCategoriesStateTearOff {
  const _$ContactTypeCategoriesStateTearOff();

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
const $ContactTypeCategoriesState = _$ContactTypeCategoriesStateTearOff();

mixin _$ContactTypeCategoriesState {
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

abstract class $ContactTypeCategoriesStateCopyWith<$Res> {
  factory $ContactTypeCategoriesStateCopyWith(ContactTypeCategoriesState value,
          $Res Function(ContactTypeCategoriesState) then) =
      _$ContactTypeCategoriesStateCopyWithImpl<$Res>;
}

class _$ContactTypeCategoriesStateCopyWithImpl<$Res>
    implements $ContactTypeCategoriesStateCopyWith<$Res> {
  _$ContactTypeCategoriesStateCopyWithImpl(this._value, this._then);

  final ContactTypeCategoriesState _value;
  // ignore: unused_field
  final $Res Function(ContactTypeCategoriesState) _then;
}

abstract class $CategoriesInitialCopyWith<$Res> {
  factory $CategoriesInitialCopyWith(
          CategoriesInitial value, $Res Function(CategoriesInitial) then) =
      _$CategoriesInitialCopyWithImpl<$Res>;
}

class _$CategoriesInitialCopyWithImpl<$Res>
    extends _$ContactTypeCategoriesStateCopyWithImpl<$Res>
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
    return 'ContactTypeCategoriesState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ContactTypeCategoriesState.initial'));
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

abstract class CategoriesInitial implements ContactTypeCategoriesState {
  const factory CategoriesInitial() = _$CategoriesInitial;
}

abstract class $CategoriesLoadingCopyWith<$Res> {
  factory $CategoriesLoadingCopyWith(
          CategoriesLoading value, $Res Function(CategoriesLoading) then) =
      _$CategoriesLoadingCopyWithImpl<$Res>;
}

class _$CategoriesLoadingCopyWithImpl<$Res>
    extends _$ContactTypeCategoriesStateCopyWithImpl<$Res>
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
    return 'ContactTypeCategoriesState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ContactTypeCategoriesState.loading'));
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

abstract class CategoriesLoading implements ContactTypeCategoriesState {
  const factory CategoriesLoading() = _$CategoriesLoading;
}

abstract class $CategoriesLoadedCopyWith<$Res> {
  factory $CategoriesLoadedCopyWith(
          CategoriesLoaded value, $Res Function(CategoriesLoaded) then) =
      _$CategoriesLoadedCopyWithImpl<$Res>;
  $Res call({List<Categorie> categories});
}

class _$CategoriesLoadedCopyWithImpl<$Res>
    extends _$ContactTypeCategoriesStateCopyWithImpl<$Res>
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
    return 'ContactTypeCategoriesState.loaded(categories: $categories)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ContactTypeCategoriesState.loaded'))
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

abstract class CategoriesLoaded implements ContactTypeCategoriesState {
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
    extends _$ContactTypeCategoriesStateCopyWithImpl<$Res>
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
    return 'ContactTypeCategoriesState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ContactTypeCategoriesState.error'))
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

abstract class CategoriesError implements ContactTypeCategoriesState {
  const factory CategoriesError(String message) = _$CategoriesError;

  String get message;
  $CategoriesErrorCopyWith<CategoriesError> get copyWith;
}
