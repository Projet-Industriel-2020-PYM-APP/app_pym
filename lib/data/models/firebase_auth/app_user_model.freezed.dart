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
      {@required
          String uid,
      @required
      @nullable
          String email,
      @required
      @nullable
          String photoUrl,
      @required
      @nullable
          String displayName,
      @required
      @nullable
      @JsonKey(fromJson: _fromJson, toJson: _toJson)
          DateTime lastSeen,
      @required
      @nullable
          bool isEmailVerified,
      @required
          bool isAdmin}) {
    return _AppUserModel(
      uid: uid,
      email: email,
      photoUrl: photoUrl,
      displayName: displayName,
      lastSeen: lastSeen,
      isEmailVerified: isEmailVerified,
      isAdmin: isAdmin,
    );
  }
}

// ignore: unused_element
const $AppUserModel = _$AppUserModelTearOff();

mixin _$AppUserModel {
  String get uid;
  @nullable
  String get email;
  @nullable
  String get photoUrl;
  @nullable
  String get displayName;
  @nullable
  @JsonKey(fromJson: _fromJson, toJson: _toJson)
  DateTime get lastSeen;
  @nullable
  bool get isEmailVerified;
  bool get isAdmin;

  Map<String, dynamic> toJson();
  $AppUserModelCopyWith<AppUserModel> get copyWith;
}

abstract class $AppUserModelCopyWith<$Res> {
  factory $AppUserModelCopyWith(
          AppUserModel value, $Res Function(AppUserModel) then) =
      _$AppUserModelCopyWithImpl<$Res>;
  $Res call(
      {String uid,
      @nullable
          String email,
      @nullable
          String photoUrl,
      @nullable
          String displayName,
      @nullable
      @JsonKey(fromJson: _fromJson, toJson: _toJson)
          DateTime lastSeen,
      @nullable
          bool isEmailVerified,
      bool isAdmin});
}

class _$AppUserModelCopyWithImpl<$Res> implements $AppUserModelCopyWith<$Res> {
  _$AppUserModelCopyWithImpl(this._value, this._then);

  final AppUserModel _value;
  // ignore: unused_field
  final $Res Function(AppUserModel) _then;

  @override
  $Res call({
    Object uid = freezed,
    Object email = freezed,
    Object photoUrl = freezed,
    Object displayName = freezed,
    Object lastSeen = freezed,
    Object isEmailVerified = freezed,
    Object isAdmin = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed ? _value.uid : uid as String,
      email: email == freezed ? _value.email : email as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      lastSeen: lastSeen == freezed ? _value.lastSeen : lastSeen as DateTime,
      isEmailVerified: isEmailVerified == freezed
          ? _value.isEmailVerified
          : isEmailVerified as bool,
      isAdmin: isAdmin == freezed ? _value.isAdmin : isAdmin as bool,
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
      {String uid,
      @nullable
          String email,
      @nullable
          String photoUrl,
      @nullable
          String displayName,
      @nullable
      @JsonKey(fromJson: _fromJson, toJson: _toJson)
          DateTime lastSeen,
      @nullable
          bool isEmailVerified,
      bool isAdmin});
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
    Object uid = freezed,
    Object email = freezed,
    Object photoUrl = freezed,
    Object displayName = freezed,
    Object lastSeen = freezed,
    Object isEmailVerified = freezed,
    Object isAdmin = freezed,
  }) {
    return _then(_AppUserModel(
      uid: uid == freezed ? _value.uid : uid as String,
      email: email == freezed ? _value.email : email as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      lastSeen: lastSeen == freezed ? _value.lastSeen : lastSeen as DateTime,
      isEmailVerified: isEmailVerified == freezed
          ? _value.isEmailVerified
          : isEmailVerified as bool,
      isAdmin: isAdmin == freezed ? _value.isAdmin : isAdmin as bool,
    ));
  }
}

@JsonSerializable()
class _$_AppUserModel implements _AppUserModel {
  const _$_AppUserModel(
      {@required
          this.uid,
      @required
      @nullable
          this.email,
      @required
      @nullable
          this.photoUrl,
      @required
      @nullable
          this.displayName,
      @required
      @nullable
      @JsonKey(fromJson: _fromJson, toJson: _toJson)
          this.lastSeen,
      @required
      @nullable
          this.isEmailVerified,
      @required
          this.isAdmin})
      : assert(uid != null),
        assert(isAdmin != null);

  factory _$_AppUserModel.fromJson(Map<String, dynamic> json) =>
      _$_$_AppUserModelFromJson(json);

  @override
  final String uid;
  @override
  @nullable
  final String email;
  @override
  @nullable
  final String photoUrl;
  @override
  @nullable
  final String displayName;
  @override
  @nullable
  @JsonKey(fromJson: _fromJson, toJson: _toJson)
  final DateTime lastSeen;
  @override
  @nullable
  final bool isEmailVerified;
  @override
  final bool isAdmin;

  @override
  String toString() {
    return 'AppUserModel(uid: $uid, email: $email, photoUrl: $photoUrl, displayName: $displayName, lastSeen: $lastSeen, isEmailVerified: $isEmailVerified, isAdmin: $isAdmin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppUserModel &&
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
            (identical(other.isEmailVerified, isEmailVerified) ||
                const DeepCollectionEquality()
                    .equals(other.isEmailVerified, isEmailVerified)) &&
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
      const DeepCollectionEquality().hash(isEmailVerified) ^
      const DeepCollectionEquality().hash(isAdmin);

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
      {@required
          String uid,
      @required
      @nullable
          String email,
      @required
      @nullable
          String photoUrl,
      @required
      @nullable
          String displayName,
      @required
      @nullable
      @JsonKey(fromJson: _fromJson, toJson: _toJson)
          DateTime lastSeen,
      @required
      @nullable
          bool isEmailVerified,
      @required
          bool isAdmin}) = _$_AppUserModel;

  factory _AppUserModel.fromJson(Map<String, dynamic> json) =
      _$_AppUserModel.fromJson;

  @override
  String get uid;
  @override
  @nullable
  String get email;
  @override
  @nullable
  String get photoUrl;
  @override
  @nullable
  String get displayName;
  @override
  @nullable
  @JsonKey(fromJson: _fromJson, toJson: _toJson)
  DateTime get lastSeen;
  @override
  @nullable
  bool get isEmailVerified;
  @override
  bool get isAdmin;
  @override
  _$AppUserModelCopyWith<_AppUserModel> get copyWith;
}
