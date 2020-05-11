// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'maps_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MapsEventTearOff {
  const _$MapsEventTearOff();

  LoadMapsEvent load(
      {@required TripsState tripsState,
      @required ScaffoldState scaffoldState}) {
    return LoadMapsEvent(
      tripsState: tripsState,
      scaffoldState: scaffoldState,
    );
  }

  MapsStartedEvent appStarted() {
    return const MapsStartedEvent();
  }
}

// ignore: unused_element
const $MapsEvent = _$MapsEventTearOff();

mixin _$MapsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(TripsState tripsState, ScaffoldState scaffoldState),
    @required Result appStarted(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(TripsState tripsState, ScaffoldState scaffoldState),
    Result appStarted(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(LoadMapsEvent value),
    @required Result appStarted(MapsStartedEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(LoadMapsEvent value),
    Result appStarted(MapsStartedEvent value),
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

abstract class $LoadMapsEventCopyWith<$Res> {
  factory $LoadMapsEventCopyWith(
          LoadMapsEvent value, $Res Function(LoadMapsEvent) then) =
      _$LoadMapsEventCopyWithImpl<$Res>;
  $Res call({TripsState tripsState, ScaffoldState scaffoldState});

  $TripsStateCopyWith<$Res> get tripsState;
}

class _$LoadMapsEventCopyWithImpl<$Res> extends _$MapsEventCopyWithImpl<$Res>
    implements $LoadMapsEventCopyWith<$Res> {
  _$LoadMapsEventCopyWithImpl(
      LoadMapsEvent _value, $Res Function(LoadMapsEvent) _then)
      : super(_value, (v) => _then(v as LoadMapsEvent));

  @override
  LoadMapsEvent get _value => super._value as LoadMapsEvent;

  @override
  $Res call({
    Object tripsState = freezed,
    Object scaffoldState = freezed,
  }) {
    return _then(LoadMapsEvent(
      tripsState:
          tripsState == freezed ? _value.tripsState : tripsState as TripsState,
      scaffoldState: scaffoldState == freezed
          ? _value.scaffoldState
          : scaffoldState as ScaffoldState,
    ));
  }

  @override
  $TripsStateCopyWith<$Res> get tripsState {
    if (_value.tripsState == null) {
      return null;
    }
    return $TripsStateCopyWith<$Res>(_value.tripsState, (value) {
      return _then(_value.copyWith(tripsState: value));
    });
  }
}

class _$LoadMapsEvent with DiagnosticableTreeMixin implements LoadMapsEvent {
  const _$LoadMapsEvent(
      {@required this.tripsState, @required this.scaffoldState})
      : assert(tripsState != null),
        assert(scaffoldState != null);

  @override
  final TripsState tripsState;
  @override
  final ScaffoldState scaffoldState;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MapsEvent.load(tripsState: $tripsState, scaffoldState: $scaffoldState)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MapsEvent.load'))
      ..add(DiagnosticsProperty('tripsState', tripsState))
      ..add(DiagnosticsProperty('scaffoldState', scaffoldState));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadMapsEvent &&
            (identical(other.tripsState, tripsState) ||
                const DeepCollectionEquality()
                    .equals(other.tripsState, tripsState)) &&
            (identical(other.scaffoldState, scaffoldState) ||
                const DeepCollectionEquality()
                    .equals(other.scaffoldState, scaffoldState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tripsState) ^
      const DeepCollectionEquality().hash(scaffoldState);

  @override
  $LoadMapsEventCopyWith<LoadMapsEvent> get copyWith =>
      _$LoadMapsEventCopyWithImpl<LoadMapsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(TripsState tripsState, ScaffoldState scaffoldState),
    @required Result appStarted(),
  }) {
    assert(load != null);
    assert(appStarted != null);
    return load(tripsState, scaffoldState);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(TripsState tripsState, ScaffoldState scaffoldState),
    Result appStarted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (load != null) {
      return load(tripsState, scaffoldState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(LoadMapsEvent value),
    @required Result appStarted(MapsStartedEvent value),
  }) {
    assert(load != null);
    assert(appStarted != null);
    return load(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(LoadMapsEvent value),
    Result appStarted(MapsStartedEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadMapsEvent implements MapsEvent {
  const factory LoadMapsEvent(
      {@required TripsState tripsState,
      @required ScaffoldState scaffoldState}) = _$LoadMapsEvent;

  TripsState get tripsState;
  ScaffoldState get scaffoldState;
  $LoadMapsEventCopyWith<LoadMapsEvent> get copyWith;
}

abstract class $MapsStartedEventCopyWith<$Res> {
  factory $MapsStartedEventCopyWith(
          MapsStartedEvent value, $Res Function(MapsStartedEvent) then) =
      _$MapsStartedEventCopyWithImpl<$Res>;
}

class _$MapsStartedEventCopyWithImpl<$Res> extends _$MapsEventCopyWithImpl<$Res>
    implements $MapsStartedEventCopyWith<$Res> {
  _$MapsStartedEventCopyWithImpl(
      MapsStartedEvent _value, $Res Function(MapsStartedEvent) _then)
      : super(_value, (v) => _then(v as MapsStartedEvent));

  @override
  MapsStartedEvent get _value => super._value as MapsStartedEvent;
}

class _$MapsStartedEvent
    with DiagnosticableTreeMixin
    implements MapsStartedEvent {
  const _$MapsStartedEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MapsEvent.appStarted()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'MapsEvent.appStarted'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MapsStartedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(TripsState tripsState, ScaffoldState scaffoldState),
    @required Result appStarted(),
  }) {
    assert(load != null);
    assert(appStarted != null);
    return appStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(TripsState tripsState, ScaffoldState scaffoldState),
    Result appStarted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (appStarted != null) {
      return appStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(LoadMapsEvent value),
    @required Result appStarted(MapsStartedEvent value),
  }) {
    assert(load != null);
    assert(appStarted != null);
    return appStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(LoadMapsEvent value),
    Result appStarted(MapsStartedEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (appStarted != null) {
      return appStarted(this);
    }
    return orElse();
  }
}

abstract class MapsStartedEvent implements MapsEvent {
  const factory MapsStartedEvent() = _$MapsStartedEvent;
}

class _$MapsStateTearOff {
  const _$MapsStateTearOff();

  _MapsState call(
      {@required bool isLoading,
      @required bool isError,
      @required bool isBusLoaded,
      @required bool isTrainLoaded,
      Exception exception}) {
    return _MapsState(
      isLoading: isLoading,
      isError: isError,
      isBusLoaded: isBusLoaded,
      isTrainLoaded: isTrainLoaded,
      exception: exception,
    );
  }
}

// ignore: unused_element
const $MapsState = _$MapsStateTearOff();

mixin _$MapsState {
  bool get isLoading;
  bool get isError;
  bool get isBusLoaded;
  bool get isTrainLoaded;
  Exception get exception;

  $MapsStateCopyWith<MapsState> get copyWith;
}

abstract class $MapsStateCopyWith<$Res> {
  factory $MapsStateCopyWith(MapsState value, $Res Function(MapsState) then) =
      _$MapsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isError,
      bool isBusLoaded,
      bool isTrainLoaded,
      Exception exception});
}

class _$MapsStateCopyWithImpl<$Res> implements $MapsStateCopyWith<$Res> {
  _$MapsStateCopyWithImpl(this._value, this._then);

  final MapsState _value;
  // ignore: unused_field
  final $Res Function(MapsState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object isError = freezed,
    Object isBusLoaded = freezed,
    Object isTrainLoaded = freezed,
    Object exception = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isError: isError == freezed ? _value.isError : isError as bool,
      isBusLoaded:
          isBusLoaded == freezed ? _value.isBusLoaded : isBusLoaded as bool,
      isTrainLoaded: isTrainLoaded == freezed
          ? _value.isTrainLoaded
          : isTrainLoaded as bool,
      exception:
          exception == freezed ? _value.exception : exception as Exception,
    ));
  }
}

abstract class _$MapsStateCopyWith<$Res> implements $MapsStateCopyWith<$Res> {
  factory _$MapsStateCopyWith(
          _MapsState value, $Res Function(_MapsState) then) =
      __$MapsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isError,
      bool isBusLoaded,
      bool isTrainLoaded,
      Exception exception});
}

class __$MapsStateCopyWithImpl<$Res> extends _$MapsStateCopyWithImpl<$Res>
    implements _$MapsStateCopyWith<$Res> {
  __$MapsStateCopyWithImpl(_MapsState _value, $Res Function(_MapsState) _then)
      : super(_value, (v) => _then(v as _MapsState));

  @override
  _MapsState get _value => super._value as _MapsState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object isError = freezed,
    Object isBusLoaded = freezed,
    Object isTrainLoaded = freezed,
    Object exception = freezed,
  }) {
    return _then(_MapsState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isError: isError == freezed ? _value.isError : isError as bool,
      isBusLoaded:
          isBusLoaded == freezed ? _value.isBusLoaded : isBusLoaded as bool,
      isTrainLoaded: isTrainLoaded == freezed
          ? _value.isTrainLoaded
          : isTrainLoaded as bool,
      exception:
          exception == freezed ? _value.exception : exception as Exception,
    ));
  }
}

class _$_MapsState with DiagnosticableTreeMixin implements _MapsState {
  _$_MapsState(
      {@required this.isLoading,
      @required this.isError,
      @required this.isBusLoaded,
      @required this.isTrainLoaded,
      this.exception})
      : assert(isLoading != null),
        assert(isError != null),
        assert(isBusLoaded != null),
        assert(isTrainLoaded != null);

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final bool isBusLoaded;
  @override
  final bool isTrainLoaded;
  @override
  final Exception exception;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MapsState(isLoading: $isLoading, isError: $isError, isBusLoaded: $isBusLoaded, isTrainLoaded: $isTrainLoaded, exception: $exception)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MapsState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isError', isError))
      ..add(DiagnosticsProperty('isBusLoaded', isBusLoaded))
      ..add(DiagnosticsProperty('isTrainLoaded', isTrainLoaded))
      ..add(DiagnosticsProperty('exception', exception));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MapsState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isError, isError) ||
                const DeepCollectionEquality()
                    .equals(other.isError, isError)) &&
            (identical(other.isBusLoaded, isBusLoaded) ||
                const DeepCollectionEquality()
                    .equals(other.isBusLoaded, isBusLoaded)) &&
            (identical(other.isTrainLoaded, isTrainLoaded) ||
                const DeepCollectionEquality()
                    .equals(other.isTrainLoaded, isTrainLoaded)) &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isError) ^
      const DeepCollectionEquality().hash(isBusLoaded) ^
      const DeepCollectionEquality().hash(isTrainLoaded) ^
      const DeepCollectionEquality().hash(exception);

  @override
  _$MapsStateCopyWith<_MapsState> get copyWith =>
      __$MapsStateCopyWithImpl<_MapsState>(this, _$identity);
}

abstract class _MapsState implements MapsState {
  factory _MapsState(
      {@required bool isLoading,
      @required bool isError,
      @required bool isBusLoaded,
      @required bool isTrainLoaded,
      Exception exception}) = _$_MapsState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  bool get isBusLoaded;
  @override
  bool get isTrainLoaded;
  @override
  Exception get exception;
  @override
  _$MapsStateCopyWith<_MapsState> get copyWith;
}
