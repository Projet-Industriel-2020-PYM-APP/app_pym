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
      {@required String uid,
      @required String email,
      @required String photoUrl,
      @required String displayName,
      @required DateTime lastSeen,
      @required bool isAdmin}) {
    return _AppUser(
      uid: uid,
      email: email,
      photoUrl: photoUrl,
      displayName: displayName,
      lastSeen: lastSeen,
      isAdmin: isAdmin,
    );
  }
}

// ignore: unused_element
const $AppUser = _$AppUserTearOff();

mixin _$AppUser {
  String get uid;
  String get email;
  String get photoUrl;
  String get displayName;
  DateTime get lastSeen;
  bool get isAdmin;

  $AppUserCopyWith<AppUser> get copyWith;
}

abstract class $AppUserCopyWith<$Res> {
  factory $AppUserCopyWith(AppUser value, $Res Function(AppUser) then) =
      _$AppUserCopyWithImpl<$Res>;
  $Res call(
      {String uid,
      String email,
      String photoUrl,
      String displayName,
      DateTime lastSeen,
      bool isAdmin});
}

class _$AppUserCopyWithImpl<$Res> implements $AppUserCopyWith<$Res> {
  _$AppUserCopyWithImpl(this._value, this._then);

  final AppUser _value;
  // ignore: unused_field
  final $Res Function(AppUser) _then;

  @override
  $Res call({
    Object uid = freezed,
    Object email = freezed,
    Object photoUrl = freezed,
    Object displayName = freezed,
    Object lastSeen = freezed,
    Object isAdmin = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed ? _value.uid : uid as String,
      email: email == freezed ? _value.email : email as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      lastSeen: lastSeen == freezed ? _value.lastSeen : lastSeen as DateTime,
      isAdmin: isAdmin == freezed ? _value.isAdmin : isAdmin as bool,
    ));
  }
}

abstract class _$AppUserCopyWith<$Res> implements $AppUserCopyWith<$Res> {
  factory _$AppUserCopyWith(_AppUser value, $Res Function(_AppUser) then) =
      __$AppUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uid,
      String email,
      String photoUrl,
      String displayName,
      DateTime lastSeen,
      bool isAdmin});
}

class __$AppUserCopyWithImpl<$Res> extends _$AppUserCopyWithImpl<$Res>
    implements _$AppUserCopyWith<$Res> {
  __$AppUserCopyWithImpl(_AppUser _value, $Res Function(_AppUser) _then)
      : super(_value, (v) => _then(v as _AppUser));

  @override
  _AppUser get _value => super._value as _AppUser;

  @override
  $Res call({
    Object uid = freezed,
    Object email = freezed,
    Object photoUrl = freezed,
    Object displayName = freezed,
    Object lastSeen = freezed,
    Object isAdmin = freezed,
  }) {
    return _then(_AppUser(
      uid: uid == freezed ? _value.uid : uid as String,
      email: email == freezed ? _value.email : email as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      lastSeen: lastSeen == freezed ? _value.lastSeen : lastSeen as DateTime,
      isAdmin: isAdmin == freezed ? _value.isAdmin : isAdmin as bool,
    ));
  }
}

class _$_AppUser with DiagnosticableTreeMixin implements _AppUser {
  const _$_AppUser(
      {@required this.uid,
      @required this.email,
      @required this.photoUrl,
      @required this.displayName,
      @required this.lastSeen,
      @required this.isAdmin})
      : assert(uid != null),
        assert(email != null),
        assert(photoUrl != null),
        assert(displayName != null),
        assert(lastSeen != null),
        assert(isAdmin != null);

  @override
  final String uid;
  @override
  final String email;
  @override
  final String photoUrl;
  @override
  final String displayName;
  @override
  final DateTime lastSeen;
  @override
  final bool isAdmin;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppUser(uid: $uid, email: $email, photoUrl: $photoUrl, displayName: $displayName, lastSeen: $lastSeen, isAdmin: $isAdmin)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppUser'))
      ..add(DiagnosticsProperty('uid', uid))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('photoUrl', photoUrl))
      ..add(DiagnosticsProperty('displayName', displayName))
      ..add(DiagnosticsProperty('lastSeen', lastSeen))
      ..add(DiagnosticsProperty('isAdmin', isAdmin));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppUser &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.lastSeen, lastSeen) ||
                const DeepCollectionEquality()
                    .equals(other.lastSeen, lastSeen)) &&
            (identical(other.isAdmin, isAdmin) ||
                const DeepCollectionEquality().equals(other.isAdmin, isAdmin)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(lastSeen) ^
      const DeepCollectionEquality().hash(isAdmin);

  @override
  _$AppUserCopyWith<_AppUser> get copyWith =>
      __$AppUserCopyWithImpl<_AppUser>(this, _$identity);
}

abstract class _AppUser implements AppUser {
  const factory _AppUser(
      {@required String uid,
      @required String email,
      @required String photoUrl,
      @required String displayName,
      @required DateTime lastSeen,
      @required bool isAdmin}) = _$_AppUser;

  @override
  String get uid;
  @override
  String get email;
  @override
  String get photoUrl;
  @override
  String get displayName;
  @override
  DateTime get lastSeen;
  @override
  bool get isAdmin;
  @override
  _$AppUserCopyWith<_AppUser> get copyWith;
}
