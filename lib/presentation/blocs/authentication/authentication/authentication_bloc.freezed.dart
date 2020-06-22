// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthenticationEventTearOff {
  const _$AuthenticationEventTearOff();

  Refresh refresh() {
    return const Refresh();
  }

  SignOut signOut() {
    return const SignOut();
  }

  SendEmailVerification sendEmailVerification() {
    return const SendEmailVerification();
  }
}

// ignore: unused_element
const $AuthenticationEvent = _$AuthenticationEventTearOff();

mixin _$AuthenticationEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result refresh(),
    @required Result signOut(),
    @required Result sendEmailVerification(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result refresh(),
    Result signOut(),
    Result sendEmailVerification(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result refresh(Refresh value),
    @required Result signOut(SignOut value),
    @required Result sendEmailVerification(SendEmailVerification value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result refresh(Refresh value),
    Result signOut(SignOut value),
    Result sendEmailVerification(SendEmailVerification value),
    @required Result orElse(),
  });
}

abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res>;
}

class _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  final AuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(AuthenticationEvent) _then;
}

abstract class $RefreshCopyWith<$Res> {
  factory $RefreshCopyWith(Refresh value, $Res Function(Refresh) then) =
      _$RefreshCopyWithImpl<$Res>;
}

class _$RefreshCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $RefreshCopyWith<$Res> {
  _$RefreshCopyWithImpl(Refresh _value, $Res Function(Refresh) _then)
      : super(_value, (v) => _then(v as Refresh));

  @override
  Refresh get _value => super._value as Refresh;
}

class _$Refresh with DiagnosticableTreeMixin implements Refresh {
  const _$Refresh();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationEvent.refresh()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthenticationEvent.refresh'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Refresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result refresh(),
    @required Result signOut(),
    @required Result sendEmailVerification(),
  }) {
    assert(refresh != null);
    assert(signOut != null);
    assert(sendEmailVerification != null);
    return refresh();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result refresh(),
    Result signOut(),
    Result sendEmailVerification(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result refresh(Refresh value),
    @required Result signOut(SignOut value),
    @required Result sendEmailVerification(SendEmailVerification value),
  }) {
    assert(refresh != null);
    assert(signOut != null);
    assert(sendEmailVerification != null);
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result refresh(Refresh value),
    Result signOut(SignOut value),
    Result sendEmailVerification(SendEmailVerification value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class Refresh implements AuthenticationEvent {
  const factory Refresh() = _$Refresh;
}

abstract class $SignOutCopyWith<$Res> {
  factory $SignOutCopyWith(SignOut value, $Res Function(SignOut) then) =
      _$SignOutCopyWithImpl<$Res>;
}

class _$SignOutCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $SignOutCopyWith<$Res> {
  _$SignOutCopyWithImpl(SignOut _value, $Res Function(SignOut) _then)
      : super(_value, (v) => _then(v as SignOut));

  @override
  SignOut get _value => super._value as SignOut;
}

class _$SignOut with DiagnosticableTreeMixin implements SignOut {
  const _$SignOut();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationEvent.signOut()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthenticationEvent.signOut'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result refresh(),
    @required Result signOut(),
    @required Result sendEmailVerification(),
  }) {
    assert(refresh != null);
    assert(signOut != null);
    assert(sendEmailVerification != null);
    return signOut();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result refresh(),
    Result signOut(),
    Result sendEmailVerification(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result refresh(Refresh value),
    @required Result signOut(SignOut value),
    @required Result sendEmailVerification(SendEmailVerification value),
  }) {
    assert(refresh != null);
    assert(signOut != null);
    assert(sendEmailVerification != null);
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result refresh(Refresh value),
    Result signOut(SignOut value),
    Result sendEmailVerification(SendEmailVerification value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class SignOut implements AuthenticationEvent {
  const factory SignOut() = _$SignOut;
}

abstract class $SendEmailVerificationCopyWith<$Res> {
  factory $SendEmailVerificationCopyWith(SendEmailVerification value,
          $Res Function(SendEmailVerification) then) =
      _$SendEmailVerificationCopyWithImpl<$Res>;
}

class _$SendEmailVerificationCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $SendEmailVerificationCopyWith<$Res> {
  _$SendEmailVerificationCopyWithImpl(
      SendEmailVerification _value, $Res Function(SendEmailVerification) _then)
      : super(_value, (v) => _then(v as SendEmailVerification));

  @override
  SendEmailVerification get _value => super._value as SendEmailVerification;
}

class _$SendEmailVerification
    with DiagnosticableTreeMixin
    implements SendEmailVerification {
  const _$SendEmailVerification();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationEvent.sendEmailVerification()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AuthenticationEvent.sendEmailVerification'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SendEmailVerification);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result refresh(),
    @required Result signOut(),
    @required Result sendEmailVerification(),
  }) {
    assert(refresh != null);
    assert(signOut != null);
    assert(sendEmailVerification != null);
    return sendEmailVerification();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result refresh(),
    Result signOut(),
    Result sendEmailVerification(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sendEmailVerification != null) {
      return sendEmailVerification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result refresh(Refresh value),
    @required Result signOut(SignOut value),
    @required Result sendEmailVerification(SendEmailVerification value),
  }) {
    assert(refresh != null);
    assert(signOut != null);
    assert(sendEmailVerification != null);
    return sendEmailVerification(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result refresh(Refresh value),
    Result signOut(SignOut value),
    Result sendEmailVerification(SendEmailVerification value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sendEmailVerification != null) {
      return sendEmailVerification(this);
    }
    return orElse();
  }
}

abstract class SendEmailVerification implements AuthenticationEvent {
  const factory SendEmailVerification() = _$SendEmailVerification;
}

class _$AuthenticationStateTearOff {
  const _$AuthenticationStateTearOff();

  Authenticated authenticated(AppUser user) {
    return Authenticated(
      user,
    );
  }

  Unauthenticated unauthenticated() {
    return const Unauthenticated();
  }
}

// ignore: unused_element
const $AuthenticationState = _$AuthenticationStateTearOff();

mixin _$AuthenticationState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authenticated(AppUser user),
    @required Result unauthenticated(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authenticated(AppUser user),
    Result unauthenticated(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authenticated(Authenticated value),
    @required Result unauthenticated(Unauthenticated value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authenticated(Authenticated value),
    Result unauthenticated(Unauthenticated value),
    @required Result orElse(),
  });
}

abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
}

class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;
}

abstract class $AuthenticatedCopyWith<$Res> {
  factory $AuthenticatedCopyWith(
          Authenticated value, $Res Function(Authenticated) then) =
      _$AuthenticatedCopyWithImpl<$Res>;
  $Res call({AppUser user});

  $AppUserCopyWith<$Res> get user;
}

class _$AuthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticatedCopyWith<$Res> {
  _$AuthenticatedCopyWithImpl(
      Authenticated _value, $Res Function(Authenticated) _then)
      : super(_value, (v) => _then(v as Authenticated));

  @override
  Authenticated get _value => super._value as Authenticated;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(Authenticated(
      user == freezed ? _value.user : user as AppUser,
    ));
  }

  @override
  $AppUserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $AppUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

class _$Authenticated with DiagnosticableTreeMixin implements Authenticated {
  const _$Authenticated(this.user) : assert(user != null);

  @override
  final AppUser user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationState.authenticated(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthenticationState.authenticated'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Authenticated &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $AuthenticatedCopyWith<Authenticated> get copyWith =>
      _$AuthenticatedCopyWithImpl<Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authenticated(AppUser user),
    @required Result unauthenticated(),
  }) {
    assert(authenticated != null);
    assert(unauthenticated != null);
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authenticated(AppUser user),
    Result unauthenticated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authenticated(Authenticated value),
    @required Result unauthenticated(Unauthenticated value),
  }) {
    assert(authenticated != null);
    assert(unauthenticated != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authenticated(Authenticated value),
    Result unauthenticated(Unauthenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements AuthenticationState {
  const factory Authenticated(AppUser user) = _$Authenticated;

  AppUser get user;
  $AuthenticatedCopyWith<Authenticated> get copyWith;
}

abstract class $UnauthenticatedCopyWith<$Res> {
  factory $UnauthenticatedCopyWith(
          Unauthenticated value, $Res Function(Unauthenticated) then) =
      _$UnauthenticatedCopyWithImpl<$Res>;
}

class _$UnauthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $UnauthenticatedCopyWith<$Res> {
  _$UnauthenticatedCopyWithImpl(
      Unauthenticated _value, $Res Function(Unauthenticated) _then)
      : super(_value, (v) => _then(v as Unauthenticated));

  @override
  Unauthenticated get _value => super._value as Unauthenticated;
}

class _$Unauthenticated
    with DiagnosticableTreeMixin
    implements Unauthenticated {
  const _$Unauthenticated();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationState.unauthenticated()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthenticationState.unauthenticated'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authenticated(AppUser user),
    @required Result unauthenticated(),
  }) {
    assert(authenticated != null);
    assert(unauthenticated != null);
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authenticated(AppUser user),
    Result unauthenticated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authenticated(Authenticated value),
    @required Result unauthenticated(Unauthenticated value),
  }) {
    assert(authenticated != null);
    assert(unauthenticated != null);
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authenticated(Authenticated value),
    Result unauthenticated(Unauthenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class Unauthenticated implements AuthenticationState {
  const factory Unauthenticated() = _$Unauthenticated;
}
