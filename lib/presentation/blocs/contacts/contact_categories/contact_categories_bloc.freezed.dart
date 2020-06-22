// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'contact_categories_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ContactCategoriesEventTearOff {
  const _$ContactCategoriesEventTearOff();

  FetchContactCategoriesEvent fetch() {
    return const FetchContactCategoriesEvent();
  }

  RefreshContactCategoriesEvent refresh(List<ContactCategorie> categories) {
    return RefreshContactCategoriesEvent(
      categories,
    );
  }
}

// ignore: unused_element
const $ContactCategoriesEvent = _$ContactCategoriesEventTearOff();

mixin _$ContactCategoriesEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetch(),
    @required Result refresh(List<ContactCategorie> categories),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetch(),
    Result refresh(List<ContactCategorie> categories),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetch(FetchContactCategoriesEvent value),
    @required Result refresh(RefreshContactCategoriesEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(FetchContactCategoriesEvent value),
    Result refresh(RefreshContactCategoriesEvent value),
    @required Result orElse(),
  });
}

abstract class $ContactCategoriesEventCopyWith<$Res> {
  factory $ContactCategoriesEventCopyWith(ContactCategoriesEvent value,
          $Res Function(ContactCategoriesEvent) then) =
      _$ContactCategoriesEventCopyWithImpl<$Res>;
}

class _$ContactCategoriesEventCopyWithImpl<$Res>
    implements $ContactCategoriesEventCopyWith<$Res> {
  _$ContactCategoriesEventCopyWithImpl(this._value, this._then);

  final ContactCategoriesEvent _value;
  // ignore: unused_field
  final $Res Function(ContactCategoriesEvent) _then;
}

abstract class $FetchContactCategoriesEventCopyWith<$Res> {
  factory $FetchContactCategoriesEventCopyWith(
          FetchContactCategoriesEvent value,
          $Res Function(FetchContactCategoriesEvent) then) =
      _$FetchContactCategoriesEventCopyWithImpl<$Res>;
}

class _$FetchContactCategoriesEventCopyWithImpl<$Res>
    extends _$ContactCategoriesEventCopyWithImpl<$Res>
    implements $FetchContactCategoriesEventCopyWith<$Res> {
  _$FetchContactCategoriesEventCopyWithImpl(FetchContactCategoriesEvent _value,
      $Res Function(FetchContactCategoriesEvent) _then)
      : super(_value, (v) => _then(v as FetchContactCategoriesEvent));

  @override
  FetchContactCategoriesEvent get _value =>
      super._value as FetchContactCategoriesEvent;
}

class _$FetchContactCategoriesEvent
    with DiagnosticableTreeMixin
    implements FetchContactCategoriesEvent {
  const _$FetchContactCategoriesEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContactCategoriesEvent.fetch()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ContactCategoriesEvent.fetch'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchContactCategoriesEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetch(),
    @required Result refresh(List<ContactCategorie> categories),
  }) {
    assert(fetch != null);
    assert(refresh != null);
    return fetch();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetch(),
    Result refresh(List<ContactCategorie> categories),
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
    @required Result fetch(FetchContactCategoriesEvent value),
    @required Result refresh(RefreshContactCategoriesEvent value),
  }) {
    assert(fetch != null);
    assert(refresh != null);
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(FetchContactCategoriesEvent value),
    Result refresh(RefreshContactCategoriesEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class FetchContactCategoriesEvent implements ContactCategoriesEvent {
  const factory FetchContactCategoriesEvent() = _$FetchContactCategoriesEvent;
}

abstract class $RefreshContactCategoriesEventCopyWith<$Res> {
  factory $RefreshContactCategoriesEventCopyWith(
          RefreshContactCategoriesEvent value,
          $Res Function(RefreshContactCategoriesEvent) then) =
      _$RefreshContactCategoriesEventCopyWithImpl<$Res>;
  $Res call({List<ContactCategorie> categories});
}

class _$RefreshContactCategoriesEventCopyWithImpl<$Res>
    extends _$ContactCategoriesEventCopyWithImpl<$Res>
    implements $RefreshContactCategoriesEventCopyWith<$Res> {
  _$RefreshContactCategoriesEventCopyWithImpl(
      RefreshContactCategoriesEvent _value,
      $Res Function(RefreshContactCategoriesEvent) _then)
      : super(_value, (v) => _then(v as RefreshContactCategoriesEvent));

  @override
  RefreshContactCategoriesEvent get _value =>
      super._value as RefreshContactCategoriesEvent;

  @override
  $Res call({
    Object categories = freezed,
  }) {
    return _then(RefreshContactCategoriesEvent(
      categories == freezed
          ? _value.categories
          : categories as List<ContactCategorie>,
    ));
  }
}

class _$RefreshContactCategoriesEvent
    with DiagnosticableTreeMixin
    implements RefreshContactCategoriesEvent {
  const _$RefreshContactCategoriesEvent(this.categories)
      : assert(categories != null);

  @override
  final List<ContactCategorie> categories;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContactCategoriesEvent.refresh(categories: $categories)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ContactCategoriesEvent.refresh'))
      ..add(DiagnosticsProperty('categories', categories));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RefreshContactCategoriesEvent &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(categories);

  @override
  $RefreshContactCategoriesEventCopyWith<RefreshContactCategoriesEvent>
      get copyWith => _$RefreshContactCategoriesEventCopyWithImpl<
          RefreshContactCategoriesEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetch(),
    @required Result refresh(List<ContactCategorie> categories),
  }) {
    assert(fetch != null);
    assert(refresh != null);
    return refresh(categories);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetch(),
    Result refresh(List<ContactCategorie> categories),
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
    @required Result fetch(FetchContactCategoriesEvent value),
    @required Result refresh(RefreshContactCategoriesEvent value),
  }) {
    assert(fetch != null);
    assert(refresh != null);
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(FetchContactCategoriesEvent value),
    Result refresh(RefreshContactCategoriesEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class RefreshContactCategoriesEvent implements ContactCategoriesEvent {
  const factory RefreshContactCategoriesEvent(
      List<ContactCategorie> categories) = _$RefreshContactCategoriesEvent;

  List<ContactCategorie> get categories;
  $RefreshContactCategoriesEventCopyWith<RefreshContactCategoriesEvent>
      get copyWith;
}

class _$ContactCategoriesStateTearOff {
  const _$ContactCategoriesStateTearOff();

  ContactCategoriesInitial initial() {
    return const ContactCategoriesInitial();
  }

  ContactCategoriesLoading loading() {
    return const ContactCategoriesLoading();
  }

  ContactCategoriesLoaded loaded(List<ContactCategorie> categories) {
    return ContactCategoriesLoaded(
      categories,
    );
  }

  ContactCategoriesError error(String message) {
    return ContactCategoriesError(
      message,
    );
  }
}

// ignore: unused_element
const $ContactCategoriesState = _$ContactCategoriesStateTearOff();

mixin _$ContactCategoriesState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<ContactCategorie> categories),
    @required Result error(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<ContactCategorie> categories),
    Result error(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(ContactCategoriesInitial value),
    @required Result loading(ContactCategoriesLoading value),
    @required Result loaded(ContactCategoriesLoaded value),
    @required Result error(ContactCategoriesError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(ContactCategoriesInitial value),
    Result loading(ContactCategoriesLoading value),
    Result loaded(ContactCategoriesLoaded value),
    Result error(ContactCategoriesError value),
    @required Result orElse(),
  });
}

abstract class $ContactCategoriesStateCopyWith<$Res> {
  factory $ContactCategoriesStateCopyWith(ContactCategoriesState value,
          $Res Function(ContactCategoriesState) then) =
      _$ContactCategoriesStateCopyWithImpl<$Res>;
}

class _$ContactCategoriesStateCopyWithImpl<$Res>
    implements $ContactCategoriesStateCopyWith<$Res> {
  _$ContactCategoriesStateCopyWithImpl(this._value, this._then);

  final ContactCategoriesState _value;
  // ignore: unused_field
  final $Res Function(ContactCategoriesState) _then;
}

abstract class $ContactCategoriesInitialCopyWith<$Res> {
  factory $ContactCategoriesInitialCopyWith(ContactCategoriesInitial value,
          $Res Function(ContactCategoriesInitial) then) =
      _$ContactCategoriesInitialCopyWithImpl<$Res>;
}

class _$ContactCategoriesInitialCopyWithImpl<$Res>
    extends _$ContactCategoriesStateCopyWithImpl<$Res>
    implements $ContactCategoriesInitialCopyWith<$Res> {
  _$ContactCategoriesInitialCopyWithImpl(ContactCategoriesInitial _value,
      $Res Function(ContactCategoriesInitial) _then)
      : super(_value, (v) => _then(v as ContactCategoriesInitial));

  @override
  ContactCategoriesInitial get _value =>
      super._value as ContactCategoriesInitial;
}

class _$ContactCategoriesInitial
    with DiagnosticableTreeMixin
    implements ContactCategoriesInitial {
  const _$ContactCategoriesInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContactCategoriesState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ContactCategoriesState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ContactCategoriesInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<ContactCategorie> categories),
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
    Result loaded(List<ContactCategorie> categories),
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
    @required Result initial(ContactCategoriesInitial value),
    @required Result loading(ContactCategoriesLoading value),
    @required Result loaded(ContactCategoriesLoaded value),
    @required Result error(ContactCategoriesError value),
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
    Result initial(ContactCategoriesInitial value),
    Result loading(ContactCategoriesLoading value),
    Result loaded(ContactCategoriesLoaded value),
    Result error(ContactCategoriesError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ContactCategoriesInitial implements ContactCategoriesState {
  const factory ContactCategoriesInitial() = _$ContactCategoriesInitial;
}

abstract class $ContactCategoriesLoadingCopyWith<$Res> {
  factory $ContactCategoriesLoadingCopyWith(ContactCategoriesLoading value,
          $Res Function(ContactCategoriesLoading) then) =
      _$ContactCategoriesLoadingCopyWithImpl<$Res>;
}

class _$ContactCategoriesLoadingCopyWithImpl<$Res>
    extends _$ContactCategoriesStateCopyWithImpl<$Res>
    implements $ContactCategoriesLoadingCopyWith<$Res> {
  _$ContactCategoriesLoadingCopyWithImpl(ContactCategoriesLoading _value,
      $Res Function(ContactCategoriesLoading) _then)
      : super(_value, (v) => _then(v as ContactCategoriesLoading));

  @override
  ContactCategoriesLoading get _value =>
      super._value as ContactCategoriesLoading;
}

class _$ContactCategoriesLoading
    with DiagnosticableTreeMixin
    implements ContactCategoriesLoading {
  const _$ContactCategoriesLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContactCategoriesState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ContactCategoriesState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ContactCategoriesLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<ContactCategorie> categories),
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
    Result loaded(List<ContactCategorie> categories),
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
    @required Result initial(ContactCategoriesInitial value),
    @required Result loading(ContactCategoriesLoading value),
    @required Result loaded(ContactCategoriesLoaded value),
    @required Result error(ContactCategoriesError value),
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
    Result initial(ContactCategoriesInitial value),
    Result loading(ContactCategoriesLoading value),
    Result loaded(ContactCategoriesLoaded value),
    Result error(ContactCategoriesError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ContactCategoriesLoading implements ContactCategoriesState {
  const factory ContactCategoriesLoading() = _$ContactCategoriesLoading;
}

abstract class $ContactCategoriesLoadedCopyWith<$Res> {
  factory $ContactCategoriesLoadedCopyWith(ContactCategoriesLoaded value,
          $Res Function(ContactCategoriesLoaded) then) =
      _$ContactCategoriesLoadedCopyWithImpl<$Res>;
  $Res call({List<ContactCategorie> categories});
}

class _$ContactCategoriesLoadedCopyWithImpl<$Res>
    extends _$ContactCategoriesStateCopyWithImpl<$Res>
    implements $ContactCategoriesLoadedCopyWith<$Res> {
  _$ContactCategoriesLoadedCopyWithImpl(ContactCategoriesLoaded _value,
      $Res Function(ContactCategoriesLoaded) _then)
      : super(_value, (v) => _then(v as ContactCategoriesLoaded));

  @override
  ContactCategoriesLoaded get _value => super._value as ContactCategoriesLoaded;

  @override
  $Res call({
    Object categories = freezed,
  }) {
    return _then(ContactCategoriesLoaded(
      categories == freezed
          ? _value.categories
          : categories as List<ContactCategorie>,
    ));
  }
}

class _$ContactCategoriesLoaded
    with DiagnosticableTreeMixin
    implements ContactCategoriesLoaded {
  const _$ContactCategoriesLoaded(this.categories) : assert(categories != null);

  @override
  final List<ContactCategorie> categories;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContactCategoriesState.loaded(categories: $categories)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ContactCategoriesState.loaded'))
      ..add(DiagnosticsProperty('categories', categories));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ContactCategoriesLoaded &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(categories);

  @override
  $ContactCategoriesLoadedCopyWith<ContactCategoriesLoaded> get copyWith =>
      _$ContactCategoriesLoadedCopyWithImpl<ContactCategoriesLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<ContactCategorie> categories),
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
    Result loaded(List<ContactCategorie> categories),
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
    @required Result initial(ContactCategoriesInitial value),
    @required Result loading(ContactCategoriesLoading value),
    @required Result loaded(ContactCategoriesLoaded value),
    @required Result error(ContactCategoriesError value),
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
    Result initial(ContactCategoriesInitial value),
    Result loading(ContactCategoriesLoading value),
    Result loaded(ContactCategoriesLoaded value),
    Result error(ContactCategoriesError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ContactCategoriesLoaded implements ContactCategoriesState {
  const factory ContactCategoriesLoaded(List<ContactCategorie> categories) =
      _$ContactCategoriesLoaded;

  List<ContactCategorie> get categories;
  $ContactCategoriesLoadedCopyWith<ContactCategoriesLoaded> get copyWith;
}

abstract class $ContactCategoriesErrorCopyWith<$Res> {
  factory $ContactCategoriesErrorCopyWith(ContactCategoriesError value,
          $Res Function(ContactCategoriesError) then) =
      _$ContactCategoriesErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

class _$ContactCategoriesErrorCopyWithImpl<$Res>
    extends _$ContactCategoriesStateCopyWithImpl<$Res>
    implements $ContactCategoriesErrorCopyWith<$Res> {
  _$ContactCategoriesErrorCopyWithImpl(ContactCategoriesError _value,
      $Res Function(ContactCategoriesError) _then)
      : super(_value, (v) => _then(v as ContactCategoriesError));

  @override
  ContactCategoriesError get _value => super._value as ContactCategoriesError;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(ContactCategoriesError(
      message == freezed ? _value.message : message as String,
    ));
  }
}

class _$ContactCategoriesError
    with DiagnosticableTreeMixin
    implements ContactCategoriesError {
  const _$ContactCategoriesError(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContactCategoriesState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ContactCategoriesState.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ContactCategoriesError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $ContactCategoriesErrorCopyWith<ContactCategoriesError> get copyWith =>
      _$ContactCategoriesErrorCopyWithImpl<ContactCategoriesError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<ContactCategorie> categories),
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
    Result loaded(List<ContactCategorie> categories),
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
    @required Result initial(ContactCategoriesInitial value),
    @required Result loading(ContactCategoriesLoading value),
    @required Result loaded(ContactCategoriesLoaded value),
    @required Result error(ContactCategoriesError value),
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
    Result initial(ContactCategoriesInitial value),
    Result loading(ContactCategoriesLoading value),
    Result loaded(ContactCategoriesLoaded value),
    Result error(ContactCategoriesError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ContactCategoriesError implements ContactCategoriesState {
  const factory ContactCategoriesError(String message) =
      _$ContactCategoriesError;

  String get message;
  $ContactCategoriesErrorCopyWith<ContactCategoriesError> get copyWith;
}
