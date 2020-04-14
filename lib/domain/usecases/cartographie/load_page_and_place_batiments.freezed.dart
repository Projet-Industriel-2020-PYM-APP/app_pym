// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'load_page_and_place_batiments.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LoadPageAndPlaceBatimentParamsTearOff {
  const _$LoadPageAndPlaceBatimentParamsTearOff();

  _LoadPageAndPlaceBatimentParams call(
      {@required num bearingBetweenCameraAndNorth,
      @required UnityWidgetController controller}) {
    return _LoadPageAndPlaceBatimentParams(
      bearingBetweenCameraAndNorth: bearingBetweenCameraAndNorth,
      controller: controller,
    );
  }
}

// ignore: unused_element
const $LoadPageAndPlaceBatimentParams =
    _$LoadPageAndPlaceBatimentParamsTearOff();

mixin _$LoadPageAndPlaceBatimentParams {
  num get bearingBetweenCameraAndNorth;
  UnityWidgetController get controller;

  $LoadPageAndPlaceBatimentParamsCopyWith<LoadPageAndPlaceBatimentParams>
      get copyWith;
}

abstract class $LoadPageAndPlaceBatimentParamsCopyWith<$Res> {
  factory $LoadPageAndPlaceBatimentParamsCopyWith(
          LoadPageAndPlaceBatimentParams value,
          $Res Function(LoadPageAndPlaceBatimentParams) then) =
      _$LoadPageAndPlaceBatimentParamsCopyWithImpl<$Res>;
  $Res call(
      {num bearingBetweenCameraAndNorth, UnityWidgetController controller});
}

class _$LoadPageAndPlaceBatimentParamsCopyWithImpl<$Res>
    implements $LoadPageAndPlaceBatimentParamsCopyWith<$Res> {
  _$LoadPageAndPlaceBatimentParamsCopyWithImpl(this._value, this._then);

  final LoadPageAndPlaceBatimentParams _value;
  // ignore: unused_field
  final $Res Function(LoadPageAndPlaceBatimentParams) _then;

  @override
  $Res call({
    Object bearingBetweenCameraAndNorth = freezed,
    Object controller = freezed,
  }) {
    return _then(_value.copyWith(
      bearingBetweenCameraAndNorth: bearingBetweenCameraAndNorth == freezed
          ? _value.bearingBetweenCameraAndNorth
          : bearingBetweenCameraAndNorth as num,
      controller: controller == freezed
          ? _value.controller
          : controller as UnityWidgetController,
    ));
  }
}

abstract class _$LoadPageAndPlaceBatimentParamsCopyWith<$Res>
    implements $LoadPageAndPlaceBatimentParamsCopyWith<$Res> {
  factory _$LoadPageAndPlaceBatimentParamsCopyWith(
          _LoadPageAndPlaceBatimentParams value,
          $Res Function(_LoadPageAndPlaceBatimentParams) then) =
      __$LoadPageAndPlaceBatimentParamsCopyWithImpl<$Res>;
  @override
  $Res call(
      {num bearingBetweenCameraAndNorth, UnityWidgetController controller});
}

class __$LoadPageAndPlaceBatimentParamsCopyWithImpl<$Res>
    extends _$LoadPageAndPlaceBatimentParamsCopyWithImpl<$Res>
    implements _$LoadPageAndPlaceBatimentParamsCopyWith<$Res> {
  __$LoadPageAndPlaceBatimentParamsCopyWithImpl(
      _LoadPageAndPlaceBatimentParams _value,
      $Res Function(_LoadPageAndPlaceBatimentParams) _then)
      : super(_value, (v) => _then(v as _LoadPageAndPlaceBatimentParams));

  @override
  _LoadPageAndPlaceBatimentParams get _value =>
      super._value as _LoadPageAndPlaceBatimentParams;

  @override
  $Res call({
    Object bearingBetweenCameraAndNorth = freezed,
    Object controller = freezed,
  }) {
    return _then(_LoadPageAndPlaceBatimentParams(
      bearingBetweenCameraAndNorth: bearingBetweenCameraAndNorth == freezed
          ? _value.bearingBetweenCameraAndNorth
          : bearingBetweenCameraAndNorth as num,
      controller: controller == freezed
          ? _value.controller
          : controller as UnityWidgetController,
    ));
  }
}

class _$_LoadPageAndPlaceBatimentParams
    with DiagnosticableTreeMixin
    implements _LoadPageAndPlaceBatimentParams {
  const _$_LoadPageAndPlaceBatimentParams(
      {@required this.bearingBetweenCameraAndNorth, @required this.controller})
      : assert(bearingBetweenCameraAndNorth != null),
        assert(controller != null);

  @override
  final num bearingBetweenCameraAndNorth;
  @override
  final UnityWidgetController controller;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoadPageAndPlaceBatimentParams(bearingBetweenCameraAndNorth: $bearingBetweenCameraAndNorth, controller: $controller)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoadPageAndPlaceBatimentParams'))
      ..add(DiagnosticsProperty(
          'bearingBetweenCameraAndNorth', bearingBetweenCameraAndNorth))
      ..add(DiagnosticsProperty('controller', controller));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadPageAndPlaceBatimentParams &&
            (identical(other.bearingBetweenCameraAndNorth,
                    bearingBetweenCameraAndNorth) ||
                const DeepCollectionEquality().equals(
                    other.bearingBetweenCameraAndNorth,
                    bearingBetweenCameraAndNorth)) &&
            (identical(other.controller, controller) ||
                const DeepCollectionEquality()
                    .equals(other.controller, controller)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(bearingBetweenCameraAndNorth) ^
      const DeepCollectionEquality().hash(controller);

  @override
  _$LoadPageAndPlaceBatimentParamsCopyWith<_LoadPageAndPlaceBatimentParams>
      get copyWith => __$LoadPageAndPlaceBatimentParamsCopyWithImpl<
          _LoadPageAndPlaceBatimentParams>(this, _$identity);
}

abstract class _LoadPageAndPlaceBatimentParams
    implements LoadPageAndPlaceBatimentParams {
  const factory _LoadPageAndPlaceBatimentParams(
          {@required num bearingBetweenCameraAndNorth,
          @required UnityWidgetController controller}) =
      _$_LoadPageAndPlaceBatimentParams;

  @override
  num get bearingBetweenCameraAndNorth;
  @override
  UnityWidgetController get controller;
  @override
  _$LoadPageAndPlaceBatimentParamsCopyWith<_LoadPageAndPlaceBatimentParams>
      get copyWith;
}
