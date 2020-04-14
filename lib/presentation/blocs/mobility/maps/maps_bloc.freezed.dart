// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'maps_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MapsEventTearOff {
  const _$MapsEventTearOff();

  FetchMapsEvent fetch(GoogleMapController controller) {
    return FetchMapsEvent(
      controller,
    );
  }

  HideMapsEvent hide() {
    return const HideMapsEvent();
  }
}

// ignore: unused_element
const $MapsEvent = _$MapsEventTearOff();

mixin _$MapsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetch(GoogleMapController controller),
    @required Result hide(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetch(GoogleMapController controller),
    Result hide(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetch(FetchMapsEvent value),
    @required Result hide(HideMapsEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(FetchMapsEvent value),
    Result hide(HideMapsEvent value),
    @required Result orElse(),
  });
}

abstract class $MapsEventCopyWith<$Res> {
  factory $MapsEventCopyWith(MapsEvent value, $Res Function(MapsEvent) then) =
      _$MapsEventCopyWithImpl<$Res>;
}

class _$MapsEventCopyWithImpl<$Res> implements $MapsEventCopyWith<$Res> {
  _$MapsEventCopyWithImpl(this._value, this._then);

  final MapsEvent _value;
  // ignore: unused_field
  final $Res Function(MapsEvent) _then;
}

abstract class $FetchMapsEventCopyWith<$Res> {
  factory $FetchMapsEventCopyWith(
          FetchMapsEvent value, $Res Function(FetchMapsEvent) then) =
      _$FetchMapsEventCopyWithImpl<$Res>;
  $Res call({GoogleMapController controller});
}

class _$FetchMapsEventCopyWithImpl<$Res> extends _$MapsEventCopyWithImpl<$Res>
    implements $FetchMapsEventCopyWith<$Res> {
  _$FetchMapsEventCopyWithImpl(
      FetchMapsEvent _value, $Res Function(FetchMapsEvent) _then)
      : super(_value, (v) => _then(v as FetchMapsEvent));

  @override
  FetchMapsEvent get _value => super._value as FetchMapsEvent;

  @override
  $Res call({
    Object controller = freezed,
  }) {
    return _then(FetchMapsEvent(
      controller == freezed
          ? _value.controller
          : controller as GoogleMapController,
    ));
  }
}

class _$FetchMapsEvent with DiagnosticableTreeMixin implements FetchMapsEvent {
  const _$FetchMapsEvent(this.controller) : assert(controller != null);

  @override
  final GoogleMapController controller;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MapsEvent.fetch(controller: $controller)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MapsEvent.fetch'))
      ..add(DiagnosticsProperty('controller', controller));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchMapsEvent &&
            (identical(other.controller, controller) ||
                const DeepCollectionEquality()
                    .equals(other.controller, controller)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(controller);

  @override
  $FetchMapsEventCopyWith<FetchMapsEvent> get copyWith =>
      _$FetchMapsEventCopyWithImpl<FetchMapsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetch(GoogleMapController controller),
    @required Result hide(),
  }) {
    assert(fetch != null);
    assert(hide != null);
    return fetch(controller);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetch(GoogleMapController controller),
    Result hide(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetch != null) {
      return fetch(controller);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetch(FetchMapsEvent value),
    @required Result hide(HideMapsEvent value),
  }) {
    assert(fetch != null);
    assert(hide != null);
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(FetchMapsEvent value),
    Result hide(HideMapsEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class FetchMapsEvent implements MapsEvent {
  const factory FetchMapsEvent(GoogleMapController controller) =
      _$FetchMapsEvent;

  GoogleMapController get controller;
  $FetchMapsEventCopyWith<FetchMapsEvent> get copyWith;
}

abstract class $HideMapsEventCopyWith<$Res> {
  factory $HideMapsEventCopyWith(
          HideMapsEvent value, $Res Function(HideMapsEvent) then) =
      _$HideMapsEventCopyWithImpl<$Res>;
}

class _$HideMapsEventCopyWithImpl<$Res> extends _$MapsEventCopyWithImpl<$Res>
    implements $HideMapsEventCopyWith<$Res> {
  _$HideMapsEventCopyWithImpl(
      HideMapsEvent _value, $Res Function(HideMapsEvent) _then)
      : super(_value, (v) => _then(v as HideMapsEvent));

  @override
  HideMapsEvent get _value => super._value as HideMapsEvent;
}

class _$HideMapsEvent with DiagnosticableTreeMixin implements HideMapsEvent {
  const _$HideMapsEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MapsEvent.hide()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'MapsEvent.hide'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is HideMapsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetch(GoogleMapController controller),
    @required Result hide(),
  }) {
    assert(fetch != null);
    assert(hide != null);
    return hide();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetch(GoogleMapController controller),
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
    @required Result fetch(FetchMapsEvent value),
    @required Result hide(HideMapsEvent value),
  }) {
    assert(fetch != null);
    assert(hide != null);
    return hide(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(FetchMapsEvent value),
    Result hide(HideMapsEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hide != null) {
      return hide(this);
    }
    return orElse();
  }
}

abstract class HideMapsEvent implements MapsEvent {
  const factory HideMapsEvent() = _$HideMapsEvent;
}

class _$MapsStateTearOff {
  const _$MapsStateTearOff();

  MapsInitial initial() {
    return const MapsInitial();
  }

  MapsLoading loading() {
    return const MapsLoading();
  }

  MapsLoaded loaded(Stream<LatLng> positions) {
    return MapsLoaded(
      positions,
    );
  }

  MapsError error(String message) {
    return MapsError(
      message,
    );
  }
}

// ignore: unused_element
const $MapsState = _$MapsStateTearOff();

mixin _$MapsState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(Stream<LatLng> positions),
    @required Result error(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(Stream<LatLng> positions),
    Result error(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(MapsInitial value),
    @required Result loading(MapsLoading value),
    @required Result loaded(MapsLoaded value),
    @required Result error(MapsError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(MapsInitial value),
    Result loading(MapsLoading value),
    Result loaded(MapsLoaded value),
    Result error(MapsError value),
    @required Result orElse(),
  });
}

abstract class $MapsStateCopyWith<$Res> {
  factory $MapsStateCopyWith(MapsState value, $Res Function(MapsState) then) =
      _$MapsStateCopyWithImpl<$Res>;
}

class _$MapsStateCopyWithImpl<$Res> implements $MapsStateCopyWith<$Res> {
  _$MapsStateCopyWithImpl(this._value, this._then);

  final MapsState _value;
  // ignore: unused_field
  final $Res Function(MapsState) _then;
}

abstract class $MapsInitialCopyWith<$Res> {
  factory $MapsInitialCopyWith(
          MapsInitial value, $Res Function(MapsInitial) then) =
      _$MapsInitialCopyWithImpl<$Res>;
}

class _$MapsInitialCopyWithImpl<$Res> extends _$MapsStateCopyWithImpl<$Res>
    implements $MapsInitialCopyWith<$Res> {
  _$MapsInitialCopyWithImpl(
      MapsInitial _value, $Res Function(MapsInitial) _then)
      : super(_value, (v) => _then(v as MapsInitial));

  @override
  MapsInitial get _value => super._value as MapsInitial;
}

class _$MapsInitial with DiagnosticableTreeMixin implements MapsInitial {
  const _$MapsInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MapsState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'MapsState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MapsInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(Stream<LatLng> positions),
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
    Result loaded(Stream<LatLng> positions),
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
    @required Result initial(MapsInitial value),
    @required Result loading(MapsLoading value),
    @required Result loaded(MapsLoaded value),
    @required Result error(MapsError value),
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
    Result initial(MapsInitial value),
    Result loading(MapsLoading value),
    Result loaded(MapsLoaded value),
    Result error(MapsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MapsInitial implements MapsState {
  const factory MapsInitial() = _$MapsInitial;
}

abstract class $MapsLoadingCopyWith<$Res> {
  factory $MapsLoadingCopyWith(
          MapsLoading value, $Res Function(MapsLoading) then) =
      _$MapsLoadingCopyWithImpl<$Res>;
}

class _$MapsLoadingCopyWithImpl<$Res> extends _$MapsStateCopyWithImpl<$Res>
    implements $MapsLoadingCopyWith<$Res> {
  _$MapsLoadingCopyWithImpl(
      MapsLoading _value, $Res Function(MapsLoading) _then)
      : super(_value, (v) => _then(v as MapsLoading));

  @override
  MapsLoading get _value => super._value as MapsLoading;
}

class _$MapsLoading with DiagnosticableTreeMixin implements MapsLoading {
  const _$MapsLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MapsState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'MapsState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MapsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(Stream<LatLng> positions),
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
    Result loaded(Stream<LatLng> positions),
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
    @required Result initial(MapsInitial value),
    @required Result loading(MapsLoading value),
    @required Result loaded(MapsLoaded value),
    @required Result error(MapsError value),
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
    Result initial(MapsInitial value),
    Result loading(MapsLoading value),
    Result loaded(MapsLoaded value),
    Result error(MapsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MapsLoading implements MapsState {
  const factory MapsLoading() = _$MapsLoading;
}

abstract class $MapsLoadedCopyWith<$Res> {
  factory $MapsLoadedCopyWith(
          MapsLoaded value, $Res Function(MapsLoaded) then) =
      _$MapsLoadedCopyWithImpl<$Res>;
  $Res call({Stream<LatLng> positions});
}

class _$MapsLoadedCopyWithImpl<$Res> extends _$MapsStateCopyWithImpl<$Res>
    implements $MapsLoadedCopyWith<$Res> {
  _$MapsLoadedCopyWithImpl(MapsLoaded _value, $Res Function(MapsLoaded) _then)
      : super(_value, (v) => _then(v as MapsLoaded));

  @override
  MapsLoaded get _value => super._value as MapsLoaded;

  @override
  $Res call({
    Object positions = freezed,
  }) {
    return _then(MapsLoaded(
      positions == freezed ? _value.positions : positions as Stream<LatLng>,
    ));
  }
}

class _$MapsLoaded with DiagnosticableTreeMixin implements MapsLoaded {
  const _$MapsLoaded(this.positions) : assert(positions != null);

  @override
  final Stream<LatLng> positions;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MapsState.loaded(positions: $positions)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MapsState.loaded'))
      ..add(DiagnosticsProperty('positions', positions));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MapsLoaded &&
            (identical(other.positions, positions) ||
                const DeepCollectionEquality()
                    .equals(other.positions, positions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(positions);

  @override
  $MapsLoadedCopyWith<MapsLoaded> get copyWith =>
      _$MapsLoadedCopyWithImpl<MapsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(Stream<LatLng> positions),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(positions);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(Stream<LatLng> positions),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(positions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(MapsInitial value),
    @required Result loading(MapsLoading value),
    @required Result loaded(MapsLoaded value),
    @required Result error(MapsError value),
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
    Result initial(MapsInitial value),
    Result loading(MapsLoading value),
    Result loaded(MapsLoaded value),
    Result error(MapsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class MapsLoaded implements MapsState {
  const factory MapsLoaded(Stream<LatLng> positions) = _$MapsLoaded;

  Stream<LatLng> get positions;
  $MapsLoadedCopyWith<MapsLoaded> get copyWith;
}

abstract class $MapsErrorCopyWith<$Res> {
  factory $MapsErrorCopyWith(MapsError value, $Res Function(MapsError) then) =
      _$MapsErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

class _$MapsErrorCopyWithImpl<$Res> extends _$MapsStateCopyWithImpl<$Res>
    implements $MapsErrorCopyWith<$Res> {
  _$MapsErrorCopyWithImpl(MapsError _value, $Res Function(MapsError) _then)
      : super(_value, (v) => _then(v as MapsError));

  @override
  MapsError get _value => super._value as MapsError;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(MapsError(
      message == freezed ? _value.message : message as String,
    ));
  }
}

class _$MapsError with DiagnosticableTreeMixin implements MapsError {
  const _$MapsError(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MapsState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MapsState.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MapsError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $MapsErrorCopyWith<MapsError> get copyWith =>
      _$MapsErrorCopyWithImpl<MapsError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(Stream<LatLng> positions),
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
    Result loaded(Stream<LatLng> positions),
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
    @required Result initial(MapsInitial value),
    @required Result loading(MapsLoading value),
    @required Result loaded(MapsLoaded value),
    @required Result error(MapsError value),
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
    Result initial(MapsInitial value),
    Result loading(MapsLoading value),
    Result loaded(MapsLoaded value),
    Result error(MapsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MapsError implements MapsState {
  const factory MapsError(String message) = _$MapsError;

  String get message;
  $MapsErrorCopyWith<MapsError> get copyWith;
}
