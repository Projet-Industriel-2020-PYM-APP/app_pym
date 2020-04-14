// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'stop_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$StopDetailsEventTearOff {
  const _$StopDetailsEventTearOff();

  FetchStopDetailsEvent fetch() {
    return const FetchStopDetailsEvent();
  }

  HideStopDetailsEvent hide() {
    return const HideStopDetailsEvent();
  }
}

// ignore: unused_element
const $StopDetailsEvent = _$StopDetailsEventTearOff();

mixin _$StopDetailsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetch(),
    @required Result hide(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetch(),
    Result hide(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetch(FetchStopDetailsEvent value),
    @required Result hide(HideStopDetailsEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(FetchStopDetailsEvent value),
    Result hide(HideStopDetailsEvent value),
    @required Result orElse(),
  });
}

abstract class $StopDetailsEventCopyWith<$Res> {
  factory $StopDetailsEventCopyWith(
          StopDetailsEvent value, $Res Function(StopDetailsEvent) then) =
      _$StopDetailsEventCopyWithImpl<$Res>;
}

class _$StopDetailsEventCopyWithImpl<$Res>
    implements $StopDetailsEventCopyWith<$Res> {
  _$StopDetailsEventCopyWithImpl(this._value, this._then);

  final StopDetailsEvent _value;
  // ignore: unused_field
  final $Res Function(StopDetailsEvent) _then;
}

abstract class $FetchStopDetailsEventCopyWith<$Res> {
  factory $FetchStopDetailsEventCopyWith(FetchStopDetailsEvent value,
          $Res Function(FetchStopDetailsEvent) then) =
      _$FetchStopDetailsEventCopyWithImpl<$Res>;
}

class _$FetchStopDetailsEventCopyWithImpl<$Res>
    extends _$StopDetailsEventCopyWithImpl<$Res>
    implements $FetchStopDetailsEventCopyWith<$Res> {
  _$FetchStopDetailsEventCopyWithImpl(
      FetchStopDetailsEvent _value, $Res Function(FetchStopDetailsEvent) _then)
      : super(_value, (v) => _then(v as FetchStopDetailsEvent));

  @override
  FetchStopDetailsEvent get _value => super._value as FetchStopDetailsEvent;
}

class _$FetchStopDetailsEvent
    with DiagnosticableTreeMixin
    implements FetchStopDetailsEvent {
  const _$FetchStopDetailsEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StopDetailsEvent.fetch()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'StopDetailsEvent.fetch'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchStopDetailsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetch(),
    @required Result hide(),
  }) {
    assert(fetch != null);
    assert(hide != null);
    return fetch();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetch(),
    Result hide(),
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
    @required Result fetch(FetchStopDetailsEvent value),
    @required Result hide(HideStopDetailsEvent value),
  }) {
    assert(fetch != null);
    assert(hide != null);
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(FetchStopDetailsEvent value),
    Result hide(HideStopDetailsEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class FetchStopDetailsEvent implements StopDetailsEvent {
  const factory FetchStopDetailsEvent() = _$FetchStopDetailsEvent;
}

abstract class $HideStopDetailsEventCopyWith<$Res> {
  factory $HideStopDetailsEventCopyWith(HideStopDetailsEvent value,
          $Res Function(HideStopDetailsEvent) then) =
      _$HideStopDetailsEventCopyWithImpl<$Res>;
}

class _$HideStopDetailsEventCopyWithImpl<$Res>
    extends _$StopDetailsEventCopyWithImpl<$Res>
    implements $HideStopDetailsEventCopyWith<$Res> {
  _$HideStopDetailsEventCopyWithImpl(
      HideStopDetailsEvent _value, $Res Function(HideStopDetailsEvent) _then)
      : super(_value, (v) => _then(v as HideStopDetailsEvent));

  @override
  HideStopDetailsEvent get _value => super._value as HideStopDetailsEvent;
}

class _$HideStopDetailsEvent
    with DiagnosticableTreeMixin
    implements HideStopDetailsEvent {
  const _$HideStopDetailsEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StopDetailsEvent.hide()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'StopDetailsEvent.hide'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is HideStopDetailsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetch(),
    @required Result hide(),
  }) {
    assert(fetch != null);
    assert(hide != null);
    return hide();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetch(),
    Result hide(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hide != null) {
      return hide();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetch(FetchStopDetailsEvent value),
    @required Result hide(HideStopDetailsEvent value),
  }) {
    assert(fetch != null);
    assert(hide != null);
    return hide(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(FetchStopDetailsEvent value),
    Result hide(HideStopDetailsEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hide != null) {
      return hide(this);
    }
    return orElse();
  }
}

abstract class HideStopDetailsEvent implements StopDetailsEvent {
  const factory HideStopDetailsEvent() = _$HideStopDetailsEvent;
}

class _$StopDetailsStateTearOff {
  const _$StopDetailsStateTearOff();

  StopDetailsInitial initial() {
    return const StopDetailsInitial();
  }

  StopDetailsLoading loading() {
    return const StopDetailsLoading();
  }

  StopDetailsLoaded loaded() {
    return const StopDetailsLoaded();
  }

  StopDetailsError error(String message) {
    return StopDetailsError(
      message,
    );
  }
}

// ignore: unused_element
const $StopDetailsState = _$StopDetailsStateTearOff();

mixin _$StopDetailsState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(),
    @required Result error(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(),
    Result error(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(StopDetailsInitial value),
    @required Result loading(StopDetailsLoading value),
    @required Result loaded(StopDetailsLoaded value),
    @required Result error(StopDetailsError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(StopDetailsInitial value),
    Result loading(StopDetailsLoading value),
    Result loaded(StopDetailsLoaded value),
    Result error(StopDetailsError value),
    @required Result orElse(),
  });
}

abstract class $StopDetailsStateCopyWith<$Res> {
  factory $StopDetailsStateCopyWith(
          StopDetailsState value, $Res Function(StopDetailsState) then) =
      _$StopDetailsStateCopyWithImpl<$Res>;
}

class _$StopDetailsStateCopyWithImpl<$Res>
    implements $StopDetailsStateCopyWith<$Res> {
  _$StopDetailsStateCopyWithImpl(this._value, this._then);

  final StopDetailsState _value;
  // ignore: unused_field
  final $Res Function(StopDetailsState) _then;
}

abstract class $StopDetailsInitialCopyWith<$Res> {
  factory $StopDetailsInitialCopyWith(
          StopDetailsInitial value, $Res Function(StopDetailsInitial) then) =
      _$StopDetailsInitialCopyWithImpl<$Res>;
}

class _$StopDetailsInitialCopyWithImpl<$Res>
    extends _$StopDetailsStateCopyWithImpl<$Res>
    implements $StopDetailsInitialCopyWith<$Res> {
  _$StopDetailsInitialCopyWithImpl(
      StopDetailsInitial _value, $Res Function(StopDetailsInitial) _then)
      : super(_value, (v) => _then(v as StopDetailsInitial));

  @override
  StopDetailsInitial get _value => super._value as StopDetailsInitial;
}

class _$StopDetailsInitial
    with DiagnosticableTreeMixin
    implements StopDetailsInitial {
  const _$StopDetailsInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StopDetailsState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'StopDetailsState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is StopDetailsInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(),
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
    Result loaded(),
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
    @required Result initial(StopDetailsInitial value),
    @required Result loading(StopDetailsLoading value),
    @required Result loaded(StopDetailsLoaded value),
    @required Result error(StopDetailsError value),
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
    Result initial(StopDetailsInitial value),
    Result loading(StopDetailsLoading value),
    Result loaded(StopDetailsLoaded value),
    Result error(StopDetailsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class StopDetailsInitial implements StopDetailsState {
  const factory StopDetailsInitial() = _$StopDetailsInitial;
}

abstract class $StopDetailsLoadingCopyWith<$Res> {
  factory $StopDetailsLoadingCopyWith(
          StopDetailsLoading value, $Res Function(StopDetailsLoading) then) =
      _$StopDetailsLoadingCopyWithImpl<$Res>;
}

class _$StopDetailsLoadingCopyWithImpl<$Res>
    extends _$StopDetailsStateCopyWithImpl<$Res>
    implements $StopDetailsLoadingCopyWith<$Res> {
  _$StopDetailsLoadingCopyWithImpl(
      StopDetailsLoading _value, $Res Function(StopDetailsLoading) _then)
      : super(_value, (v) => _then(v as StopDetailsLoading));

  @override
  StopDetailsLoading get _value => super._value as StopDetailsLoading;
}

class _$StopDetailsLoading
    with DiagnosticableTreeMixin
    implements StopDetailsLoading {
  const _$StopDetailsLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StopDetailsState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'StopDetailsState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is StopDetailsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(),
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
    Result loaded(),
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
    @required Result initial(StopDetailsInitial value),
    @required Result loading(StopDetailsLoading value),
    @required Result loaded(StopDetailsLoaded value),
    @required Result error(StopDetailsError value),
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
    Result initial(StopDetailsInitial value),
    Result loading(StopDetailsLoading value),
    Result loaded(StopDetailsLoaded value),
    Result error(StopDetailsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class StopDetailsLoading implements StopDetailsState {
  const factory StopDetailsLoading() = _$StopDetailsLoading;
}

abstract class $StopDetailsLoadedCopyWith<$Res> {
  factory $StopDetailsLoadedCopyWith(
          StopDetailsLoaded value, $Res Function(StopDetailsLoaded) then) =
      _$StopDetailsLoadedCopyWithImpl<$Res>;
}

class _$StopDetailsLoadedCopyWithImpl<$Res>
    extends _$StopDetailsStateCopyWithImpl<$Res>
    implements $StopDetailsLoadedCopyWith<$Res> {
  _$StopDetailsLoadedCopyWithImpl(
      StopDetailsLoaded _value, $Res Function(StopDetailsLoaded) _then)
      : super(_value, (v) => _then(v as StopDetailsLoaded));

  @override
  StopDetailsLoaded get _value => super._value as StopDetailsLoaded;
}

class _$StopDetailsLoaded
    with DiagnosticableTreeMixin
    implements StopDetailsLoaded {
  const _$StopDetailsLoaded();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StopDetailsState.loaded()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'StopDetailsState.loaded'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is StopDetailsLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(StopDetailsInitial value),
    @required Result loading(StopDetailsLoading value),
    @required Result loaded(StopDetailsLoaded value),
    @required Result error(StopDetailsError value),
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
    Result initial(StopDetailsInitial value),
    Result loading(StopDetailsLoading value),
    Result loaded(StopDetailsLoaded value),
    Result error(StopDetailsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class StopDetailsLoaded implements StopDetailsState {
  const factory StopDetailsLoaded() = _$StopDetailsLoaded;
}

abstract class $StopDetailsErrorCopyWith<$Res> {
  factory $StopDetailsErrorCopyWith(
          StopDetailsError value, $Res Function(StopDetailsError) then) =
      _$StopDetailsErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

class _$StopDetailsErrorCopyWithImpl<$Res>
    extends _$StopDetailsStateCopyWithImpl<$Res>
    implements $StopDetailsErrorCopyWith<$Res> {
  _$StopDetailsErrorCopyWithImpl(
      StopDetailsError _value, $Res Function(StopDetailsError) _then)
      : super(_value, (v) => _then(v as StopDetailsError));

  @override
  StopDetailsError get _value => super._value as StopDetailsError;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(StopDetailsError(
      message == freezed ? _value.message : message as String,
    ));
  }
}

class _$StopDetailsError
    with DiagnosticableTreeMixin
    implements StopDetailsError {
  const _$StopDetailsError(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StopDetailsState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StopDetailsState.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StopDetailsError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $StopDetailsErrorCopyWith<StopDetailsError> get copyWith =>
      _$StopDetailsErrorCopyWithImpl<StopDetailsError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(),
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
    Result loaded(),
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
    @required Result initial(StopDetailsInitial value),
    @required Result loading(StopDetailsLoading value),
    @required Result loaded(StopDetailsLoaded value),
    @required Result error(StopDetailsError value),
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
    Result initial(StopDetailsInitial value),
    Result loading(StopDetailsLoading value),
    Result loaded(StopDetailsLoaded value),
    Result error(StopDetailsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class StopDetailsError implements StopDetailsState {
  const factory StopDetailsError(String message) = _$StopDetailsError;

  String get message;
  $StopDetailsErrorCopyWith<StopDetailsError> get copyWith;
}
