// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppUserModel _$_$_AppUserModelFromJson(Map<String, dynamic> json) {
  return _$_AppUserModel(
    id: json['id'] as int,
    email: json['email'] as String,
    username: json['username'] as String,
    password: json['password'] as String,
    role: json['role'] as String,
    is_email_verified: json['is_email_verified'] as bool,
    token: json['token'] as String,
  );
}

Map<String, dynamic> _$_$_AppUserModelToJson(_$_AppUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'username': instance.username,
      'password': instance.password,
      'role': instance.role,
      'is_email_verified': instance.is_email_verified,
      'token': instance.token,
    };
