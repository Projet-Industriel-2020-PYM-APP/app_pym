// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'forgot_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ForgotEventTearOff {
  const _$ForgotEventTearOff();

  EmailChanged emailChanged(String email) {
    return EmailChanged(
      email,
    );
  }

  Submitted submitted(String email) {
    return Submitted(
      email,
    );
  }
}

// ignore: unused_element
const $ForgotEvent = _$ForgotEventTearOff();

mixin _$ForgotEvent {
  String get email;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result submitted(String email),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result submitted(String email),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result submitted(Submitted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result submitted(Submitted value),
    @required Result orElse(),
  });

  $ForgotEventCopyWith<ForgotEvent> get copyWith;
}

abstract class $ForgotEventCopyWith<$Res> {
  factory $ForgotEventCopyWith(
          ForgotEvent value, $Res Function(ForgotEvent) then) =
      _$ForgotEventCopyWithImpl<$Res>;
  $Res call({String email});
}

class _$ForgotEventCopyWithImpl<$Res> implements $ForgotEventCopyWith<$Res> {
  _$ForgotEventCopyWithImpl(this._value, this._then);

  final ForgotEvent _value;
  // ignore: unused_field
  final $Res Function(ForgotEvent) _then;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as String,
    ));
  }
}

abstract class $EmailChangedCopyWith<$Res>
    implements $ForgotEventCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  @override
  $Res call({String email});
}

class _$EmailChangedCopyWithImpl<$Res> extends _$ForgotEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(EmailChanged(
      email == freezed ? _value.email : email as String,
    ));
  }
}

class _$EmailChanged with DiagnosticableTreeMixin implements EmailChanged {
  const _$EmailChanged(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ForgotEvent.emailChanged(email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ForgotEvent.emailChanged'))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result submitted(String email),
  }) {
    assert(emailChanged != null);
    assert(submitted != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result submitted(String email),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result submitted(Submitted value),
  }) {
    assert(emailChanged != null);
    assert(submitted != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result submitted(Submitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements ForgotEvent {
  const factory EmailChanged(String email) = _$EmailChanged;

  @override
  String get email;
  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

abstract class $SubmittedCopyWith<$Res> implements $ForgotEventCopyWith<$Res> {
  factory $SubmittedCopyWith(Submitted value, $Res Function(Submitted) then) =
      _$SubmittedCopyWithImpl<$Res>;
  @override
  $Res call({String email});
}

class _$SubmittedCopyWithImpl<$Res> extends _$ForgotEventCopyWithImpl<$Res>
    implements $SubmittedCopyWith<$Res> {
  _$SubmittedCopyWithImpl(Submitted _value, $Res Function(Submitted) _then)
      : super(_value, (v) => _then(v as Submitted));

  @override
  Submitted get _value => super._value as Submitted;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(Submitted(
      email == freezed ? _value.email : email as String,
    ));
  }
}

class _$Submitted with DiagnosticableTreeMixin implements Submitted {
  const _$Submitted(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ForgotEvent.submitted(email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ForgotEvent.submitted'))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Submitted &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  $SubmittedCopyWith<Submitted> get copyWith =>
      _$SubmittedCopyWithImpl<Submitted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result submitted(String email),
  }) {
    assert(emailChanged != null);
    assert(submitted != null);
    return submitted(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result submitted(String email),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitted != null) {
      return submitted(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result submitted(Submitted value),
  }) {
    assert(emailChanged != null);
    assert(submitted != null);
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result submitted(Submitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class Submitted implements ForgotEvent {
  const factory Submitted(String email) = _$Submitted;

  @override
  String get email;
  @override
  $SubmittedCopyWith<Submitted> get copyWith;
}

class _$ForgotStateTearOff {
  const _$ForgotStateTearOff();

  _ForgotState call(
      {@required bool isEmailValid,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure}) {
    return _ForgotState(
      isEmailValid: isEmailValid,
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
      isFailure: isFailure,
    );
  }
}

// ignore: unused_element
const $ForgotState = _$ForgotStateTearOff();

mixin _$ForgotState {
  bool get isEmailValid;
  bool get isSubmitting;
  bool get isSuccess;
  bool get isFailure;

  $ForgotStateCopyWith<ForgotState> get copyWith;
}

abstract class $ForgotStateCopyWith<$Res> {
  factory $ForgotStateCopyWith(
          ForgotState value, $Res Function(ForgotState) then) =
      _$ForgotStateCopyWithImpl<$Res>;
  $Res call(
      {bool isEmailValid, bool isSubmitting, bool isSuccess, bool isFailure});
}

class _$ForgotStateCopyWithImpl<$Res> implements $ForgotStateCopyWith<$Res> {
  _$ForgotStateCopyWithImpl(this._value, this._then);

  final ForgotState _value;
  // ignore: unused_field
  final $Res Function(ForgotState) _then;

  @override
  $Res call({
    Object isEmailValid = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
  }) {
    return _then(_value.copyWith(
      isEmailValid:
          isEmailValid == freezed ? _value.isEmailValid : isEmailValid as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
    ));
  }
}

abstract class _$ForgotStateCopyWith<$Res>
    implements $ForgotStateCopyWith<$Res> {
  factory _$ForgotStateCopyWith(
          _ForgotState value, $Res Function(_ForgotState) then) =
      __$ForgotStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isEmailValid, bool isSubmitting, bool isSuccess, bool isFailure});
}

class __$ForgotStateCopyWithImpl<$Res> extends _$ForgotStateCopyWithImpl<$Res>
    implements _$ForgotStateCopyWith<$Res> {
  __$ForgotStateCopyWithImpl(
      _ForgotState _value, $Res Function(_ForgotState) _then)
      : super(_value, (v) => _then(v as _ForgotState));

  @override
  _ForgotState get _value => super._value as _ForgotState;

  @override
  $Res call({
    Object isEmailValid = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
  }) {
    return _then(_ForgotState(
      isEmailValid:
          isEmailValid == freezed ? _value.isEmailValid : isEmailValid as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
    ));
  }
}

class _$_ForgotState with DiagnosticableTreeMixin implements _ForgotState {
  const _$_ForgotState(
      {@required this.isEmailValid,
      @required this.isSubmitting,
      @required this.isSuccess,
      @required this.isFailure})
      : assert(isEmailValid != null),
        assert(isSubmitting != null),
        assert(isSuccess != null),
        assert(isFailure != null);

  @override
  final bool isEmailValid;
  @override
  final bool isSubmitting;
  @override
  final bool isSuccess;
  @override
  final bool isFailure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ForgotState(isEmailValid: $isEmailValid, isSubmitting: $isSubmitting, isSuccess: $isSuccess, isFailure: $isFailure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ForgotState'))
      ..add(DiagnosticsProperty('isEmailValid', isEmailValid))
      ..add(DiagnosticsProperty('isSubmitting', isSubmitting))
      ..add(DiagnosticsProperty('isSuccess', isSuccess))
      ..add(DiagnosticsProperty('isFailure', isFailure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ForgotState &&
            (identical(other.isEmailValid, isEmailValid) ||
                const DeepCollectionEquality()
                    .equals(other.isEmailValid, isEmailValid)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
            (identical(other.isFailure, isFailure) ||
                const DeepCollectionEquality()
                    .equals(other.isFailure, isFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isEmailValid) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(isFailure);

  @override
  _$ForgotStateCopyWith<_ForgotState> get copyWith =>
      __$ForgotStateCopyWithImpl<_ForgotState>(this, _$identity);
}

abstract class _ForgotState implements ForgotState {
  const factory _ForgotState(
      {@required bool isEmailValid,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure}) = _$_ForgotState;

  @override
  bool get isEmailValid;
  @override
  bool get isSubmitting;
  @override
  bool get isSuccess;
  @override
  bool get isFailure;
  @override
  _$ForgotStateCopyWith<_ForgotState> get copyWith;
}
