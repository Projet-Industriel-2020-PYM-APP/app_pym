// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'app_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AppUserModel _$AppUserModelFromJson(Map<String, dynamic> json) {
  return _AppUserModel.fromJson(json);
}

class _$AppUserModelTearOff {
  const _$AppUserModelTearOff();

  _AppUserModel call(
      {@required int id,
      @required @nullable String email,
      @required @nullable String username,
      @required @nullable String password,
      @required @nullable String role,
      @required @nullable bool is_email_verified,
      @required @nullable String token}) {
    return _AppUserModel(
      id: id,
      email: email,
      username: username,
      password: password,
      role: role,
      is_email_verified: is_email_verified,
      token: token,
    );
  }
}

// ignore: unused_element
const $AppUserModel = _$AppUserModelTearOff();

mixin _$AppUserModel {
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
  bool get is_email_verified;
  @nullable
  String get token;

  Map<String, dynamic> toJson();
  $AppUserModelCopyWith<AppUserModel> get copyWith;
}

abstract class $AppUserModelCopyWith<$Res> {
  factory $AppUserModelCopyWith(
          AppUserModel value, $Res Function(AppUserModel) then) =
      _$AppUserModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @nullable String email,
      @nullable String username,
      @nullable String password,
      @nullable String role,
      @nullable bool is_email_verified,
      @nullable String token});
}

class _$AppUserModelCopyWithImpl<$Res> implements $AppUserModelCopyWith<$Res> {
  _$AppUserModelCopyWithImpl(this._value, this._then);

  final AppUserModel _value;
  // ignore: unused_field
  final $Res Function(AppUserModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object email = freezed,
    Object username = freezed,
    Object password = freezed,
    Object role = freezed,
    Object is_email_verified = freezed,
    Object token = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      email: email == freezed ? _value.email : email as String,
      username: username == freezed ? _value.username : username as String,
      password: password == freezed ? _value.password : password as String,
      role: role == freezed ? _value.role : role as String,
      is_email_verified: is_email_verified == freezed
          ? _value.is_email_verified
          : is_email_verified as bool,
      token: token == freezed ? _value.token : token as String,
    ));
  }
}

abstract class _$AppUserModelCopyWith<$Res>
    implements $AppUserModelCopyWith<$Res> {
  factory _$AppUserModelCopyWith(
          _AppUserModel value, $Res Function(_AppUserModel) then) =
      __$AppUserModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @nullable String email,
      @nullable String username,
      @nullable String password,
      @nullable String role,
      @nullable bool is_email_verified,
      @nullable String token});
}

class __$AppUserModelCopyWithImpl<$Res> extends _$AppUserModelCopyWithImpl<$Res>
    implements _$AppUserModelCopyWith<$Res> {
  __$AppUserModelCopyWithImpl(
      _AppUserModel _value, $Res Function(_AppUserModel) _then)
      : super(_value, (v) => _then(v as _AppUserModel));

  @override
  _AppUserModel get _value => super._value as _AppUserModel;

  @override
  $Res call({
    Object id = freezed,
    Object email = freezed,
    Object username = freezed,
    Object password = freezed,
    Object role = freezed,
    Object is_email_verified = freezed,
    Object token = freezed,
  }) {
    return _then(_AppUserModel(
      id: id == freezed ? _value.id : id as int,
      email: email == freezed ? _value.email : email as String,
      username: username == freezed ? _value.username : username as String,
      password: password == freezed ? _value.password : password as String,
      role: role == freezed ? _value.role : role as String,
      is_email_verified: is_email_verified == freezed
          ? _value.is_email_verified
          : is_email_verified as bool,
      token: token == freezed ? _value.token : token as String,
    ));
  }
}

@JsonSerializable()
class _$_AppUserModel with DiagnosticableTreeMixin implements _AppUserModel {
  const _$_AppUserModel(
      {@required this.id,
      @required @nullable this.email,
      @required @nullable this.username,
      @required @nullable this.password,
      @required @nullable this.role,
      @required @nullable this.is_email_verified,
      @required @nullable this.token})
      : assert(id != null);

  factory _$_AppUserModel.fromJson(Map<String, dynamic> json) =>
      _$_$_AppUserModelFromJson(json);

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
  final bool is_email_verified;
  @override
  @nullable
  final String token;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppUserModel(id: $id, email: $email, username: $username, password: $password, role: $role, is_email_verified: $is_email_verified, token: $token)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppUserModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('role', role))
      ..add(DiagnosticsProperty('is_email_verified', is_email_verified))
      ..add(DiagnosticsProperty('token', token));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppUserModel &&
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
            (identical(other.is_email_verified, is_email_verified) ||
                const DeepCollectionEquality()
                    .equals(other.is_email_verified, is_email_verified)) &&
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
      const DeepCollectionEquality().hash(is_email_verified) ^
      const DeepCollectionEquality().hash(token);

  @override
  _$AppUserModelCopyWith<_AppUserModel> get copyWith =>
      __$AppUserModelCopyWithImpl<_AppUserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AppUserModelToJson(this);
  }
}

abstract class _AppUserModel implements AppUserModel {
  const factory _AppUserModel(
      {@required int id,
      @required @nullable String email,
      @required @nullable String username,
      @required @nullable String password,
      @required @nullable String role,
      @required @nullable bool is_email_verified,
      @required @nullable String token}) = _$_AppUserModel;

  factory _AppUserModel.fromJson(Map<String, dynamic> json) =
      _$_AppUserModel.fromJson;

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
  bool get is_email_verified;
  @override
  @nullable
  String get token;
  @override
  _$AppUserModelCopyWith<_AppUserModel> get copyWith;
}
