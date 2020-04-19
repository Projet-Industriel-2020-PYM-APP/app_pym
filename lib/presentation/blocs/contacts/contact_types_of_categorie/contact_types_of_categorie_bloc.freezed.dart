// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'contact_types_of_categorie_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ContactTypesOfCategorieEventTearOff {
  const _$ContactTypesOfCategorieEventTearOff();

  FetchContactTypesOfCategorieEvent fetch(Categorie categorie) {
    return FetchContactTypesOfCategorieEvent(
      categorie,
    );
  }

  RefreshContactTypesOfCategorieEvent refresh(List<ContactType> contactTypes) {
    return RefreshContactTypesOfCategorieEvent(
      contactTypes,
    );
  }
}

// ignore: unused_element
const $ContactTypesOfCategorieEvent = _$ContactTypesOfCategorieEventTearOff();

mixin _$ContactTypesOfCategorieEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetch(Categorie categorie),
    @required Result refresh(List<ContactType> contactTypes),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetch(Categorie categorie),
    Result refresh(List<ContactType> contactTypes),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetch(FetchContactTypesOfCategorieEvent value),
    @required Result refresh(RefreshContactTypesOfCategorieEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(FetchContactTypesOfCategorieEvent value),
    Result refresh(RefreshContactTypesOfCategorieEvent value),
    @required Result orElse(),
  });
}

abstract class $ContactTypesOfCategorieEventCopyWith<$Res> {
  factory $ContactTypesOfCategorieEventCopyWith(
          ContactTypesOfCategorieEvent value,
          $Res Function(ContactTypesOfCategorieEvent) then) =
      _$ContactTypesOfCategorieEventCopyWithImpl<$Res>;
}

class _$ContactTypesOfCategorieEventCopyWithImpl<$Res>
    implements $ContactTypesOfCategorieEventCopyWith<$Res> {
  _$ContactTypesOfCategorieEventCopyWithImpl(this._value, this._then);

  final ContactTypesOfCategorieEvent _value;
  // ignore: unused_field
  final $Res Function(ContactTypesOfCategorieEvent) _then;
}

abstract class $FetchContactTypesOfCategorieEventCopyWith<$Res> {
  factory $FetchContactTypesOfCategorieEventCopyWith(
          FetchContactTypesOfCategorieEvent value,
          $Res Function(FetchContactTypesOfCategorieEvent) then) =
      _$FetchContactTypesOfCategorieEventCopyWithImpl<$Res>;
  $Res call({Categorie categorie});

  $CategorieCopyWith<$Res> get categorie;
}

class _$FetchContactTypesOfCategorieEventCopyWithImpl<$Res>
    extends _$ContactTypesOfCategorieEventCopyWithImpl<$Res>
    implements $FetchContactTypesOfCategorieEventCopyWith<$Res> {
  _$FetchContactTypesOfCategorieEventCopyWithImpl(
      FetchContactTypesOfCategorieEvent _value,
      $Res Function(FetchContactTypesOfCategorieEvent) _then)
      : super(_value, (v) => _then(v as FetchContactTypesOfCategorieEvent));

  @override
  FetchContactTypesOfCategorieEvent get _value =>
      super._value as FetchContactTypesOfCategorieEvent;

  @override
  $Res call({
    Object categorie = freezed,
  }) {
    return _then(FetchContactTypesOfCategorieEvent(
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

class _$FetchContactTypesOfCategorieEvent
    with DiagnosticableTreeMixin
    implements FetchContactTypesOfCategorieEvent {
  const _$FetchContactTypesOfCategorieEvent(this.categorie)
      : assert(categorie != null);

  @override
  final Categorie categorie;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContactTypesOfCategorieEvent.fetch(categorie: $categorie)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ContactTypesOfCategorieEvent.fetch'))
      ..add(DiagnosticsProperty('categorie', categorie));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchContactTypesOfCategorieEvent &&
            (identical(other.categorie, categorie) ||
                const DeepCollectionEquality()
                    .equals(other.categorie, categorie)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(categorie);

  @override
  $FetchContactTypesOfCategorieEventCopyWith<FetchContactTypesOfCategorieEvent>
      get copyWith => _$FetchContactTypesOfCategorieEventCopyWithImpl<
          FetchContactTypesOfCategorieEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetch(Categorie categorie),
    @required Result refresh(List<ContactType> contactTypes),
  }) {
    assert(fetch != null);
    assert(refresh != null);
    return fetch(categorie);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetch(Categorie categorie),
    Result refresh(List<ContactType> contactTypes),
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
    @required Result fetch(FetchContactTypesOfCategorieEvent value),
    @required Result refresh(RefreshContactTypesOfCategorieEvent value),
  }) {
    assert(fetch != null);
    assert(refresh != null);
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(FetchContactTypesOfCategorieEvent value),
    Result refresh(RefreshContactTypesOfCategorieEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class FetchContactTypesOfCategorieEvent
    implements ContactTypesOfCategorieEvent {
  const factory FetchContactTypesOfCategorieEvent(Categorie categorie) =
      _$FetchContactTypesOfCategorieEvent;

  Categorie get categorie;
  $FetchContactTypesOfCategorieEventCopyWith<FetchContactTypesOfCategorieEvent>
      get copyWith;
}

abstract class $RefreshContactTypesOfCategorieEventCopyWith<$Res> {
  factory $RefreshContactTypesOfCategorieEventCopyWith(
          RefreshContactTypesOfCategorieEvent value,
          $Res Function(RefreshContactTypesOfCategorieEvent) then) =
      _$RefreshContactTypesOfCategorieEventCopyWithImpl<$Res>;
  $Res call({List<ContactType> contactTypes});
}

class _$RefreshContactTypesOfCategorieEventCopyWithImpl<$Res>
    extends _$ContactTypesOfCategorieEventCopyWithImpl<$Res>
    implements $RefreshContactTypesOfCategorieEventCopyWith<$Res> {
  _$RefreshContactTypesOfCategorieEventCopyWithImpl(
      RefreshContactTypesOfCategorieEvent _value,
      $Res Function(RefreshContactTypesOfCategorieEvent) _then)
      : super(_value, (v) => _then(v as RefreshContactTypesOfCategorieEvent));

  @override
  RefreshContactTypesOfCategorieEvent get _value =>
      super._value as RefreshContactTypesOfCategorieEvent;

  @override
  $Res call({
    Object contactTypes = freezed,
  }) {
    return _then(RefreshContactTypesOfCategorieEvent(
      contactTypes == freezed
          ? _value.contactTypes
          : contactTypes as List<ContactType>,
    ));
  }
}

class _$RefreshContactTypesOfCategorieEvent
    with DiagnosticableTreeMixin
    implements RefreshContactTypesOfCategorieEvent {
  const _$RefreshContactTypesOfCategorieEvent(this.contactTypes)
      : assert(contactTypes != null);

  @override
  final List<ContactType> contactTypes;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContactTypesOfCategorieEvent.refresh(contactTypes: $contactTypes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ContactTypesOfCategorieEvent.refresh'))
      ..add(DiagnosticsProperty('contactTypes', contactTypes));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RefreshContactTypesOfCategorieEvent &&
            (identical(other.contactTypes, contactTypes) ||
                const DeepCollectionEquality()
                    .equals(other.contactTypes, contactTypes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(contactTypes);

  @override
  $RefreshContactTypesOfCategorieEventCopyWith<
          RefreshContactTypesOfCategorieEvent>
      get copyWith => _$RefreshContactTypesOfCategorieEventCopyWithImpl<
          RefreshContactTypesOfCategorieEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetch(Categorie categorie),
    @required Result refresh(List<ContactType> contactTypes),
  }) {
    assert(fetch != null);
    assert(refresh != null);
    return refresh(contactTypes);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetch(Categorie categorie),
    Result refresh(List<ContactType> contactTypes),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refresh != null) {
      return refresh(contactTypes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetch(FetchContactTypesOfCategorieEvent value),
    @required Result refresh(RefreshContactTypesOfCategorieEvent value),
  }) {
    assert(fetch != null);
    assert(refresh != null);
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(FetchContactTypesOfCategorieEvent value),
    Result refresh(RefreshContactTypesOfCategorieEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class RefreshContactTypesOfCategorieEvent
    implements ContactTypesOfCategorieEvent {
  const factory RefreshContactTypesOfCategorieEvent(
      List<ContactType> contactTypes) = _$RefreshContactTypesOfCategorieEvent;

  List<ContactType> get contactTypes;
  $RefreshContactTypesOfCategorieEventCopyWith<
      RefreshContactTypesOfCategorieEvent> get copyWith;
}

class _$ContactTypesOfCategorieStateTearOff {
  const _$ContactTypesOfCategorieStateTearOff();

  ContactTypesOfCategorieInitial initial() {
    return const ContactTypesOfCategorieInitial();
  }

  ContactTypesOfCategorieLoading loading() {
    return const ContactTypesOfCategorieLoading();
  }

  ContactTypesOfCategorieLoaded loaded(List<ContactType> contactTypes) {
    return ContactTypesOfCategorieLoaded(
      contactTypes,
    );
  }

  ContactTypesOfCategorieError error(String message) {
    return ContactTypesOfCategorieError(
      message,
    );
  }
}

// ignore: unused_element
const $ContactTypesOfCategorieState = _$ContactTypesOfCategorieStateTearOff();

mixin _$ContactTypesOfCategorieState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<ContactType> contactTypes),
    @required Result error(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<ContactType> contactTypes),
    Result error(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(ContactTypesOfCategorieInitial value),
    @required Result loading(ContactTypesOfCategorieLoading value),
    @required Result loaded(ContactTypesOfCategorieLoaded value),
    @required Result error(ContactTypesOfCategorieError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(ContactTypesOfCategorieInitial value),
    Result loading(ContactTypesOfCategorieLoading value),
    Result loaded(ContactTypesOfCategorieLoaded value),
    Result error(ContactTypesOfCategorieError value),
    @required Result orElse(),
  });
}

abstract class $ContactTypesOfCategorieStateCopyWith<$Res> {
  factory $ContactTypesOfCategorieStateCopyWith(
          ContactTypesOfCategorieState value,
          $Res Function(ContactTypesOfCategorieState) then) =
      _$ContactTypesOfCategorieStateCopyWithImpl<$Res>;
}

class _$ContactTypesOfCategorieStateCopyWithImpl<$Res>
    implements $ContactTypesOfCategorieStateCopyWith<$Res> {
  _$ContactTypesOfCategorieStateCopyWithImpl(this._value, this._then);

  final ContactTypesOfCategorieState _value;
  // ignore: unused_field
  final $Res Function(ContactTypesOfCategorieState) _then;
}

abstract class $ContactTypesOfCategorieInitialCopyWith<$Res> {
  factory $ContactTypesOfCategorieInitialCopyWith(
          ContactTypesOfCategorieInitial value,
          $Res Function(ContactTypesOfCategorieInitial) then) =
      _$ContactTypesOfCategorieInitialCopyWithImpl<$Res>;
}

class _$ContactTypesOfCategorieInitialCopyWithImpl<$Res>
    extends _$ContactTypesOfCategorieStateCopyWithImpl<$Res>
    implements $ContactTypesOfCategorieInitialCopyWith<$Res> {
  _$ContactTypesOfCategorieInitialCopyWithImpl(
      ContactTypesOfCategorieInitial _value,
      $Res Function(ContactTypesOfCategorieInitial) _then)
      : super(_value, (v) => _then(v as ContactTypesOfCategorieInitial));

  @override
  ContactTypesOfCategorieInitial get _value =>
      super._value as ContactTypesOfCategorieInitial;
}

class _$ContactTypesOfCategorieInitial
    with DiagnosticableTreeMixin
    implements ContactTypesOfCategorieInitial {
  const _$ContactTypesOfCategorieInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContactTypesOfCategorieState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'ContactTypesOfCategorieState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ContactTypesOfCategorieInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<ContactType> contactTypes),
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
    Result loaded(List<ContactType> contactTypes),
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
    @required Result initial(ContactTypesOfCategorieInitial value),
    @required Result loading(ContactTypesOfCategorieLoading value),
    @required Result loaded(ContactTypesOfCategorieLoaded value),
    @required Result error(ContactTypesOfCategorieError value),
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
    Result initial(ContactTypesOfCategorieInitial value),
    Result loading(ContactTypesOfCategorieLoading value),
    Result loaded(ContactTypesOfCategorieLoaded value),
    Result error(ContactTypesOfCategorieError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ContactTypesOfCategorieInitial
    implements ContactTypesOfCategorieState {
  const factory ContactTypesOfCategorieInitial() =
      _$ContactTypesOfCategorieInitial;
}

abstract class $ContactTypesOfCategorieLoadingCopyWith<$Res> {
  factory $ContactTypesOfCategorieLoadingCopyWith(
          ContactTypesOfCategorieLoading value,
          $Res Function(ContactTypesOfCategorieLoading) then) =
      _$ContactTypesOfCategorieLoadingCopyWithImpl<$Res>;
}

class _$ContactTypesOfCategorieLoadingCopyWithImpl<$Res>
    extends _$ContactTypesOfCategorieStateCopyWithImpl<$Res>
    implements $ContactTypesOfCategorieLoadingCopyWith<$Res> {
  _$ContactTypesOfCategorieLoadingCopyWithImpl(
      ContactTypesOfCategorieLoading _value,
      $Res Function(ContactTypesOfCategorieLoading) _then)
      : super(_value, (v) => _then(v as ContactTypesOfCategorieLoading));

  @override
  ContactTypesOfCategorieLoading get _value =>
      super._value as ContactTypesOfCategorieLoading;
}

class _$ContactTypesOfCategorieLoading
    with DiagnosticableTreeMixin
    implements ContactTypesOfCategorieLoading {
  const _$ContactTypesOfCategorieLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContactTypesOfCategorieState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'ContactTypesOfCategorieState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ContactTypesOfCategorieLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<ContactType> contactTypes),
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
    Result loaded(List<ContactType> contactTypes),
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
    @required Result initial(ContactTypesOfCategorieInitial value),
    @required Result loading(ContactTypesOfCategorieLoading value),
    @required Result loaded(ContactTypesOfCategorieLoaded value),
    @required Result error(ContactTypesOfCategorieError value),
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
    Result initial(ContactTypesOfCategorieInitial value),
    Result loading(ContactTypesOfCategorieLoading value),
    Result loaded(ContactTypesOfCategorieLoaded value),
    Result error(ContactTypesOfCategorieError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ContactTypesOfCategorieLoading
    implements ContactTypesOfCategorieState {
  const factory ContactTypesOfCategorieLoading() =
      _$ContactTypesOfCategorieLoading;
}

abstract class $ContactTypesOfCategorieLoadedCopyWith<$Res> {
  factory $ContactTypesOfCategorieLoadedCopyWith(
          ContactTypesOfCategorieLoaded value,
          $Res Function(ContactTypesOfCategorieLoaded) then) =
      _$ContactTypesOfCategorieLoadedCopyWithImpl<$Res>;
  $Res call({List<ContactType> contactTypes});
}

class _$ContactTypesOfCategorieLoadedCopyWithImpl<$Res>
    extends _$ContactTypesOfCategorieStateCopyWithImpl<$Res>
    implements $ContactTypesOfCategorieLoadedCopyWith<$Res> {
  _$ContactTypesOfCategorieLoadedCopyWithImpl(
      ContactTypesOfCategorieLoaded _value,
      $Res Function(ContactTypesOfCategorieLoaded) _then)
      : super(_value, (v) => _then(v as ContactTypesOfCategorieLoaded));

  @override
  ContactTypesOfCategorieLoaded get _value =>
      super._value as ContactTypesOfCategorieLoaded;

  @override
  $Res call({
    Object contactTypes = freezed,
  }) {
    return _then(ContactTypesOfCategorieLoaded(
      contactTypes == freezed
          ? _value.contactTypes
          : contactTypes as List<ContactType>,
    ));
  }
}

class _$ContactTypesOfCategorieLoaded
    with DiagnosticableTreeMixin
    implements ContactTypesOfCategorieLoaded {
  const _$ContactTypesOfCategorieLoaded(this.contactTypes)
      : assert(contactTypes != null);

  @override
  final List<ContactType> contactTypes;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContactTypesOfCategorieState.loaded(contactTypes: $contactTypes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ContactTypesOfCategorieState.loaded'))
      ..add(DiagnosticsProperty('contactTypes', contactTypes));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ContactTypesOfCategorieLoaded &&
            (identical(other.contactTypes, contactTypes) ||
                const DeepCollectionEquality()
                    .equals(other.contactTypes, contactTypes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(contactTypes);

  @override
  $ContactTypesOfCategorieLoadedCopyWith<ContactTypesOfCategorieLoaded>
      get copyWith => _$ContactTypesOfCategorieLoadedCopyWithImpl<
          ContactTypesOfCategorieLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<ContactType> contactTypes),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(contactTypes);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<ContactType> contactTypes),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(contactTypes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(ContactTypesOfCategorieInitial value),
    @required Result loading(ContactTypesOfCategorieLoading value),
    @required Result loaded(ContactTypesOfCategorieLoaded value),
    @required Result error(ContactTypesOfCategorieError value),
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
    Result initial(ContactTypesOfCategorieInitial value),
    Result loading(ContactTypesOfCategorieLoading value),
    Result loaded(ContactTypesOfCategorieLoaded value),
    Result error(ContactTypesOfCategorieError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ContactTypesOfCategorieLoaded
    implements ContactTypesOfCategorieState {
  const factory ContactTypesOfCategorieLoaded(List<ContactType> contactTypes) =
      _$ContactTypesOfCategorieLoaded;

  List<ContactType> get contactTypes;
  $ContactTypesOfCategorieLoadedCopyWith<ContactTypesOfCategorieLoaded>
      get copyWith;
}

abstract class $ContactTypesOfCategorieErrorCopyWith<$Res> {
  factory $ContactTypesOfCategorieErrorCopyWith(
          ContactTypesOfCategorieError value,
          $Res Function(ContactTypesOfCategorieError) then) =
      _$ContactTypesOfCategorieErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

class _$ContactTypesOfCategorieErrorCopyWithImpl<$Res>
    extends _$ContactTypesOfCategorieStateCopyWithImpl<$Res>
    implements $ContactTypesOfCategorieErrorCopyWith<$Res> {
  _$ContactTypesOfCategorieErrorCopyWithImpl(
      ContactTypesOfCategorieError _value,
      $Res Function(ContactTypesOfCategorieError) _then)
      : super(_value, (v) => _then(v as ContactTypesOfCategorieError));

  @override
  ContactTypesOfCategorieError get _value =>
      super._value as ContactTypesOfCategorieError;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(ContactTypesOfCategorieError(
      message == freezed ? _value.message : message as String,
    ));
  }
}

class _$ContactTypesOfCategorieError
    with DiagnosticableTreeMixin
    implements ContactTypesOfCategorieError {
  const _$ContactTypesOfCategorieError(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContactTypesOfCategorieState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ContactTypesOfCategorieState.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ContactTypesOfCategorieError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $ContactTypesOfCategorieErrorCopyWith<ContactTypesOfCategorieError>
      get copyWith => _$ContactTypesOfCategorieErrorCopyWithImpl<
          ContactTypesOfCategorieError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<ContactType> contactTypes),
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
    Result loaded(List<ContactType> contactTypes),
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
    @required Result initial(ContactTypesOfCategorieInitial value),
    @required Result loading(ContactTypesOfCategorieLoading value),
    @required Result loaded(ContactTypesOfCategorieLoaded value),
    @required Result error(ContactTypesOfCategorieError value),
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
    Result initial(ContactTypesOfCategorieInitial value),
    Result loading(ContactTypesOfCategorieLoading value),
    Result loaded(ContactTypesOfCategorieLoaded value),
    Result error(ContactTypesOfCategorieError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ContactTypesOfCategorieError
    implements ContactTypesOfCategorieState {
  const factory ContactTypesOfCategorieError(String message) =
      _$ContactTypesOfCategorieError;

  String get message;
  $ContactTypesOfCategorieErrorCopyWith<ContactTypesOfCategorieError>
      get copyWith;
}
