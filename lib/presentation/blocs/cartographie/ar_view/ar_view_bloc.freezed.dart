// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'ar_view_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ArViewEventTearOff {
  const _$ArViewEventTearOff();

  FetchFromUnityEvent fetchFromUnity(
      {@required UnityWidgetController unityWidgetController,
      @required num bearingBetweenCameraAndNorth}) {
    return FetchFromUnityEvent(
      unityWidgetController: unityWidgetController,
      bearingBetweenCameraAndNorth: bearingBetweenCameraAndNorth,
    );
  }

  ArLoadedEvent loaded() {
    return const ArLoadedEvent();
  }
}

// ignore: unused_element
const $ArViewEvent = _$ArViewEventTearOff();

mixin _$ArViewEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result fetchFromUnity(
            @required UnityWidgetController unityWidgetController,
            @required num bearingBetweenCameraAndNorth),
    @required Result loaded(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchFromUnity(@required UnityWidgetController unityWidgetController,
        @required num bearingBetweenCameraAndNorth),
    Result loaded(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchFromUnity(FetchFromUnityEvent value),
    @required Result loaded(ArLoadedEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchFromUnity(FetchFromUnityEvent value),
    Result loaded(ArLoadedEvent value),
    @required Result orElse(),
  });
}

abstract class $ArViewEventCopyWith<$Res> {
  factory $ArViewEventCopyWith(
          ArViewEvent value, $Res Function(ArViewEvent) then) =
      _$ArViewEventCopyWithImpl<$Res>;
}

class _$ArViewEventCopyWithImpl<$Res> implements $ArViewEventCopyWith<$Res> {
  _$ArViewEventCopyWithImpl(this._value, this._then);

  final ArViewEvent _value;
  // ignore: unused_field
  final $Res Function(ArViewEvent) _then;
}

abstract class $FetchFromUnityEventCopyWith<$Res> {
  factory $FetchFromUnityEventCopyWith(
          FetchFromUnityEvent value, $Res Function(FetchFromUnityEvent) then) =
      _$FetchFromUnityEventCopyWithImpl<$Res>;
  $Res call(
      {UnityWidgetController unityWidgetController,
      num bearingBetweenCameraAndNorth});
}

class _$FetchFromUnityEventCopyWithImpl<$Res>
    extends _$ArViewEventCopyWithImpl<$Res>
    implements $FetchFromUnityEventCopyWith<$Res> {
  _$FetchFromUnityEventCopyWithImpl(
      FetchFromUnityEvent _value, $Res Function(FetchFromUnityEvent) _then)
      : super(_value, (v) => _then(v as FetchFromUnityEvent));

  @override
  FetchFromUnityEvent get _value => super._value as FetchFromUnityEvent;

  @override
  $Res call({
    Object unityWidgetController = freezed,
    Object bearingBetweenCameraAndNorth = freezed,
  }) {
    return _then(FetchFromUnityEvent(
      unityWidgetController: unityWidgetController == freezed
          ? _value.unityWidgetController
          : unityWidgetController as UnityWidgetController,
      bearingBetweenCameraAndNorth: bearingBetweenCameraAndNorth == freezed
          ? _value.bearingBetweenCameraAndNorth
          : bearingBetweenCameraAndNorth as num,
    ));
  }
}

class _$FetchFromUnityEvent
    with DiagnosticableTreeMixin
    implements FetchFromUnityEvent {
  const _$FetchFromUnityEvent(
      {@required this.unityWidgetController,
      @required this.bearingBetweenCameraAndNorth})
      : assert(unityWidgetController != null),
        assert(bearingBetweenCameraAndNorth != null);

  @override
  final UnityWidgetController unityWidgetController;
  @override
  final num bearingBetweenCameraAndNorth;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArViewEvent.fetchFromUnity(unityWidgetController: $unityWidgetController, bearingBetweenCameraAndNorth: $bearingBetweenCameraAndNorth)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ArViewEvent.fetchFromUnity'))
      ..add(DiagnosticsProperty('unityWidgetController', unityWidgetController))
      ..add(DiagnosticsProperty(
          'bearingBetweenCameraAndNorth', bearingBetweenCameraAndNorth));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchFromUnityEvent &&
            (identical(other.unityWidgetController, unityWidgetController) ||
                const DeepCollectionEquality().equals(
                    other.unityWidgetController, unityWidgetController)) &&
            (identical(other.bearingBetweenCameraAndNorth,
                    bearingBetweenCameraAndNorth) ||
                const DeepCollectionEquality().equals(
                    other.bearingBetweenCameraAndNorth,
                    bearingBetweenCameraAndNorth)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(unityWidgetController) ^
      const DeepCollectionEquality().hash(bearingBetweenCameraAndNorth);

  @override
  $FetchFromUnityEventCopyWith<FetchFromUnityEvent> get copyWith =>
      _$FetchFromUnityEventCopyWithImpl<FetchFromUnityEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result fetchFromUnity(
            @required UnityWidgetController unityWidgetController,
            @required num bearingBetweenCameraAndNorth),
    @required Result loaded(),
  }) {
    assert(fetchFromUnity != null);
    assert(loaded != null);
    return fetchFromUnity(unityWidgetController, bearingBetweenCameraAndNorth);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchFromUnity(@required UnityWidgetController unityWidgetController,
        @required num bearingBetweenCameraAndNorth),
    Result loaded(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchFromUnity != null) {
      return fetchFromUnity(
          unityWidgetController, bearingBetweenCameraAndNorth);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchFromUnity(FetchFromUnityEvent value),
    @required Result loaded(ArLoadedEvent value),
  }) {
    assert(fetchFromUnity != null);
    assert(loaded != null);
    return fetchFromUnity(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchFromUnity(FetchFromUnityEvent value),
    Result loaded(ArLoadedEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchFromUnity != null) {
      return fetchFromUnity(this);
    }
    return orElse();
  }
}

abstract class FetchFromUnityEvent implements ArViewEvent {
  const factory FetchFromUnityEvent(
      {@required UnityWidgetController unityWidgetController,
      @required num bearingBetweenCameraAndNorth}) = _$FetchFromUnityEvent;

  UnityWidgetController get unityWidgetController;
  num get bearingBetweenCameraAndNorth;
  $FetchFromUnityEventCopyWith<FetchFromUnityEvent> get copyWith;
}

abstract class $ArLoadedEventCopyWith<$Res> {
  factory $ArLoadedEventCopyWith(
          ArLoadedEvent value, $Res Function(ArLoadedEvent) then) =
      _$ArLoadedEventCopyWithImpl<$Res>;
}

class _$ArLoadedEventCopyWithImpl<$Res> extends _$ArViewEventCopyWithImpl<$Res>
    implements $ArLoadedEventCopyWith<$Res> {
  _$ArLoadedEventCopyWithImpl(
      ArLoadedEvent _value, $Res Function(ArLoadedEvent) _then)
      : super(_value, (v) => _then(v as ArLoadedEvent));

  @override
  ArLoadedEvent get _value => super._value as ArLoadedEvent;
}

class _$ArLoadedEvent with DiagnosticableTreeMixin implements ArLoadedEvent {
  const _$ArLoadedEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArViewEvent.loaded()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ArViewEvent.loaded'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ArLoadedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result fetchFromUnity(
            @required UnityWidgetController unityWidgetController,
            @required num bearingBetweenCameraAndNorth),
    @required Result loaded(),
  }) {
    assert(fetchFromUnity != null);
    assert(loaded != null);
    return loaded();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchFromUnity(@required UnityWidgetController unityWidgetController,
        @required num bearingBetweenCameraAndNorth),
    Result loaded(),
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
    @required Result fetchFromUnity(FetchFromUnityEvent value),
    @required Result loaded(ArLoadedEvent value),
  }) {
    assert(fetchFromUnity != null);
    assert(loaded != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchFromUnity(FetchFromUnityEvent value),
    Result loaded(ArLoadedEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ArLoadedEvent implements ArViewEvent {
  const factory ArLoadedEvent() = _$ArLoadedEvent;
}

class _$ArViewStateTearOff {
  const _$ArViewStateTearOff();

  ArViewInitial initial() {
    return const ArViewInitial();
  }

  ArViewLoaded loaded() {
    return const ArViewLoaded();
  }

  ArViewLoading loading() {
    return const ArViewLoading();
  }

  ArViewError error(Exception error) {
    return ArViewError(
      error,
    );
  }
}

// ignore: unused_element
const $ArViewState = _$ArViewStateTearOff();

mixin _$ArViewState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loaded(),
    @required Result loading(),
    @required Result error(Exception error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loaded(),
    Result loading(),
    Result error(Exception error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(ArViewInitial value),
    @required Result loaded(ArViewLoaded value),
    @required Result loading(ArViewLoading value),
    @required Result error(ArViewError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(ArViewInitial value),
    Result loaded(ArViewLoaded value),
    Result loading(ArViewLoading value),
    Result error(ArViewError value),
    @required Result orElse(),
  });
}

abstract class $ArViewStateCopyWith<$Res> {
  factory $ArViewStateCopyWith(
          ArViewState value, $Res Function(ArViewState) then) =
      _$ArViewStateCopyWithImpl<$Res>;
}

class _$ArViewStateCopyWithImpl<$Res> implements $ArViewStateCopyWith<$Res> {
  _$ArViewStateCopyWithImpl(this._value, this._then);

  final ArViewState _value;
  // ignore: unused_field
  final $Res Function(ArViewState) _then;
}

abstract class $ArViewInitialCopyWith<$Res> {
  factory $ArViewInitialCopyWith(
          ArViewInitial value, $Res Function(ArViewInitial) then) =
      _$ArViewInitialCopyWithImpl<$Res>;
}

class _$ArViewInitialCopyWithImpl<$Res> extends _$ArViewStateCopyWithImpl<$Res>
    implements $ArViewInitialCopyWith<$Res> {
  _$ArViewInitialCopyWithImpl(
      ArViewInitial _value, $Res Function(ArViewInitial) _then)
      : super(_value, (v) => _then(v as ArViewInitial));

  @override
  ArViewInitial get _value => super._value as ArViewInitial;
}

class _$ArViewInitial with DiagnosticableTreeMixin implements ArViewInitial {
  const _$ArViewInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArViewState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ArViewState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ArViewInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loaded(),
    @required Result loading(),
    @required Result error(Exception error),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loaded(),
    Result loading(),
    Result error(Exception error),
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
    @required Result initial(ArViewInitial value),
    @required Result loaded(ArViewLoaded value),
    @required Result loading(ArViewLoading value),
    @required Result error(ArViewError value),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(ArViewInitial value),
    Result loaded(ArViewLoaded value),
    Result loading(ArViewLoading value),
    Result error(ArViewError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ArViewInitial implements ArViewState {
  const factory ArViewInitial() = _$ArViewInitial;
}

abstract class $ArViewLoadedCopyWith<$Res> {
  factory $ArViewLoadedCopyWith(
          ArViewLoaded value, $Res Function(ArViewLoaded) then) =
      _$ArViewLoadedCopyWithImpl<$Res>;
}

class _$ArViewLoadedCopyWithImpl<$Res> extends _$ArViewStateCopyWithImpl<$Res>
    implements $ArViewLoadedCopyWith<$Res> {
  _$ArViewLoadedCopyWithImpl(
      ArViewLoaded _value, $Res Function(ArViewLoaded) _then)
      : super(_value, (v) => _then(v as ArViewLoaded));

  @override
  ArViewLoaded get _value => super._value as ArViewLoaded;
}

class _$ArViewLoaded with DiagnosticableTreeMixin implements ArViewLoaded {
  const _$ArViewLoaded();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArViewState.loaded()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ArViewState.loaded'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ArViewLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loaded(),
    @required Result loading(),
    @required Result error(Exception error),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return loaded();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loaded(),
    Result loading(),
    Result error(Exception error),
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
    @required Result initial(ArViewInitial value),
    @required Result loaded(ArViewLoaded value),
    @required Result loading(ArViewLoading value),
    @required Result error(ArViewError value),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(ArViewInitial value),
    Result loaded(ArViewLoaded value),
    Result loading(ArViewLoading value),
    Result error(ArViewError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ArViewLoaded implements ArViewState {
  const factory ArViewLoaded() = _$ArViewLoaded;
}

abstract class $ArViewLoadingCopyWith<$Res> {
  factory $ArViewLoadingCopyWith(
          ArViewLoading value, $Res Function(ArViewLoading) then) =
      _$ArViewLoadingCopyWithImpl<$Res>;
}

class _$ArViewLoadingCopyWithImpl<$Res> extends _$ArViewStateCopyWithImpl<$Res>
    implements $ArViewLoadingCopyWith<$Res> {
  _$ArViewLoadingCopyWithImpl(
      ArViewLoading _value, $Res Function(ArViewLoading) _then)
      : super(_value, (v) => _then(v as ArViewLoading));

  @override
  ArViewLoading get _value => super._value as ArViewLoading;
}

class _$ArViewLoading with DiagnosticableTreeMixin implements ArViewLoading {
  const _$ArViewLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArViewState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ArViewState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ArViewLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loaded(),
    @required Result loading(),
    @required Result error(Exception error),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loaded(),
    Result loading(),
    Result error(Exception error),
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
    @required Result initial(ArViewInitial value),
    @required Result loaded(ArViewLoaded value),
    @required Result loading(ArViewLoading value),
    @required Result error(ArViewError value),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(ArViewInitial value),
    Result loaded(ArViewLoaded value),
    Result loading(ArViewLoading value),
    Result error(ArViewError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ArViewLoading implements ArViewState {
  const factory ArViewLoading() = _$ArViewLoading;
}

abstract class $ArViewErrorCopyWith<$Res> {
  factory $ArViewErrorCopyWith(
          ArViewError value, $Res Function(ArViewError) then) =
      _$ArViewErrorCopyWithImpl<$Res>;
  $Res call({Exception error});
}

class _$ArViewErrorCopyWithImpl<$Res> extends _$ArViewStateCopyWithImpl<$Res>
    implements $ArViewErrorCopyWith<$Res> {
  _$ArViewErrorCopyWithImpl(
      ArViewError _value, $Res Function(ArViewError) _then)
      : super(_value, (v) => _then(v as ArViewError));

  @override
  ArViewError get _value => super._value as ArViewError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(ArViewError(
      error == freezed ? _value.error : error as Exception,
    ));
  }
}

class _$ArViewError with DiagnosticableTreeMixin implements ArViewError {
  const _$ArViewError(this.error) : assert(error != null);

  @override
  final Exception error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArViewState.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ArViewState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ArViewError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $ArViewErrorCopyWith<ArViewError> get copyWith =>
      _$ArViewErrorCopyWithImpl<ArViewError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loaded(),
    @required Result loading(),
    @required Result error(Exception error),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loaded(),
    Result loading(),
    Result error(Exception error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(ArViewInitial value),
    @required Result loaded(ArViewLoaded value),
    @required Result loading(ArViewLoading value),
    @required Result error(ArViewError value),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(ArViewInitial value),
    Result loaded(ArViewLoaded value),
    Result loading(ArViewLoading value),
    Result error(ArViewError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ArViewError implements ArViewState {
  const factory ArViewError(Exception error) = _$ArViewError;

  Exception get error;
  $ArViewErrorCopyWith<ArViewError> get copyWith;
}
