// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'app_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AppUserTearOff {
  const _$AppUserTearOff();

  _AppUser call(
      {@required int id,
      @required @nullable String email,
      @required @nullable String username,
      @required @nullable String password,
      @required @nullable String role,
      @required @nullable bool isEmailVerified,
      @required @nullable String token}) {
    return _AppUser(
      id: id,
      email: email,
      username: username,
      password: password,
      role: role,
      isEmailVerified: isEmailVerified,
      token: token,
    );
  }
}

// ignore: unused_element
const $AppUser = _$AppUserTearOff();

mixin _$AppUser {
  int get id;
  @nullable
  String get email;
  @nullable
  String get username;
  @nullable
  String get password;
  @nullable
  String get role;
  @nullable
  bool get isEmailVerified;
  @nullable
  String get token;

  $AppUserCopyWith<AppUser> get copyWith;
}

abstract class $AppUserCopyWith<$Res> {
  factory $AppUserCopyWith(AppUser value, $Res Function(AppUser) then) =
      _$AppUserCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @nullable String email,
      @nullable String username,
      @nullable String password,
      @nullable String role,
      @nullable bool isEmailVerified,
      @nullable String token});
}

class _$AppUserCopyWithImpl<$Res> implements $AppUserCopyWith<$Res> {
  _$AppUserCopyWithImpl(this._value, this._then);

  final AppUser _value;
  // ignore: unused_field
  final $Res Function(AppUser) _then;

  @override
  $Res call({
    Object id = freezed,
    Object email = freezed,
    Object username = freezed,
    Object password = freezed,
    Object role = freezed,
    Object isEmailVerified = freezed,
    Object token = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      email: email == freezed ? _value.email : email as String,
      username: username == freezed ? _value.username : username as String,
      password: password == freezed ? _value.password : password as String,
      role: role == freezed ? _value.role : role as String,
      isEmailVerified: isEmailVerified == freezed
          ? _value.isEmailVerified
          : isEmailVerified as bool,
      token: token == freezed ? _value.token : token as String,
    ));
  }
}

abstract class _$AppUserCopyWith<$Res> implements $AppUserCopyWith<$Res> {
  factory _$AppUserCopyWith(_AppUser value, $Res Function(_AppUser) then) =
      __$AppUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @nullable String email,
      @nullable String username,
      @nullable String password,
      @nullable String role,
      @nullable bool isEmailVerified,
      @nullable String token});
}

class __$AppUserCopyWithImpl<$Res> extends _$AppUserCopyWithImpl<$Res>
    implements _$AppUserCopyWith<$Res> {
  __$AppUserCopyWithImpl(_AppUser _value, $Res Function(_AppUser) _then)
      : super(_value, (v) => _then(v as _AppUser));

  @override
  _AppUser get _value => super._value as _AppUser;

  @override
  $Res call({
    Object id = freezed,
    Object email = freezed,
    Object username = freezed,
    Object password = freezed,
    Object role = freezed,
    Object isEmailVerified = freezed,
    Object token = freezed,
  }) {
    return _then(_AppUser(
      id: id == freezed ? _value.id : id as int,
      email: email == freezed ? _value.email : email as String,
      username: username == freezed ? _value.username : username as String,
      password: password == freezed ? _value.password : password as String,
      role: role == freezed ? _value.role : role as String,
      isEmailVerified: isEmailVerified == freezed
          ? _value.isEmailVerified
          : isEmailVerified as bool,
      token: token == freezed ? _value.token : token as String,
    ));
  }
}

class _$_AppUser with DiagnosticableTreeMixin implements _AppUser {
  const _$_AppUser(
      {@required this.id,
      @required @nullable this.email,
      @required @nullable this.username,
      @required @nullable this.password,
      @required @nullable this.role,
      @required @nullable this.isEmailVerified,
      @required @nullable this.token})
      : assert(id != null);

  @override
  final int id;
  @override
  @nullable
  final String email;
  @override
  @nullable
  final String username;
  @override
  @nullable
  final String password;
  @override
  @nullable
  final String role;
  @override
  @nullable
  final bool isEmailVerified;
  @override
  @nullable
  final String token;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppUser(id: $id, email: $email, username: $username, password: $password, role: $role, isEmailVerified: $isEmailVerified, token: $token)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppUser'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('role', role))
      ..add(DiagnosticsProperty('isEmailVerified', isEmailVerified))
      ..add(DiagnosticsProperty('token', token));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppUser &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                const DeepCollectionEquality()
                    .equals(other.isEmailVerified, isEmailVerified)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(isEmailVerified) ^
      const DeepCollectionEquality().hash(token);

  @override
  _$AppUserCopyWith<_AppUser> get copyWith =>
      __$AppUserCopyWithImpl<_AppUser>(this, _$identity);
}

abstract class _AppUser implements AppUser {
  const factory _AppUser(
      {@required int id,
      @required @nullable String email,
      @required @nullable String username,
      @required @nullable String password,
      @required @nullable String role,
      @required @nullable bool isEmailVerified,
      @required @nullable String token}) = _$_AppUser;

  @override
  int get id;
  @override
  @nullable
  String get email;
  @override
  @nullable
  String get username;
  @override
  @nullable
  String get password;
  @override
  @nullable
  String get role;
  @override
  @nullable
  bool get isEmailVerified;
  @override
  @nullable
  String get token;
  @override
  _$AppUserCopyWith<_AppUser> get copyWith;
}
