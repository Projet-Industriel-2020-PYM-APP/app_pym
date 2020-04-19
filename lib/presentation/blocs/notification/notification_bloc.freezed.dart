// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$NotificationEventTearOff {
  const _$NotificationEventTearOff();

  NotificationAppStarted appStarted() {
    return const NotificationAppStarted();
  }

  NotificationEnable enable() {
    return const NotificationEnable();
  }

  NotificationDisable disable() {
    return const NotificationDisable();
  }
}

// ignore: unused_element
const $NotificationEvent = _$NotificationEventTearOff();

mixin _$NotificationEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result appStarted(),
    @required Result enable(),
    @required Result disable(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result appStarted(),
    Result enable(),
    Result disable(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result appStarted(NotificationAppStarted value),
    @required Result enable(NotificationEnable value),
    @required Result disable(NotificationDisable value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result appStarted(NotificationAppStarted value),
    Result enable(NotificationEnable value),
    Result disable(NotificationDisable value),
    @required Result orElse(),
  });
}

abstract class $NotificationEventCopyWith<$Res> {
  factory $NotificationEventCopyWith(
          NotificationEvent value, $Res Function(NotificationEvent) then) =
      _$NotificationEventCopyWithImpl<$Res>;
}

class _$NotificationEventCopyWithImpl<$Res>
    implements $NotificationEventCopyWith<$Res> {
  _$NotificationEventCopyWithImpl(this._value, this._then);

  final NotificationEvent _value;
  // ignore: unused_field
  final $Res Function(NotificationEvent) _then;
}

abstract class $NotificationAppStartedCopyWith<$Res> {
  factory $NotificationAppStartedCopyWith(NotificationAppStarted value,
          $Res Function(NotificationAppStarted) then) =
      _$NotificationAppStartedCopyWithImpl<$Res>;
}

class _$NotificationAppStartedCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res>
    implements $NotificationAppStartedCopyWith<$Res> {
  _$NotificationAppStartedCopyWithImpl(NotificationAppStarted _value,
      $Res Function(NotificationAppStarted) _then)
      : super(_value, (v) => _then(v as NotificationAppStarted));

  @override
  NotificationAppStarted get _value => super._value as NotificationAppStarted;
}

class _$NotificationAppStarted
    with DiagnosticableTreeMixin
    implements NotificationAppStarted {
  const _$NotificationAppStarted();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationEvent.appStarted()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotificationEvent.appStarted'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NotificationAppStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result appStarted(),
    @required Result enable(),
    @required Result disable(),
  }) {
    assert(appStarted != null);
    assert(enable != null);
    assert(disable != null);
    return appStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result appStarted(),
    Result enable(),
    Result disable(),
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
    @required Result appStarted(NotificationAppStarted value),
    @required Result enable(NotificationEnable value),
    @required Result disable(NotificationDisable value),
  }) {
    assert(appStarted != null);
    assert(enable != null);
    assert(disable != null);
    return appStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result appStarted(NotificationAppStarted value),
    Result enable(NotificationEnable value),
    Result disable(NotificationDisable value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (appStarted != null) {
      return appStarted(this);
    }
    return orElse();
  }
}

abstract class NotificationAppStarted implements NotificationEvent {
  const factory NotificationAppStarted() = _$NotificationAppStarted;
}

abstract class $NotificationEnableCopyWith<$Res> {
  factory $NotificationEnableCopyWith(
          NotificationEnable value, $Res Function(NotificationEnable) then) =
      _$NotificationEnableCopyWithImpl<$Res>;
}

class _$NotificationEnableCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res>
    implements $NotificationEnableCopyWith<$Res> {
  _$NotificationEnableCopyWithImpl(
      NotificationEnable _value, $Res Function(NotificationEnable) _then)
      : super(_value, (v) => _then(v as NotificationEnable));

  @override
  NotificationEnable get _value => super._value as NotificationEnable;
}

class _$NotificationEnable
    with DiagnosticableTreeMixin
    implements NotificationEnable {
  const _$NotificationEnable();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationEvent.enable()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'NotificationEvent.enable'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NotificationEnable);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result appStarted(),
    @required Result enable(),
    @required Result disable(),
  }) {
    assert(appStarted != null);
    assert(enable != null);
    assert(disable != null);
    return enable();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result appStarted(),
    Result enable(),
    Result disable(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (enable != null) {
      return enable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result appStarted(NotificationAppStarted value),
    @required Result enable(NotificationEnable value),
    @required Result disable(NotificationDisable value),
  }) {
    assert(appStarted != null);
    assert(enable != null);
    assert(disable != null);
    return enable(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result appStarted(NotificationAppStarted value),
    Result enable(NotificationEnable value),
    Result disable(NotificationDisable value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (enable != null) {
      return enable(this);
    }
    return orElse();
  }
}

abstract class NotificationEnable implements NotificationEvent {
  const factory NotificationEnable() = _$NotificationEnable;
}

abstract class $NotificationDisableCopyWith<$Res> {
  factory $NotificationDisableCopyWith(
          NotificationDisable value, $Res Function(NotificationDisable) then) =
      _$NotificationDisableCopyWithImpl<$Res>;
}

class _$NotificationDisableCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res>
    implements $NotificationDisableCopyWith<$Res> {
  _$NotificationDisableCopyWithImpl(
      NotificationDisable _value, $Res Function(NotificationDisable) _then)
      : super(_value, (v) => _then(v as NotificationDisable));

  @override
  NotificationDisable get _value => super._value as NotificationDisable;
}

class _$NotificationDisable
    with DiagnosticableTreeMixin
    implements NotificationDisable {
  const _$NotificationDisable();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationEvent.disable()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'NotificationEvent.disable'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NotificationDisable);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result appStarted(),
    @required Result enable(),
    @required Result disable(),
  }) {
    assert(appStarted != null);
    assert(enable != null);
    assert(disable != null);
    return disable();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result appStarted(),
    Result enable(),
    Result disable(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (disable != null) {
      return disable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result appStarted(NotificationAppStarted value),
    @required Result enable(NotificationEnable value),
    @required Result disable(NotificationDisable value),
  }) {
    assert(appStarted != null);
    assert(enable != null);
    assert(disable != null);
    return disable(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result appStarted(NotificationAppStarted value),
    Result enable(NotificationEnable value),
    Result disable(NotificationDisable value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (disable != null) {
      return disable(this);
    }
    return orElse();
  }
}

abstract class NotificationDisable implements NotificationEvent {
  const factory NotificationDisable() = _$NotificationDisable;
}

class _$NotificationStateTearOff {
  const _$NotificationStateTearOff();

  NotificationInitial initial() {
    return const NotificationInitial();
  }

  NotificationEnabled enabled() {
    return const NotificationEnabled();
  }

  NotificationDisabled disabled() {
    return const NotificationDisabled();
  }
}

// ignore: unused_element
const $NotificationState = _$NotificationStateTearOff();

mixin _$NotificationState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result enabled(),
    @required Result disabled(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result enabled(),
    Result disabled(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(NotificationInitial value),
    @required Result enabled(NotificationEnabled value),
    @required Result disabled(NotificationDisabled value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(NotificationInitial value),
    Result enabled(NotificationEnabled value),
    Result disabled(NotificationDisabled value),
    @required Result orElse(),
  });
}

abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res>;
}

class _$NotificationStateCopyWithImpl<$Res>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  final NotificationState _value;
  // ignore: unused_field
  final $Res Function(NotificationState) _then;
}

abstract class $NotificationInitialCopyWith<$Res> {
  factory $NotificationInitialCopyWith(
          NotificationInitial value, $Res Function(NotificationInitial) then) =
      _$NotificationInitialCopyWithImpl<$Res>;
}

class _$NotificationInitialCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res>
    implements $NotificationInitialCopyWith<$Res> {
  _$NotificationInitialCopyWithImpl(
      NotificationInitial _value, $Res Function(NotificationInitial) _then)
      : super(_value, (v) => _then(v as NotificationInitial));

  @override
  NotificationInitial get _value => super._value as NotificationInitial;
}

class _$NotificationInitial
    with DiagnosticableTreeMixin
    implements NotificationInitial {
  const _$NotificationInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'NotificationState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NotificationInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result enabled(),
    @required Result disabled(),
  }) {
    assert(initial != null);
    assert(enabled != null);
    assert(disabled != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result enabled(),
    Result disabled(),
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
    @required Result initial(NotificationInitial value),
    @required Result enabled(NotificationEnabled value),
    @required Result disabled(NotificationDisabled value),
  }) {
    assert(initial != null);
    assert(enabled != null);
    assert(disabled != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(NotificationInitial value),
    Result enabled(NotificationEnabled value),
    Result disabled(NotificationDisabled value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class NotificationInitial implements NotificationState {
  const factory NotificationInitial() = _$NotificationInitial;
}

abstract class $NotificationEnabledCopyWith<$Res> {
  factory $NotificationEnabledCopyWith(
          NotificationEnabled value, $Res Function(NotificationEnabled) then) =
      _$NotificationEnabledCopyWithImpl<$Res>;
}

class _$NotificationEnabledCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res>
    implements $NotificationEnabledCopyWith<$Res> {
  _$NotificationEnabledCopyWithImpl(
      NotificationEnabled _value, $Res Function(NotificationEnabled) _then)
      : super(_value, (v) => _then(v as NotificationEnabled));

  @override
  NotificationEnabled get _value => super._value as NotificationEnabled;
}

class _$NotificationEnabled
    with DiagnosticableTreeMixin
    implements NotificationEnabled {
  const _$NotificationEnabled();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationState.enabled()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'NotificationState.enabled'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NotificationEnabled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result enabled(),
    @required Result disabled(),
  }) {
    assert(initial != null);
    assert(enabled != null);
    assert(disabled != null);
    return enabled();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result enabled(),
    Result disabled(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (enabled != null) {
      return enabled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(NotificationInitial value),
    @required Result enabled(NotificationEnabled value),
    @required Result disabled(NotificationDisabled value),
  }) {
    assert(initial != null);
    assert(enabled != null);
    assert(disabled != null);
    return enabled(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(NotificationInitial value),
    Result enabled(NotificationEnabled value),
    Result disabled(NotificationDisabled value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (enabled != null) {
      return enabled(this);
    }
    return orElse();
  }
}

abstract class NotificationEnabled implements NotificationState {
  const factory NotificationEnabled() = _$NotificationEnabled;
}

abstract class $NotificationDisabledCopyWith<$Res> {
  factory $NotificationDisabledCopyWith(NotificationDisabled value,
          $Res Function(NotificationDisabled) then) =
      _$NotificationDisabledCopyWithImpl<$Res>;
}

class _$NotificationDisabledCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res>
    implements $NotificationDisabledCopyWith<$Res> {
  _$NotificationDisabledCopyWithImpl(
      NotificationDisabled _value, $Res Function(NotificationDisabled) _then)
      : super(_value, (v) => _then(v as NotificationDisabled));

  @override
  NotificationDisabled get _value => super._value as NotificationDisabled;
}

class _$NotificationDisabled
    with DiagnosticableTreeMixin
    implements NotificationDisabled {
  const _$NotificationDisabled();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationState.disabled()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'NotificationState.disabled'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NotificationDisabled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result enabled(),
    @required Result disabled(),
  }) {
    assert(initial != null);
    assert(enabled != null);
    assert(disabled != null);
    return disabled();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result enabled(),
    Result disabled(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (disabled != null) {
      return disabled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(NotificationInitial value),
    @required Result enabled(NotificationEnabled value),
    @required Result disabled(NotificationDisabled value),
  }) {
    assert(initial != null);
    assert(enabled != null);
    assert(disabled != null);
    return disabled(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(NotificationInitial value),
    Result enabled(NotificationEnabled value),
    Result disabled(NotificationDisabled value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (disabled != null) {
      return disabled(this);
    }
    return orElse();
  }
}

abstract class NotificationDisabled implements NotificationState {
  const factory NotificationDisabled() = _$NotificationDisabled;
}
