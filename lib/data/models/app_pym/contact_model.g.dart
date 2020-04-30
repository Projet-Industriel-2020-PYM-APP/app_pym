// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContactModel _$_$_ContactModelFromJson(Map<String, dynamic> json) {
  return _$_ContactModel(
    id: json['id'] as String,
    html_url: json['html_url'] as String,
    address: json['address'] as String,
    name: json['name'] as String,
    email: json['email'] as String,
    telephone: json['telephone'] as String,
    user_id: json['user_id'] as String,
  );
}

Map<String, dynamic> _$_$_ContactModelToJson(_$_ContactModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'html_url': instance.html_url,
      'address': instance.address,
      'name': instance.name,
      'email': instance.email,
      'telephone': instance.telephone,
      'user_id': instance.user_id,
    };
