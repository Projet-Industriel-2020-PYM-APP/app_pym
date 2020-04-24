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
      {@required bool isBus,
      @required bool isTrain,
      @required Direction direction,
      List<Trip> busTrips,
      List<Trip> trainTrips}) {
    return LoadMapsEvent(
      isBus: isBus,
      isTrain: isTrain,
      direction: direction,
      busTrips: busTrips,
      trainTrips: trainTrips,
    );
  }

  HideMapsEvent hide(
      {@required bool isBus,
      @required bool isTrain,
      @required Direction direction}) {
    return HideMapsEvent(
      isBus: isBus,
      isTrain: isTrain,
      direction: direction,
    );
  }
}

// ignore: unused_element
const $MapsEvent = _$MapsEventTearOff();

mixin _$MapsEvent {
  bool get isBus;
  bool get isTrain;
  Direction get direction;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result load(bool isBus, bool isTrain, Direction direction,
            List<Trip> busTrips, List<Trip> trainTrips),
    @required Result hide(bool isBus, bool isTrain, Direction direction),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(bool isBus, bool isTrain, Direction direction,
        List<Trip> busTrips, List<Trip> trainTrips),
    Result hide(bool isBus, bool isTrain, Direction direction),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(LoadMapsEvent value),
    @required Result hide(HideMapsEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(LoadMapsEvent value),
    Result hide(HideMapsEvent value),
    @required Result orElse(),
  });

  $MapsEventCopyWith<MapsEvent> get copyWith;
}

abstract class $MapsEventCopyWith<$Res> {
  factory $MapsEventCopyWith(MapsEvent value, $Res Function(MapsEvent) then) =
      _$MapsEventCopyWithImpl<$Res>;
  $Res call({bool isBus, bool isTrain, Direction direction});
}

class _$MapsEventCopyWithImpl<$Res> implements $MapsEventCopyWith<$Res> {
  _$MapsEventCopyWithImpl(this._value, this._then);

  final MapsEvent _value;
  // ignore: unused_field
  final $Res Function(MapsEvent) _then;

  @override
  $Res call({
    Object isBus = freezed,
    Object isTrain = freezed,
    Object direction = freezed,
  }) {
    return _then(_value.copyWith(
      isBus: isBus == freezed ? _value.isBus : isBus as bool,
      isTrain: isTrain == freezed ? _value.isTrain : isTrain as bool,
      direction:
          direction == freezed ? _value.direction : direction as Direction,
    ));
  }
}

abstract class $LoadMapsEventCopyWith<$Res>
    implements $MapsEventCopyWith<$Res> {
  factory $LoadMapsEventCopyWith(
          LoadMapsEvent value, $Res Function(LoadMapsEvent) then) =
      _$LoadMapsEventCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isBus,
      bool isTrain,
      Direction direction,
      List<Trip> busTrips,
      List<Trip> trainTrips});
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
    Object isBus = freezed,
    Object isTrain = freezed,
    Object direction = freezed,
    Object busTrips = freezed,
    Object trainTrips = freezed,
  }) {
    return _then(LoadMapsEvent(
      isBus: isBus == freezed ? _value.isBus : isBus as bool,
      isTrain: isTrain == freezed ? _value.isTrain : isTrain as bool,
      direction:
          direction == freezed ? _value.direction : direction as Direction,
      busTrips: busTrips == freezed ? _value.busTrips : busTrips as List<Trip>,
      trainTrips:
          trainTrips == freezed ? _value.trainTrips : trainTrips as List<Trip>,
    ));
  }
}

class _$LoadMapsEvent with DiagnosticableTreeMixin implements LoadMapsEvent {
  const _$LoadMapsEvent(
      {@required this.isBus,
      @required this.isTrain,
      @required this.direction,
      this.busTrips,
      this.trainTrips})
      : assert(isBus != null),
        assert(isTrain != null),
        assert(direction != null);

  @override
  final bool isBus;
  @override
  final bool isTrain;
  @override
  final Direction direction;
  @override
  final List<Trip> busTrips;
  @override
  final List<Trip> trainTrips;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MapsEvent.load(isBus: $isBus, isTrain: $isTrain, direction: $direction, busTrips: $busTrips, trainTrips: $trainTrips)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MapsEvent.load'))
      ..add(DiagnosticsProperty('isBus', isBus))
      ..add(DiagnosticsProperty('isTrain', isTrain))
      ..add(DiagnosticsProperty('direction', direction))
      ..add(DiagnosticsProperty('busTrips', busTrips))
      ..add(DiagnosticsProperty('trainTrips', trainTrips));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadMapsEvent &&
            (identical(other.isBus, isBus) ||
                const DeepCollectionEquality().equals(other.isBus, isBus)) &&
            (identical(other.isTrain, isTrain) ||
                const DeepCollectionEquality()
                    .equals(other.isTrain, isTrain)) &&
            (identical(other.direction, direction) ||
                const DeepCollectionEquality()
                    .equals(other.direction, direction)) &&
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
      const DeepCollectionEquality().hash(isBus) ^
      const DeepCollectionEquality().hash(isTrain) ^
      const DeepCollectionEquality().hash(direction) ^
      const DeepCollectionEquality().hash(busTrips) ^
      const DeepCollectionEquality().hash(trainTrips);

  @override
  $LoadMapsEventCopyWith<LoadMapsEvent> get copyWith =>
      _$LoadMapsEventCopyWithImpl<LoadMapsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result load(bool isBus, bool isTrain, Direction direction,
            List<Trip> busTrips, List<Trip> trainTrips),
    @required Result hide(bool isBus, bool isTrain, Direction direction),
  }) {
    assert(load != null);
    assert(hide != null);
    return load(isBus, isTrain, direction, busTrips, trainTrips);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(bool isBus, bool isTrain, Direction direction,
        List<Trip> busTrips, List<Trip> trainTrips),
    Result hide(bool isBus, bool isTrain, Direction direction),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (load != null) {
      return load(isBus, isTrain, direction, busTrips, trainTrips);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(LoadMapsEvent value),
    @required Result hide(HideMapsEvent value),
  }) {
    assert(load != null);
    assert(hide != null);
    return load(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(LoadMapsEvent value),
    Result hide(HideMapsEvent value),
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
      {@required bool isBus,
      @required bool isTrain,
      @required Direction direction,
      List<Trip> busTrips,
      List<Trip> trainTrips}) = _$LoadMapsEvent;

  @override
  bool get isBus;
  @override
  bool get isTrain;
  @override
  Direction get direction;
  List<Trip> get busTrips;
  List<Trip> get trainTrips;
  @override
  $LoadMapsEventCopyWith<LoadMapsEvent> get copyWith;
}

abstract class $HideMapsEventCopyWith<$Res>
    implements $MapsEventCopyWith<$Res> {
  factory $HideMapsEventCopyWith(
          HideMapsEvent value, $Res Function(HideMapsEvent) then) =
      _$HideMapsEventCopyWithImpl<$Res>;
  @override
  $Res call({bool isBus, bool isTrain, Direction direction});
}

class _$HideMapsEventCopyWithImpl<$Res> extends _$MapsEventCopyWithImpl<$Res>
    implements $HideMapsEventCopyWith<$Res> {
  _$HideMapsEventCopyWithImpl(
      HideMapsEvent _value, $Res Function(HideMapsEvent) _then)
      : super(_value, (v) => _then(v as HideMapsEvent));

  @override
  HideMapsEvent get _value => super._value as HideMapsEvent;

  @override
  $Res call({
    Object isBus = freezed,
    Object isTrain = freezed,
    Object direction = freezed,
  }) {
    return _then(HideMapsEvent(
      isBus: isBus == freezed ? _value.isBus : isBus as bool,
      isTrain: isTrain == freezed ? _value.isTrain : isTrain as bool,
      direction:
          direction == freezed ? _value.direction : direction as Direction,
    ));
  }
}

class _$HideMapsEvent with DiagnosticableTreeMixin implements HideMapsEvent {
  const _$HideMapsEvent(
      {@required this.isBus, @required this.isTrain, @required this.direction})
      : assert(isBus != null),
        assert(isTrain != null),
        assert(direction != null);

  @override
  final bool isBus;
  @override
  final bool isTrain;
  @override
  final Direction direction;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MapsEvent.hide(isBus: $isBus, isTrain: $isTrain, direction: $direction)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MapsEvent.hide'))
      ..add(DiagnosticsProperty('isBus', isBus))
      ..add(DiagnosticsProperty('isTrain', isTrain))
      ..add(DiagnosticsProperty('direction', direction));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HideMapsEvent &&
            (identical(other.isBus, isBus) ||
                const DeepCollectionEquality().equals(other.isBus, isBus)) &&
            (identical(other.isTrain, isTrain) ||
                const DeepCollectionEquality()
                    .equals(other.isTrain, isTrain)) &&
            (identical(other.direction, direction) ||
                const DeepCollectionEquality()
                    .equals(other.direction, direction)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isBus) ^
      const DeepCollectionEquality().hash(isTrain) ^
      const DeepCollectionEquality().hash(direction);

  @override
  $HideMapsEventCopyWith<HideMapsEvent> get copyWith =>
      _$HideMapsEventCopyWithImpl<HideMapsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result load(bool isBus, bool isTrain, Direction direction,
            List<Trip> busTrips, List<Trip> trainTrips),
    @required Result hide(bool isBus, bool isTrain, Direction direction),
  }) {
    assert(load != null);
    assert(hide != null);
    return hide(isBus, isTrain, direction);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(bool isBus, bool isTrain, Direction direction,
        List<Trip> busTrips, List<Trip> trainTrips),
    Result hide(bool isBus, bool isTrain, Direction direction),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hide != null) {
      return hide(isBus, isTrain, direction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(LoadMapsEvent value),
    @required Result hide(HideMapsEvent value),
  }) {
    assert(load != null);
    assert(hide != null);
    return hide(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(LoadMapsEvent value),
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
  const factory HideMapsEvent(
      {@required bool isBus,
      @required bool isTrain,
      @required Direction direction}) = _$HideMapsEvent;

  @override
  bool get isBus;
  @override
  bool get isTrain;
  @override
  Direction get direction;
  @override
  $HideMapsEventCopyWith<HideMapsEvent> get copyWith;
}

class _$MapsStateTearOff {
  const _$MapsStateTearOff();

  _MapsState call(
      {@required bool isLoading,
      @required bool isError,
      @required bool isBusLoaded,
      @required bool isTrainLoaded,
      @required Set<Polyline> polylines,
      @required Set<Marker> markers,
      Exception exception}) {
    return _MapsState(
      isLoading: isLoading,
      isError: isError,
      isBusLoaded: isBusLoaded,
      isTrainLoaded: isTrainLoaded,
      polylines: polylines,
      markers: markers,
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
  Set<Polyline> get polylines;
  Set<Marker> get markers;
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
      Set<Polyline> polylines,
      Set<Marker> markers,
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
    Object polylines = freezed,
    Object markers = freezed,
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
      polylines:
          polylines == freezed ? _value.polylines : polylines as Set<Polyline>,
      markers: markers == freezed ? _value.markers : markers as Set<Marker>,
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
      Set<Polyline> polylines,
      Set<Marker> markers,
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
    Object polylines = freezed,
    Object markers = freezed,
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
      polylines:
          polylines == freezed ? _value.polylines : polylines as Set<Polyline>,
      markers: markers == freezed ? _value.markers : markers as Set<Marker>,
      exception:
          exception == freezed ? _value.exception : exception as Exception,
    ));
  }
}

class _$_MapsState with DiagnosticableTreeMixin implements _MapsState {
  const _$_MapsState(
      {@required this.isLoading,
      @required this.isError,
      @required this.isBusLoaded,
      @required this.isTrainLoaded,
      @required this.polylines,
      @required this.markers,
      this.exception})
      : assert(isLoading != null),
        assert(isError != null),
        assert(isBusLoaded != null),
        assert(isTrainLoaded != null),
        assert(polylines != null),
        assert(markers != null);

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final bool isBusLoaded;
  @override
  final bool isTrainLoaded;
  @override
  final Set<Polyline> polylines;
  @override
  final Set<Marker> markers;
  @override
  final Exception exception;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MapsState(isLoading: $isLoading, isError: $isError, isBusLoaded: $isBusLoaded, isTrainLoaded: $isTrainLoaded, polylines: $polylines, markers: $markers, exception: $exception)';
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
      ..add(DiagnosticsProperty('polylines', polylines))
      ..add(DiagnosticsProperty('markers', markers))
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
            (identical(other.polylines, polylines) ||
                const DeepCollectionEquality()
                    .equals(other.polylines, polylines)) &&
            (identical(other.markers, markers) ||
                const DeepCollectionEquality()
                    .equals(other.markers, markers)) &&
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
      const DeepCollectionEquality().hash(polylines) ^
      const DeepCollectionEquality().hash(markers) ^
      const DeepCollectionEquality().hash(exception);

  @override
  _$MapsStateCopyWith<_MapsState> get copyWith =>
      __$MapsStateCopyWithImpl<_MapsState>(this, _$identity);
}

abstract class _MapsState implements MapsState {
  const factory _MapsState(
      {@required bool isLoading,
      @required bool isError,
      @required bool isBusLoaded,
      @required bool isTrainLoaded,
      @required Set<Polyline> polylines,
      @required Set<Marker> markers,
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
  Set<Polyline> get polylines;
  @override
  Set<Marker> get markers;
  @override
  Exception get exception;
  @override
  _$MapsStateCopyWith<_MapsState> get copyWith;
}
