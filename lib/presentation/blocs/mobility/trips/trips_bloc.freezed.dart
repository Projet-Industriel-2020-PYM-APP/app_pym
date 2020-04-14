// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'trips_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TripsEventTearOff {
  const _$TripsEventTearOff();

  FetchBusEvent fetchBus(Direction direction) {
    return FetchBusEvent(
      direction,
    );
  }

  FetchTrainEvent fetchTrain(Direction direction) {
    return FetchTrainEvent(
      direction,
    );
  }

  HideBusEvent hideBus() {
    return const HideBusEvent();
  }

  HideTrainEvent hideTrain() {
    return const HideTrainEvent();
  }
}

// ignore: unused_element
const $TripsEvent = _$TripsEventTearOff();

mixin _$TripsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchBus(Direction direction),
    @required Result fetchTrain(Direction direction),
    @required Result hideBus(),
    @required Result hideTrain(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchBus(Direction direction),
    Result fetchTrain(Direction direction),
    Result hideBus(),
    Result hideTrain(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchBus(FetchBusEvent value),
    @required Result fetchTrain(FetchTrainEvent value),
    @required Result hideBus(HideBusEvent value),
    @required Result hideTrain(HideTrainEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchBus(FetchBusEvent value),
    Result fetchTrain(FetchTrainEvent value),
    Result hideBus(HideBusEvent value),
    Result hideTrain(HideTrainEvent value),
    @required Result orElse(),
  });
}

abstract class $TripsEventCopyWith<$Res> {
  factory $TripsEventCopyWith(
          TripsEvent value, $Res Function(TripsEvent) then) =
      _$TripsEventCopyWithImpl<$Res>;
}

class _$TripsEventCopyWithImpl<$Res> implements $TripsEventCopyWith<$Res> {
  _$TripsEventCopyWithImpl(this._value, this._then);

  final TripsEvent _value;
  // ignore: unused_field
  final $Res Function(TripsEvent) _then;
}

abstract class $FetchBusEventCopyWith<$Res> {
  factory $FetchBusEventCopyWith(
          FetchBusEvent value, $Res Function(FetchBusEvent) then) =
      _$FetchBusEventCopyWithImpl<$Res>;
  $Res call({Direction direction});
}

class _$FetchBusEventCopyWithImpl<$Res> extends _$TripsEventCopyWithImpl<$Res>
    implements $FetchBusEventCopyWith<$Res> {
  _$FetchBusEventCopyWithImpl(
      FetchBusEvent _value, $Res Function(FetchBusEvent) _then)
      : super(_value, (v) => _then(v as FetchBusEvent));

  @override
  FetchBusEvent get _value => super._value as FetchBusEvent;

  @override
  $Res call({
    Object direction = freezed,
  }) {
    return _then(FetchBusEvent(
      direction == freezed ? _value.direction : direction as Direction,
    ));
  }
}

class _$FetchBusEvent with DiagnosticableTreeMixin implements FetchBusEvent {
  const _$FetchBusEvent(this.direction) : assert(direction != null);

  @override
  final Direction direction;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TripsEvent.fetchBus(direction: $direction)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TripsEvent.fetchBus'))
      ..add(DiagnosticsProperty('direction', direction));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchBusEvent &&
            (identical(other.direction, direction) ||
                const DeepCollectionEquality()
                    .equals(other.direction, direction)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(direction);

  @override
  $FetchBusEventCopyWith<FetchBusEvent> get copyWith =>
      _$FetchBusEventCopyWithImpl<FetchBusEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchBus(Direction direction),
    @required Result fetchTrain(Direction direction),
    @required Result hideBus(),
    @required Result hideTrain(),
  }) {
    assert(fetchBus != null);
    assert(fetchTrain != null);
    assert(hideBus != null);
    assert(hideTrain != null);
    return fetchBus(direction);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchBus(Direction direction),
    Result fetchTrain(Direction direction),
    Result hideBus(),
    Result hideTrain(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchBus != null) {
      return fetchBus(direction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchBus(FetchBusEvent value),
    @required Result fetchTrain(FetchTrainEvent value),
    @required Result hideBus(HideBusEvent value),
    @required Result hideTrain(HideTrainEvent value),
  }) {
    assert(fetchBus != null);
    assert(fetchTrain != null);
    assert(hideBus != null);
    assert(hideTrain != null);
    return fetchBus(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchBus(FetchBusEvent value),
    Result fetchTrain(FetchTrainEvent value),
    Result hideBus(HideBusEvent value),
    Result hideTrain(HideTrainEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchBus != null) {
      return fetchBus(this);
    }
    return orElse();
  }
}

abstract class FetchBusEvent implements TripsEvent {
  const factory FetchBusEvent(Direction direction) = _$FetchBusEvent;

  Direction get direction;
  $FetchBusEventCopyWith<FetchBusEvent> get copyWith;
}

abstract class $FetchTrainEventCopyWith<$Res> {
  factory $FetchTrainEventCopyWith(
          FetchTrainEvent value, $Res Function(FetchTrainEvent) then) =
      _$FetchTrainEventCopyWithImpl<$Res>;
  $Res call({Direction direction});
}

class _$FetchTrainEventCopyWithImpl<$Res> extends _$TripsEventCopyWithImpl<$Res>
    implements $FetchTrainEventCopyWith<$Res> {
  _$FetchTrainEventCopyWithImpl(
      FetchTrainEvent _value, $Res Function(FetchTrainEvent) _then)
      : super(_value, (v) => _then(v as FetchTrainEvent));

  @override
  FetchTrainEvent get _value => super._value as FetchTrainEvent;

  @override
  $Res call({
    Object direction = freezed,
  }) {
    return _then(FetchTrainEvent(
      direction == freezed ? _value.direction : direction as Direction,
    ));
  }
}

class _$FetchTrainEvent
    with DiagnosticableTreeMixin
    implements FetchTrainEvent {
  const _$FetchTrainEvent(this.direction) : assert(direction != null);

  @override
  final Direction direction;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TripsEvent.fetchTrain(direction: $direction)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TripsEvent.fetchTrain'))
      ..add(DiagnosticsProperty('direction', direction));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchTrainEvent &&
            (identical(other.direction, direction) ||
                const DeepCollectionEquality()
                    .equals(other.direction, direction)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(direction);

  @override
  $FetchTrainEventCopyWith<FetchTrainEvent> get copyWith =>
      _$FetchTrainEventCopyWithImpl<FetchTrainEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchBus(Direction direction),
    @required Result fetchTrain(Direction direction),
    @required Result hideBus(),
    @required Result hideTrain(),
  }) {
    assert(fetchBus != null);
    assert(fetchTrain != null);
    assert(hideBus != null);
    assert(hideTrain != null);
    return fetchTrain(direction);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchBus(Direction direction),
    Result fetchTrain(Direction direction),
    Result hideBus(),
    Result hideTrain(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchTrain != null) {
      return fetchTrain(direction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchBus(FetchBusEvent value),
    @required Result fetchTrain(FetchTrainEvent value),
    @required Result hideBus(HideBusEvent value),
    @required Result hideTrain(HideTrainEvent value),
  }) {
    assert(fetchBus != null);
    assert(fetchTrain != null);
    assert(hideBus != null);
    assert(hideTrain != null);
    return fetchTrain(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchBus(FetchBusEvent value),
    Result fetchTrain(FetchTrainEvent value),
    Result hideBus(HideBusEvent value),
    Result hideTrain(HideTrainEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchTrain != null) {
      return fetchTrain(this);
    }
    return orElse();
  }
}

abstract class FetchTrainEvent implements TripsEvent {
  const factory FetchTrainEvent(Direction direction) = _$FetchTrainEvent;

  Direction get direction;
  $FetchTrainEventCopyWith<FetchTrainEvent> get copyWith;
}

abstract class $HideBusEventCopyWith<$Res> {
  factory $HideBusEventCopyWith(
          HideBusEvent value, $Res Function(HideBusEvent) then) =
      _$HideBusEventCopyWithImpl<$Res>;
}

class _$HideBusEventCopyWithImpl<$Res> extends _$TripsEventCopyWithImpl<$Res>
    implements $HideBusEventCopyWith<$Res> {
  _$HideBusEventCopyWithImpl(
      HideBusEvent _value, $Res Function(HideBusEvent) _then)
      : super(_value, (v) => _then(v as HideBusEvent));

  @override
  HideBusEvent get _value => super._value as HideBusEvent;
}

class _$HideBusEvent with DiagnosticableTreeMixin implements HideBusEvent {
  const _$HideBusEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TripsEvent.hideBus()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'TripsEvent.hideBus'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is HideBusEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchBus(Direction direction),
    @required Result fetchTrain(Direction direction),
    @required Result hideBus(),
    @required Result hideTrain(),
  }) {
    assert(fetchBus != null);
    assert(fetchTrain != null);
    assert(hideBus != null);
    assert(hideTrain != null);
    return hideBus();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchBus(Direction direction),
    Result fetchTrain(Direction direction),
    Result hideBus(),
    Result hideTrain(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hideBus != null) {
      return hideBus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchBus(FetchBusEvent value),
    @required Result fetchTrain(FetchTrainEvent value),
    @required Result hideBus(HideBusEvent value),
    @required Result hideTrain(HideTrainEvent value),
  }) {
    assert(fetchBus != null);
    assert(fetchTrain != null);
    assert(hideBus != null);
    assert(hideTrain != null);
    return hideBus(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchBus(FetchBusEvent value),
    Result fetchTrain(FetchTrainEvent value),
    Result hideBus(HideBusEvent value),
    Result hideTrain(HideTrainEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hideBus != null) {
      return hideBus(this);
    }
    return orElse();
  }
}

abstract class HideBusEvent implements TripsEvent {
  const factory HideBusEvent() = _$HideBusEvent;
}

abstract class $HideTrainEventCopyWith<$Res> {
  factory $HideTrainEventCopyWith(
          HideTrainEvent value, $Res Function(HideTrainEvent) then) =
      _$HideTrainEventCopyWithImpl<$Res>;
}

class _$HideTrainEventCopyWithImpl<$Res> extends _$TripsEventCopyWithImpl<$Res>
    implements $HideTrainEventCopyWith<$Res> {
  _$HideTrainEventCopyWithImpl(
      HideTrainEvent _value, $Res Function(HideTrainEvent) _then)
      : super(_value, (v) => _then(v as HideTrainEvent));

  @override
  HideTrainEvent get _value => super._value as HideTrainEvent;
}

class _$HideTrainEvent with DiagnosticableTreeMixin implements HideTrainEvent {
  const _$HideTrainEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TripsEvent.hideTrain()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'TripsEvent.hideTrain'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is HideTrainEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchBus(Direction direction),
    @required Result fetchTrain(Direction direction),
    @required Result hideBus(),
    @required Result hideTrain(),
  }) {
    assert(fetchBus != null);
    assert(fetchTrain != null);
    assert(hideBus != null);
    assert(hideTrain != null);
    return hideTrain();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchBus(Direction direction),
    Result fetchTrain(Direction direction),
    Result hideBus(),
    Result hideTrain(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hideTrain != null) {
      return hideTrain();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchBus(FetchBusEvent value),
    @required Result fetchTrain(FetchTrainEvent value),
    @required Result hideBus(HideBusEvent value),
    @required Result hideTrain(HideTrainEvent value),
  }) {
    assert(fetchBus != null);
    assert(fetchTrain != null);
    assert(hideBus != null);
    assert(hideTrain != null);
    return hideTrain(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchBus(FetchBusEvent value),
    Result fetchTrain(FetchTrainEvent value),
    Result hideBus(HideBusEvent value),
    Result hideTrain(HideTrainEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hideTrain != null) {
      return hideTrain(this);
    }
    return orElse();
  }
}

abstract class HideTrainEvent implements TripsEvent {
  const factory HideTrainEvent() = _$HideTrainEvent;
}

class _$TripsStateTearOff {
  const _$TripsStateTearOff();

  _TripsState call(
      {@required bool isLoading,
      @required bool isError,
      @required bool isBusLoaded,
      @required bool isTrainLoaded,
      @required Direction direction,
      Exception exception,
      List<Trip> busTrips,
      List<Trip> trainTrips}) {
    return _TripsState(
      isLoading: isLoading,
      isError: isError,
      isBusLoaded: isBusLoaded,
      isTrainLoaded: isTrainLoaded,
      direction: direction,
      exception: exception,
      busTrips: busTrips,
      trainTrips: trainTrips,
    );
  }
}

// ignore: unused_element
const $TripsState = _$TripsStateTearOff();

mixin _$TripsState {
  bool get isLoading;
  bool get isError;
  bool get isBusLoaded;
  bool get isTrainLoaded;
  Direction get direction;
  Exception get exception;
  List<Trip> get busTrips;
  List<Trip> get trainTrips;

  $TripsStateCopyWith<TripsState> get copyWith;
}

abstract class $TripsStateCopyWith<$Res> {
  factory $TripsStateCopyWith(
          TripsState value, $Res Function(TripsState) then) =
      _$TripsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isError,
      bool isBusLoaded,
      bool isTrainLoaded,
      Direction direction,
      Exception exception,
      List<Trip> busTrips,
      List<Trip> trainTrips});
}

class _$TripsStateCopyWithImpl<$Res> implements $TripsStateCopyWith<$Res> {
  _$TripsStateCopyWithImpl(this._value, this._then);

  final TripsState _value;
  // ignore: unused_field
  final $Res Function(TripsState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object isError = freezed,
    Object isBusLoaded = freezed,
    Object isTrainLoaded = freezed,
    Object direction = freezed,
    Object exception = freezed,
    Object busTrips = freezed,
    Object trainTrips = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isError: isError == freezed ? _value.isError : isError as bool,
      isBusLoaded:
          isBusLoaded == freezed ? _value.isBusLoaded : isBusLoaded as bool,
      isTrainLoaded: isTrainLoaded == freezed
          ? _value.isTrainLoaded
          : isTrainLoaded as bool,
      direction:
          direction == freezed ? _value.direction : direction as Direction,
      exception:
          exception == freezed ? _value.exception : exception as Exception,
      busTrips: busTrips == freezed ? _value.busTrips : busTrips as List<Trip>,
      trainTrips:
          trainTrips == freezed ? _value.trainTrips : trainTrips as List<Trip>,
    ));
  }
}

abstract class _$TripsStateCopyWith<$Res> implements $TripsStateCopyWith<$Res> {
  factory _$TripsStateCopyWith(
          _TripsState value, $Res Function(_TripsState) then) =
      __$TripsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isError,
      bool isBusLoaded,
      bool isTrainLoaded,
      Direction direction,
      Exception exception,
      List<Trip> busTrips,
      List<Trip> trainTrips});
}

class __$TripsStateCopyWithImpl<$Res> extends _$TripsStateCopyWithImpl<$Res>
    implements _$TripsStateCopyWith<$Res> {
  __$TripsStateCopyWithImpl(
      _TripsState _value, $Res Function(_TripsState) _then)
      : super(_value, (v) => _then(v as _TripsState));

  @override
  _TripsState get _value => super._value as _TripsState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object isError = freezed,
    Object isBusLoaded = freezed,
    Object isTrainLoaded = freezed,
    Object direction = freezed,
    Object exception = freezed,
    Object busTrips = freezed,
    Object trainTrips = freezed,
  }) {
    return _then(_TripsState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isError: isError == freezed ? _value.isError : isError as bool,
      isBusLoaded:
          isBusLoaded == freezed ? _value.isBusLoaded : isBusLoaded as bool,
      isTrainLoaded: isTrainLoaded == freezed
          ? _value.isTrainLoaded
          : isTrainLoaded as bool,
      direction:
          direction == freezed ? _value.direction : direction as Direction,
      exception:
          exception == freezed ? _value.exception : exception as Exception,
      busTrips: busTrips == freezed ? _value.busTrips : busTrips as List<Trip>,
      trainTrips:
          trainTrips == freezed ? _value.trainTrips : trainTrips as List<Trip>,
    ));
  }
}

class _$_TripsState with DiagnosticableTreeMixin implements _TripsState {
  const _$_TripsState(
      {@required this.isLoading,
      @required this.isError,
      @required this.isBusLoaded,
      @required this.isTrainLoaded,
      @required this.direction,
      this.exception,
      this.busTrips,
      this.trainTrips})
      : assert(isLoading != null),
        assert(isError != null),
        assert(isBusLoaded != null),
        assert(isTrainLoaded != null),
        assert(direction != null);

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final bool isBusLoaded;
  @override
  final bool isTrainLoaded;
  @override
  final Direction direction;
  @override
  final Exception exception;
  @override
  final List<Trip> busTrips;
  @override
  final List<Trip> trainTrips;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TripsState(isLoading: $isLoading, isError: $isError, isBusLoaded: $isBusLoaded, isTrainLoaded: $isTrainLoaded, direction: $direction, exception: $exception, busTrips: $busTrips, trainTrips: $trainTrips)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TripsState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isError', isError))
      ..add(DiagnosticsProperty('isBusLoaded', isBusLoaded))
      ..add(DiagnosticsProperty('isTrainLoaded', isTrainLoaded))
      ..add(DiagnosticsProperty('direction', direction))
      ..add(DiagnosticsProperty('exception', exception))
      ..add(DiagnosticsProperty('busTrips', busTrips))
      ..add(DiagnosticsProperty('trainTrips', trainTrips));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TripsState &&
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
            (identical(other.direction, direction) ||
                const DeepCollectionEquality()
                    .equals(other.direction, direction)) &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)) &&
            (identical(other.busTrips, busTrips) ||
                const DeepCollectionEquality()
                    .equals(other.busTrips, busTrips)) &&
            (identical(other.trainTrips, trainTrips) ||
                const DeepCollectionEquality()
                    .equals(other.trainTrips, trainTrips)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isError) ^
      const DeepCollectionEquality().hash(isBusLoaded) ^
      const DeepCollectionEquality().hash(isTrainLoaded) ^
      const DeepCollectionEquality().hash(direction) ^
      const DeepCollectionEquality().hash(exception) ^
      const DeepCollectionEquality().hash(busTrips) ^
      const DeepCollectionEquality().hash(trainTrips);

  @override
  _$TripsStateCopyWith<_TripsState> get copyWith =>
      __$TripsStateCopyWithImpl<_TripsState>(this, _$identity);
}

abstract class _TripsState implements TripsState {
  const factory _TripsState(
      {@required bool isLoading,
      @required bool isError,
      @required bool isBusLoaded,
      @required bool isTrainLoaded,
      @required Direction direction,
      Exception exception,
      List<Trip> busTrips,
      List<Trip> trainTrips}) = _$_TripsState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  bool get isBusLoaded;
  @override
  bool get isTrainLoaded;
  @override
  Direction get direction;
  @override
  Exception get exception;
  @override
  List<Trip> get busTrips;
  @override
  List<Trip> get trainTrips;
  @override
  _$TripsStateCopyWith<_TripsState> get copyWith;
}
