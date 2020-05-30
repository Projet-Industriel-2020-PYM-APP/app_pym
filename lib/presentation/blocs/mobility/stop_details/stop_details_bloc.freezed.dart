// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'stop_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$StopDetailsEventTearOff {
  const _$StopDetailsEventTearOff();

  FetchBusStopDetailsEvent show(
      {@required String id, @required List<Trip> trips, @required bool isBus}) {
    return FetchBusStopDetailsEvent(
      id: id,
      trips: trips,
      isBus: isBus,
    );
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
    @required Result show(String id, List<Trip> trips, bool isBus),
    @required Result hide(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result show(String id, List<Trip> trips, bool isBus),
    Result hide(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result show(FetchBusStopDetailsEvent value),
    @required Result hide(HideStopDetailsEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result show(FetchBusStopDetailsEvent value),
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

abstract class $FetchBusStopDetailsEventCopyWith<$Res> {
  factory $FetchBusStopDetailsEventCopyWith(FetchBusStopDetailsEvent value,
          $Res Function(FetchBusStopDetailsEvent) then) =
      _$FetchBusStopDetailsEventCopyWithImpl<$Res>;
  $Res call({String id, List<Trip> trips, bool isBus});
}

class _$FetchBusStopDetailsEventCopyWithImpl<$Res>
    extends _$StopDetailsEventCopyWithImpl<$Res>
    implements $FetchBusStopDetailsEventCopyWith<$Res> {
  _$FetchBusStopDetailsEventCopyWithImpl(FetchBusStopDetailsEvent _value,
      $Res Function(FetchBusStopDetailsEvent) _then)
      : super(_value, (v) => _then(v as FetchBusStopDetailsEvent));

  @override
  FetchBusStopDetailsEvent get _value =>
      super._value as FetchBusStopDetailsEvent;

  @override
  $Res call({
    Object id = freezed,
    Object trips = freezed,
    Object isBus = freezed,
  }) {
    return _then(FetchBusStopDetailsEvent(
      id: id == freezed ? _value.id : id as String,
      trips: trips == freezed ? _value.trips : trips as List<Trip>,
      isBus: isBus == freezed ? _value.isBus : isBus as bool,
    ));
  }
}

class _$FetchBusStopDetailsEvent
    with DiagnosticableTreeMixin
    implements FetchBusStopDetailsEvent {
  const _$FetchBusStopDetailsEvent(
      {@required this.id, @required this.trips, @required this.isBus})
      : assert(id != null),
        assert(trips != null),
        assert(isBus != null);

  @override
  final String id;
  @override
  final List<Trip> trips;
  @override
  final bool isBus;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StopDetailsEvent.show(id: $id, trips: $trips, isBus: $isBus)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StopDetailsEvent.show'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('trips', trips))
      ..add(DiagnosticsProperty('isBus', isBus));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchBusStopDetailsEvent &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.trips, trips) ||
                const DeepCollectionEquality().equals(other.trips, trips)) &&
            (identical(other.isBus, isBus) ||
                const DeepCollectionEquality().equals(other.isBus, isBus)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(trips) ^
      const DeepCollectionEquality().hash(isBus);

  @override
  $FetchBusStopDetailsEventCopyWith<FetchBusStopDetailsEvent> get copyWith =>
      _$FetchBusStopDetailsEventCopyWithImpl<FetchBusStopDetailsEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result show(String id, List<Trip> trips, bool isBus),
    @required Result hide(),
  }) {
    assert(show != null);
    assert(hide != null);
    return show(id, trips, isBus);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result show(String id, List<Trip> trips, bool isBus),
    Result hide(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (show != null) {
      return show(id, trips, isBus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result show(FetchBusStopDetailsEvent value),
    @required Result hide(HideStopDetailsEvent value),
  }) {
    assert(show != null);
    assert(hide != null);
    return show(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result show(FetchBusStopDetailsEvent value),
    Result hide(HideStopDetailsEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (show != null) {
      return show(this);
    }
    return orElse();
  }
}

abstract class FetchBusStopDetailsEvent implements StopDetailsEvent {
  const factory FetchBusStopDetailsEvent(
      {@required String id,
      @required List<Trip> trips,
      @required bool isBus}) = _$FetchBusStopDetailsEvent;

  String get id;
  List<Trip> get trips;
  bool get isBus;
  $FetchBusStopDetailsEventCopyWith<FetchBusStopDetailsEvent> get copyWith;
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
    @required Result show(String id, List<Trip> trips, bool isBus),
    @required Result hide(),
  }) {
    assert(show != null);
    assert(hide != null);
    return hide();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result show(String id, List<Trip> trips, bool isBus),
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
    @required Result show(FetchBusStopDetailsEvent value),
    @required Result hide(HideStopDetailsEvent value),
  }) {
    assert(show != null);
    assert(hide != null);
    return hide(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result show(FetchBusStopDetailsEvent value),
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

  _StopDetailsState call(
      {@required bool isLoading,
      @required bool isError,
      @required String stop_name,
      @required String last_stop,
      @required List<String> arrivalTimes,
      @required List<StopTime> trip,
      @required String destination,
      Exception exception}) {
    return _StopDetailsState(
      isLoading: isLoading,
      isError: isError,
      stop_name: stop_name,
      last_stop: last_stop,
      arrivalTimes: arrivalTimes,
      trip: trip,
      destination: destination,
      exception: exception,
    );
  }
}

// ignore: unused_element
const $StopDetailsState = _$StopDetailsStateTearOff();

mixin _$StopDetailsState {
  bool get isLoading;
  bool get isError;
  String get stop_name;
  String get last_stop;
  List<String> get arrivalTimes;
  List<StopTime> get trip;
  String get destination;
  Exception get exception;

  $StopDetailsStateCopyWith<StopDetailsState> get copyWith;
}

abstract class $StopDetailsStateCopyWith<$Res> {
  factory $StopDetailsStateCopyWith(
          StopDetailsState value, $Res Function(StopDetailsState) then) =
      _$StopDetailsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isError,
      String stop_name,
      String last_stop,
      List<String> arrivalTimes,
      List<StopTime> trip,
      String destination,
      Exception exception});
}

class _$StopDetailsStateCopyWithImpl<$Res>
    implements $StopDetailsStateCopyWith<$Res> {
  _$StopDetailsStateCopyWithImpl(this._value, this._then);

  final StopDetailsState _value;
  // ignore: unused_field
  final $Res Function(StopDetailsState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object isError = freezed,
    Object stop_name = freezed,
    Object last_stop = freezed,
    Object arrivalTimes = freezed,
    Object trip = freezed,
    Object destination = freezed,
    Object exception = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isError: isError == freezed ? _value.isError : isError as bool,
      stop_name: stop_name == freezed ? _value.stop_name : stop_name as String,
      last_stop: last_stop == freezed ? _value.last_stop : last_stop as String,
      arrivalTimes: arrivalTimes == freezed
          ? _value.arrivalTimes
          : arrivalTimes as List<String>,
      trip: trip == freezed ? _value.trip : trip as List<StopTime>,
      destination:
          destination == freezed ? _value.destination : destination as String,
      exception:
          exception == freezed ? _value.exception : exception as Exception,
    ));
  }
}

abstract class _$StopDetailsStateCopyWith<$Res>
    implements $StopDetailsStateCopyWith<$Res> {
  factory _$StopDetailsStateCopyWith(
          _StopDetailsState value, $Res Function(_StopDetailsState) then) =
      __$StopDetailsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isError,
      String stop_name,
      String last_stop,
      List<String> arrivalTimes,
      List<StopTime> trip,
      String destination,
      Exception exception});
}

class __$StopDetailsStateCopyWithImpl<$Res>
    extends _$StopDetailsStateCopyWithImpl<$Res>
    implements _$StopDetailsStateCopyWith<$Res> {
  __$StopDetailsStateCopyWithImpl(
      _StopDetailsState _value, $Res Function(_StopDetailsState) _then)
      : super(_value, (v) => _then(v as _StopDetailsState));

  @override
  _StopDetailsState get _value => super._value as _StopDetailsState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object isError = freezed,
    Object stop_name = freezed,
    Object last_stop = freezed,
    Object arrivalTimes = freezed,
    Object trip = freezed,
    Object destination = freezed,
    Object exception = freezed,
  }) {
    return _then(_StopDetailsState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isError: isError == freezed ? _value.isError : isError as bool,
      stop_name: stop_name == freezed ? _value.stop_name : stop_name as String,
      last_stop: last_stop == freezed ? _value.last_stop : last_stop as String,
      arrivalTimes: arrivalTimes == freezed
          ? _value.arrivalTimes
          : arrivalTimes as List<String>,
      trip: trip == freezed ? _value.trip : trip as List<StopTime>,
      destination:
          destination == freezed ? _value.destination : destination as String,
      exception:
          exception == freezed ? _value.exception : exception as Exception,
    ));
  }
}

class _$_StopDetailsState
    with DiagnosticableTreeMixin
    implements _StopDetailsState {
  const _$_StopDetailsState(
      {@required this.isLoading,
      @required this.isError,
      @required this.stop_name,
      @required this.last_stop,
      @required this.arrivalTimes,
      @required this.trip,
      @required this.destination,
      this.exception})
      : assert(isLoading != null),
        assert(isError != null),
        assert(stop_name != null),
        assert(last_stop != null),
        assert(arrivalTimes != null),
        assert(trip != null),
        assert(destination != null);

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final String stop_name;
  @override
  final String last_stop;
  @override
  final List<String> arrivalTimes;
  @override
  final List<StopTime> trip;
  @override
  final String destination;
  @override
  final Exception exception;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StopDetailsState(isLoading: $isLoading, isError: $isError, stop_name: $stop_name, last_stop: $last_stop, arrivalTimes: $arrivalTimes, trip: $trip, destination: $destination, exception: $exception)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StopDetailsState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isError', isError))
      ..add(DiagnosticsProperty('stop_name', stop_name))
      ..add(DiagnosticsProperty('last_stop', last_stop))
      ..add(DiagnosticsProperty('arrivalTimes', arrivalTimes))
      ..add(DiagnosticsProperty('trip', trip))
      ..add(DiagnosticsProperty('destination', destination))
      ..add(DiagnosticsProperty('exception', exception));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StopDetailsState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isError, isError) ||
                const DeepCollectionEquality()
                    .equals(other.isError, isError)) &&
            (identical(other.stop_name, stop_name) ||
                const DeepCollectionEquality()
                    .equals(other.stop_name, stop_name)) &&
            (identical(other.last_stop, last_stop) ||
                const DeepCollectionEquality()
                    .equals(other.last_stop, last_stop)) &&
            (identical(other.arrivalTimes, arrivalTimes) ||
                const DeepCollectionEquality()
                    .equals(other.arrivalTimes, arrivalTimes)) &&
            (identical(other.trip, trip) ||
                const DeepCollectionEquality().equals(other.trip, trip)) &&
            (identical(other.destination, destination) ||
                const DeepCollectionEquality()
                    .equals(other.destination, destination)) &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isError) ^
      const DeepCollectionEquality().hash(stop_name) ^
      const DeepCollectionEquality().hash(last_stop) ^
      const DeepCollectionEquality().hash(arrivalTimes) ^
      const DeepCollectionEquality().hash(trip) ^
      const DeepCollectionEquality().hash(destination) ^
      const DeepCollectionEquality().hash(exception);

  @override
  _$StopDetailsStateCopyWith<_StopDetailsState> get copyWith =>
      __$StopDetailsStateCopyWithImpl<_StopDetailsState>(this, _$identity);
}

abstract class _StopDetailsState implements StopDetailsState {
  const factory _StopDetailsState(
      {@required bool isLoading,
      @required bool isError,
      @required String stop_name,
      @required String last_stop,
      @required List<String> arrivalTimes,
      @required List<StopTime> trip,
      @required String destination,
      Exception exception}) = _$_StopDetailsState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  String get stop_name;
  @override
  String get last_stop;
  @override
  List<String> get arrivalTimes;
  @override
  List<StopTime> get trip;
  @override
  String get destination;
  @override
  Exception get exception;
  @override
  _$StopDetailsStateCopyWith<_StopDetailsState> get copyWith;
}
