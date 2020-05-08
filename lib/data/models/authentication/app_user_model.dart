import 'package:app_pym/domain/entities/authentication/app_user.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'app_user_model.g.dart';
part 'app_user_model.freezed.dart';

@freezed
abstract class AppUserModel with _$AppUserModel {
  const factory AppUserModel({
    @required int id,
    @nullable @required String email,
    @nullable @required String username,
    @nullable @required String password,
    @nullable @required String role,
    @nullable @required bool is_email_verified,
    @nullable @required String token,
  }) = _AppUserModel;

  factory AppUserModel.fromJson(Map<String, dynamic> json) =>
      _$AppUserModelFromJson(json);
}

extension AppUserModelX on AppUserModel {
  AppUser toEntity() {
    return AppUser(
      id: this.id,
      email: this.email,
      username: this.username,
      password: this.password,
      role: this.role,
      is_email_verified: this.is_email_verified,
      token: this.token,
    );
  }
}
