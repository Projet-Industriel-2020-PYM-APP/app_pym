// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppUserModel _$_$_AppUserModelFromJson(Map<String, dynamic> json) {
  return _$_AppUserModel(
    uid: json['uid'] as String,
    email: json['email'] as String,
    photoUrl: json['photoUrl'] as String,
    displayName: json['displayName'] as String,
    lastSeen: _fromJson(json['lastSeen'] as Timestamp),
    isEmailVerified: json['isEmailVerified'] as bool,
    isAdmin: json['isAdmin'] as bool,
  );
}

Map<String, dynamic> _$_$_AppUserModelToJson(_$_AppUserModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'photoUrl': instance.photoUrl,
      'displayName': instance.displayName,
      'lastSeen': _toJson(instance.lastSeen),
      'isEmailVerified': instance.isEmailVerified,
      'isAdmin': instance.isAdmin,
    };
