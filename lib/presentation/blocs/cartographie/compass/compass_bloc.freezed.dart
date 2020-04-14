// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'compass_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CompassEventTearOff {
  const _$CompassEventTearOff();

  LoadHeadingEvent loadHeading() {
    return const LoadHeadingEvent();
  }
}

// ignore: unused_element
const $CompassEvent = _$CompassEventTearOff();

mixin _$CompassEvent {}

abstract class $CompassEventCopyWith<$Res> {
  factory $CompassEventCopyWith(
          CompassEvent value, $Res Function(CompassEvent) then) =
      _$CompassEventCopyWithImpl<$Res>;
}

class _$CompassEventCopyWithImpl<$Res> implements $CompassEventCopyWith<$Res> {
  _$CompassEventCopyWithImpl(this._value, this._then);

  final CompassEvent _value;
  // ignore: unused_field
  final $Res Function(CompassEvent) _then;
}

abstract class $LoadHeadingEventCopyWith<$Res> {
  factory $LoadHeadingEventCopyWith(
          LoadHeadingEvent value, $Res Function(LoadHeadingEvent) then) =
      _$LoadHeadingEventCopyWithImpl<$Res>;
}

class _$LoadHeadingEventCopyWithImpl<$Res>
    extends _$CompassEventCopyWithImpl<$Res>
    implements $LoadHeadingEventCopyWith<$Res> {
  _$LoadHeadingEventCopyWithImpl(
      LoadHeadingEvent _value, $Res Function(LoadHeadingEvent) _then)
      : super(_value, (v) => _then(v as LoadHeadingEvent));

  @override
  LoadHeadingEvent get _value => super._value as LoadHeadingEvent;
}

class _$LoadHeadingEvent
    with DiagnosticableTreeMixin
    implements LoadHeadingEvent {
  const _$LoadHeadingEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CompassEvent.loadHeading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'CompassEvent.loadHeading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadHeadingEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class LoadHeadingEvent implements CompassEvent {
  const factory LoadHeadingEvent() = _$LoadHeadingEvent;
}

class _$CompassStateTearOff {
  const _$CompassStateTearOff();

  CompassInitial initial() {
    return const CompassInitial();
  }

  CompassLoading loading() {
    return const CompassLoading();
  }

  CompassMovingLoading movingLoading() {
    return const CompassMovingLoading();
  }

  CompassStopMovingLoading stopMovingLoading() {
    return const CompassStopMovingLoading();
  }

  CompassLoaded loaded(num bearingBetweenCameraAndNorth) {
    return CompassLoaded(
      bearingBetweenCameraAndNorth,
    );
  }

  CompassNotPermitted notPermitted(
      {@required bool locationIsGranted,
      @required bool locationIsEnabled,
      @required bool cameraIsGranted}) {
    return CompassNotPermitted(
      locationIsGranted: locationIsGranted,
      locationIsEnabled: locationIsEnabled,
      cameraIsGranted: cameraIsGranted,
    );
  }
}

// ignore: unused_element
const $CompassState = _$CompassStateTearOff();

mixin _$CompassState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result movingLoading(),
    @required Result stopMovingLoading(),
    @required Result loaded(num bearingBetweenCameraAndNorth),
    @required
        Result notPermitted(@required bool locationIsGranted,
            @required bool locationIsEnabled, @required bool cameraIsGranted),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result movingLoading(),
    Result stopMovingLoading(),
    Result loaded(num bearingBetweenCameraAndNorth),
    Result notPermitted(@required bool locationIsGranted,
        @required bool locationIsEnabled, @required bool cameraIsGranted),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(CompassInitial value),
    @required Result loading(CompassLoading value),
    @required Result movingLoading(CompassMovingLoading value),
    @required Result stopMovingLoading(CompassStopMovingLoading value),
    @required Result loaded(CompassLoaded value),
    @required Result notPermitted(CompassNotPermitted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(CompassInitial value),
    Result loading(CompassLoading value),
    Result movingLoading(CompassMovingLoading value),
    Result stopMovingLoading(CompassStopMovingLoading value),
    Result loaded(CompassLoaded value),
    Result notPermitted(CompassNotPermitted value),
    @required Result orElse(),
  });
}

abstract class $CompassStateCopyWith<$Res> {
  factory $CompassStateCopyWith(
          CompassState value, $Res Function(CompassState) then) =
      _$CompassStateCopyWithImpl<$Res>;
}

class _$CompassStateCopyWithImpl<$Res> implements $CompassStateCopyWith<$Res> {
  _$CompassStateCopyWithImpl(this._value, this._then);

  final CompassState _value;
  // ignore: unused_field
  final $Res Function(CompassState) _then;
}

abstract class $CompassInitialCopyWith<$Res> {
  factory $CompassInitialCopyWith(
          CompassInitial value, $Res Function(CompassInitial) then) =
      _$CompassInitialCopyWithImpl<$Res>;
}

class _$CompassInitialCopyWithImpl<$Res>
    extends _$CompassStateCopyWithImpl<$Res>
    implements $CompassInitialCopyWith<$Res> {
  _$CompassInitialCopyWithImpl(
      CompassInitial _value, $Res Function(CompassInitial) _then)
      : super(_value, (v) => _then(v as CompassInitial));

  @override
  CompassInitial get _value => super._value as CompassInitial;
}

class _$CompassInitial with DiagnosticableTreeMixin implements CompassInitial {
  const _$CompassInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CompassState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'CompassState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CompassInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result movingLoading(),
    @required Result stopMovingLoading(),
    @required Result loaded(num bearingBetweenCameraAndNorth),
    @required
        Result notPermitted(@required bool locationIsGranted,
            @required bool locationIsEnabled, @required bool cameraIsGranted),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(movingLoading != null);
    assert(stopMovingLoading != null);
    assert(loaded != null);
    assert(notPermitted != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result movingLoading(),
    Result stopMovingLoading(),
    Result loaded(num bearingBetweenCameraAndNorth),
    Result notPermitted(@required bool locationIsGranted,
        @required bool locationIsEnabled, @required bool cameraIsGranted),
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
    @required Result initial(CompassInitial value),
    @required Result loading(CompassLoading value),
    @required Result movingLoading(CompassMovingLoading value),
    @required Result stopMovingLoading(CompassStopMovingLoading value),
    @required Result loaded(CompassLoaded value),
    @required Result notPermitted(CompassNotPermitted value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(movingLoading != null);
    assert(stopMovingLoading != null);
    assert(loaded != null);
    assert(notPermitted != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(CompassInitial value),
    Result loading(CompassLoading value),
    Result movingLoading(CompassMovingLoading value),
    Result stopMovingLoading(CompassStopMovingLoading value),
    Result loaded(CompassLoaded value),
    Result notPermitted(CompassNotPermitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CompassInitial implements CompassState {
  const factory CompassInitial() = _$CompassInitial;
}

abstract class $CompassLoadingCopyWith<$Res> {
  factory $CompassLoadingCopyWith(
          CompassLoading value, $Res Function(CompassLoading) then) =
      _$CompassLoadingCopyWithImpl<$Res>;
}

class _$CompassLoadingCopyWithImpl<$Res>
    extends _$CompassStateCopyWithImpl<$Res>
    implements $CompassLoadingCopyWith<$Res> {
  _$CompassLoadingCopyWithImpl(
      CompassLoading _value, $Res Function(CompassLoading) _then)
      : super(_value, (v) => _then(v as CompassLoading));

  @override
  CompassLoading get _value => super._value as CompassLoading;
}

class _$CompassLoading with DiagnosticableTreeMixin implements CompassLoading {
  const _$CompassLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CompassState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'CompassState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CompassLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result movingLoading(),
    @required Result stopMovingLoading(),
    @required Result loaded(num bearingBetweenCameraAndNorth),
    @required
        Result notPermitted(@required bool locationIsGranted,
            @required bool locationIsEnabled, @required bool cameraIsGranted),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(movingLoading != null);
    assert(stopMovingLoading != null);
    assert(loaded != null);
    assert(notPermitted != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result movingLoading(),
    Result stopMovingLoading(),
    Result loaded(num bearingBetweenCameraAndNorth),
    Result notPermitted(@required bool locationIsGranted,
        @required bool locationIsEnabled, @required bool cameraIsGranted),
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
    @required Result initial(CompassInitial value),
    @required Result loading(CompassLoading value),
    @required Result movingLoading(CompassMovingLoading value),
    @required Result stopMovingLoading(CompassStopMovingLoading value),
    @required Result loaded(CompassLoaded value),
    @required Result notPermitted(CompassNotPermitted value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(movingLoading != null);
    assert(stopMovingLoading != null);
    assert(loaded != null);
    assert(notPermitted != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(CompassInitial value),
    Result loading(CompassLoading value),
    Result movingLoading(CompassMovingLoading value),
    Result stopMovingLoading(CompassStopMovingLoading value),
    Result loaded(CompassLoaded value),
    Result notPermitted(CompassNotPermitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CompassLoading implements CompassState {
  const factory CompassLoading() = _$CompassLoading;
}

abstract class $CompassMovingLoadingCopyWith<$Res> {
  factory $CompassMovingLoadingCopyWith(CompassMovingLoading value,
          $Res Function(CompassMovingLoading) then) =
      _$CompassMovingLoadingCopyWithImpl<$Res>;
}

class _$CompassMovingLoadingCopyWithImpl<$Res>
    extends _$CompassStateCopyWithImpl<$Res>
    implements $CompassMovingLoadingCopyWith<$Res> {
  _$CompassMovingLoadingCopyWithImpl(
      CompassMovingLoading _value, $Res Function(CompassMovingLoading) _then)
      : super(_value, (v) => _then(v as CompassMovingLoading));

  @override
  CompassMovingLoading get _value => super._value as CompassMovingLoading;
}

class _$CompassMovingLoading
    with DiagnosticableTreeMixin
    implements CompassMovingLoading {
  const _$CompassMovingLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CompassState.movingLoading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'CompassState.movingLoading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CompassMovingLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result movingLoading(),
    @required Result stopMovingLoading(),
    @required Result loaded(num bearingBetweenCameraAndNorth),
    @required
        Result notPermitted(@required bool locationIsGranted,
            @required bool locationIsEnabled, @required bool cameraIsGranted),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(movingLoading != null);
    assert(stopMovingLoading != null);
    assert(loaded != null);
    assert(notPermitted != null);
    return movingLoading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result movingLoading(),
    Result stopMovingLoading(),
    Result loaded(num bearingBetweenCameraAndNorth),
    Result notPermitted(@required bool locationIsGranted,
        @required bool locationIsEnabled, @required bool cameraIsGranted),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (movingLoading != null) {
      return movingLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(CompassInitial value),
    @required Result loading(CompassLoading value),
    @required Result movingLoading(CompassMovingLoading value),
    @required Result stopMovingLoading(CompassStopMovingLoading value),
    @required Result loaded(CompassLoaded value),
    @required Result notPermitted(CompassNotPermitted value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(movingLoading != null);
    assert(stopMovingLoading != null);
    assert(loaded != null);
    assert(notPermitted != null);
    return movingLoading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(CompassInitial value),
    Result loading(CompassLoading value),
    Result movingLoading(CompassMovingLoading value),
    Result stopMovingLoading(CompassStopMovingLoading value),
    Result loaded(CompassLoaded value),
    Result notPermitted(CompassNotPermitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (movingLoading != null) {
      return movingLoading(this);
    }
    return orElse();
  }
}

abstract class CompassMovingLoading implements CompassState {
  const factory CompassMovingLoading() = _$CompassMovingLoading;
}

abstract class $CompassStopMovingLoadingCopyWith<$Res> {
  factory $CompassStopMovingLoadingCopyWith(CompassStopMovingLoading value,
          $Res Function(CompassStopMovingLoading) then) =
      _$CompassStopMovingLoadingCopyWithImpl<$Res>;
}

class _$CompassStopMovingLoadingCopyWithImpl<$Res>
    extends _$CompassStateCopyWithImpl<$Res>
    implements $CompassStopMovingLoadingCopyWith<$Res> {
  _$CompassStopMovingLoadingCopyWithImpl(CompassStopMovingLoading _value,
      $Res Function(CompassStopMovingLoading) _then)
      : super(_value, (v) => _then(v as CompassStopMovingLoading));

  @override
  CompassStopMovingLoading get _value =>
      super._value as CompassStopMovingLoading;
}

class _$CompassStopMovingLoading
    with DiagnosticableTreeMixin
    implements CompassStopMovingLoading {
  const _$CompassStopMovingLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CompassState.stopMovingLoading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CompassState.stopMovingLoading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CompassStopMovingLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result movingLoading(),
    @required Result stopMovingLoading(),
    @required Result loaded(num bearingBetweenCameraAndNorth),
    @required
        Result notPermitted(@required bool locationIsGranted,
            @required bool locationIsEnabled, @required bool cameraIsGranted),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(movingLoading != null);
    assert(stopMovingLoading != null);
    assert(loaded != null);
    assert(notPermitted != null);
    return stopMovingLoading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result movingLoading(),
    Result stopMovingLoading(),
    Result loaded(num bearingBetweenCameraAndNorth),
    Result notPermitted(@required bool locationIsGranted,
        @required bool locationIsEnabled, @required bool cameraIsGranted),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (stopMovingLoading != null) {
      return stopMovingLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(CompassInitial value),
    @required Result loading(CompassLoading value),
    @required Result movingLoading(CompassMovingLoading value),
    @required Result stopMovingLoading(CompassStopMovingLoading value),
    @required Result loaded(CompassLoaded value),
    @required Result notPermitted(CompassNotPermitted value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(movingLoading != null);
    assert(stopMovingLoading != null);
    assert(loaded != null);
    assert(notPermitted != null);
    return stopMovingLoading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(CompassInitial value),
    Result loading(CompassLoading value),
    Result movingLoading(CompassMovingLoading value),
    Result stopMovingLoading(CompassStopMovingLoading value),
    Result loaded(CompassLoaded value),
    Result notPermitted(CompassNotPermitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (stopMovingLoading != null) {
      return stopMovingLoading(this);
    }
    return orElse();
  }
}

abstract class CompassStopMovingLoading implements CompassState {
  const factory CompassStopMovingLoading() = _$CompassStopMovingLoading;
}

abstract class $CompassLoadedCopyWith<$Res> {
  factory $CompassLoadedCopyWith(
          CompassLoaded value, $Res Function(CompassLoaded) then) =
      _$CompassLoadedCopyWithImpl<$Res>;
  $Res call({num bearingBetweenCameraAndNorth});
}

class _$CompassLoadedCopyWithImpl<$Res> extends _$CompassStateCopyWithImpl<$Res>
    implements $CompassLoadedCopyWith<$Res> {
  _$CompassLoadedCopyWithImpl(
      CompassLoaded _value, $Res Function(CompassLoaded) _then)
      : super(_value, (v) => _then(v as CompassLoaded));

  @override
  CompassLoaded get _value => super._value as CompassLoaded;

  @override
  $Res call({
    Object bearingBetweenCameraAndNorth = freezed,
  }) {
    return _then(CompassLoaded(
      bearingBetweenCameraAndNorth == freezed
          ? _value.bearingBetweenCameraAndNorth
          : bearingBetweenCameraAndNorth as num,
    ));
  }
}

class _$CompassLoaded with DiagnosticableTreeMixin implements CompassLoaded {
  const _$CompassLoaded(this.bearingBetweenCameraAndNorth)
      : assert(bearingBetweenCameraAndNorth != null);

  @override
  final num bearingBetweenCameraAndNorth;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CompassState.loaded(bearingBetweenCameraAndNorth: $bearingBetweenCameraAndNorth)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CompassState.loaded'))
      ..add(DiagnosticsProperty(
          'bearingBetweenCameraAndNorth', bearingBetweenCameraAndNorth));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CompassLoaded &&
            (identical(other.bearingBetweenCameraAndNorth,
                    bearingBetweenCameraAndNorth) ||
                const DeepCollectionEquality().equals(
                    other.bearingBetweenCameraAndNorth,
                    bearingBetweenCameraAndNorth)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(bearingBetweenCameraAndNorth);

  @override
  $CompassLoadedCopyWith<CompassLoaded> get copyWith =>
      _$CompassLoadedCopyWithImpl<CompassLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result movingLoading(),
    @required Result stopMovingLoading(),
    @required Result loaded(num bearingBetweenCameraAndNorth),
    @required
        Result notPermitted(@required bool locationIsGranted,
            @required bool locationIsEnabled, @required bool cameraIsGranted),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(movingLoading != null);
    assert(stopMovingLoading != null);
    assert(loaded != null);
    assert(notPermitted != null);
    return loaded(bearingBetweenCameraAndNorth);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result movingLoading(),
    Result stopMovingLoading(),
    Result loaded(num bearingBetweenCameraAndNorth),
    Result notPermitted(@required bool locationIsGranted,
        @required bool locationIsEnabled, @required bool cameraIsGranted),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(bearingBetweenCameraAndNorth);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(CompassInitial value),
    @required Result loading(CompassLoading value),
    @required Result movingLoading(CompassMovingLoading value),
    @required Result stopMovingLoading(CompassStopMovingLoading value),
    @required Result loaded(CompassLoaded value),
    @required Result notPermitted(CompassNotPermitted value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(movingLoading != null);
    assert(stopMovingLoading != null);
    assert(loaded != null);
    assert(notPermitted != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(CompassInitial value),
    Result loading(CompassLoading value),
    Result movingLoading(CompassMovingLoading value),
    Result stopMovingLoading(CompassStopMovingLoading value),
    Result loaded(CompassLoaded value),
    Result notPermitted(CompassNotPermitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CompassLoaded implements CompassState {
  const factory CompassLoaded(num bearingBetweenCameraAndNorth) =
      _$CompassLoaded;

  num get bearingBetweenCameraAndNorth;
  $CompassLoadedCopyWith<CompassLoaded> get copyWith;
}

abstract class $CompassNotPermittedCopyWith<$Res> {
  factory $CompassNotPermittedCopyWith(
          CompassNotPermitted value, $Res Function(CompassNotPermitted) then) =
      _$CompassNotPermittedCopyWithImpl<$Res>;
  $Res call(
      {bool locationIsGranted, bool locationIsEnabled, bool cameraIsGranted});
}

class _$CompassNotPermittedCopyWithImpl<$Res>
    extends _$CompassStateCopyWithImpl<$Res>
    implements $CompassNotPermittedCopyWith<$Res> {
  _$CompassNotPermittedCopyWithImpl(
      CompassNotPermitted _value, $Res Function(CompassNotPermitted) _then)
      : super(_value, (v) => _then(v as CompassNotPermitted));

  @override
  CompassNotPermitted get _value => super._value as CompassNotPermitted;

  @override
  $Res call({
    Object locationIsGranted = freezed,
    Object locationIsEnabled = freezed,
    Object cameraIsGranted = freezed,
  }) {
    return _then(CompassNotPermitted(
      locationIsGranted: locationIsGranted == freezed
          ? _value.locationIsGranted
          : locationIsGranted as bool,
      locationIsEnabled: locationIsEnabled == freezed
          ? _value.locationIsEnabled
          : locationIsEnabled as bool,
      cameraIsGranted: cameraIsGranted == freezed
          ? _value.cameraIsGranted
          : cameraIsGranted as bool,
    ));
  }
}

class _$CompassNotPermitted
    with DiagnosticableTreeMixin
    implements CompassNotPermitted {
  const _$CompassNotPermitted(
      {@required this.locationIsGranted,
      @required this.locationIsEnabled,
      @required this.cameraIsGranted})
      : assert(locationIsGranted != null),
        assert(locationIsEnabled != null),
        assert(cameraIsGranted != null);

  @override
  final bool locationIsGranted;
  @override
  final bool locationIsEnabled;
  @override
  final bool cameraIsGranted;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CompassState.notPermitted(locationIsGranted: $locationIsGranted, locationIsEnabled: $locationIsEnabled, cameraIsGranted: $cameraIsGranted)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CompassState.notPermitted'))
      ..add(DiagnosticsProperty('locationIsGranted', locationIsGranted))
      ..add(DiagnosticsProperty('locationIsEnabled', locationIsEnabled))
      ..add(DiagnosticsProperty('cameraIsGranted', cameraIsGranted));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CompassNotPermitted &&
            (identical(other.locationIsGranted, locationIsGranted) ||
                const DeepCollectionEquality()
                    .equals(other.locationIsGranted, locationIsGranted)) &&
            (identical(other.locationIsEnabled, locationIsEnabled) ||
                const DeepCollectionEquality()
                    .equals(other.locationIsEnabled, locationIsEnabled)) &&
            (identical(other.cameraIsGranted, cameraIsGranted) ||
                const DeepCollectionEquality()
                    .equals(other.cameraIsGranted, cameraIsGranted)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(locationIsGranted) ^
      const DeepCollectionEquality().hash(locationIsEnabled) ^
      const DeepCollectionEquality().hash(cameraIsGranted);

  @override
  $CompassNotPermittedCopyWith<CompassNotPermitted> get copyWith =>
      _$CompassNotPermittedCopyWithImpl<CompassNotPermitted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result movingLoading(),
    @required Result stopMovingLoading(),
    @required Result loaded(num bearingBetweenCameraAndNorth),
    @required
        Result notPermitted(@required bool locationIsGranted,
            @required bool locationIsEnabled, @required bool cameraIsGranted),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(movingLoading != null);
    assert(stopMovingLoading != null);
    assert(loaded != null);
    assert(notPermitted != null);
    return notPermitted(locationIsGranted, locationIsEnabled, cameraIsGranted);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result movingLoading(),
    Result stopMovingLoading(),
    Result loaded(num bearingBetweenCameraAndNorth),
    Result notPermitted(@required bool locationIsGranted,
        @required bool locationIsEnabled, @required bool cameraIsGranted),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notPermitted != null) {
      return notPermitted(
          locationIsGranted, locationIsEnabled, cameraIsGranted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(CompassInitial value),
    @required Result loading(CompassLoading value),
    @required Result movingLoading(CompassMovingLoading value),
    @required Result stopMovingLoading(CompassStopMovingLoading value),
    @required Result loaded(CompassLoaded value),
    @required Result notPermitted(CompassNotPermitted value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(movingLoading != null);
    assert(stopMovingLoading != null);
    assert(loaded != null);
    assert(notPermitted != null);
    return notPermitted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(CompassInitial value),
    Result loading(CompassLoading value),
    Result movingLoading(CompassMovingLoading value),
    Result stopMovingLoading(CompassStopMovingLoading value),
    Result loaded(CompassLoaded value),
    Result notPermitted(CompassNotPermitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notPermitted != null) {
      return notPermitted(this);
    }
    return orElse();
  }
}

abstract class CompassNotPermitted implements CompassState {
  const factory CompassNotPermitted(
      {@required bool locationIsGranted,
      @required bool locationIsEnabled,
      @required bool cameraIsGranted}) = _$CompassNotPermitted;

  bool get locationIsGranted;
  bool get locationIsEnabled;
  bool get cameraIsGranted;
  $CompassNotPermittedCopyWith<CompassNotPermitted> get copyWith;
}
