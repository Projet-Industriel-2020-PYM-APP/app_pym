import 'package:app_pym/data/models/authentication/app_user_model.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_user.freezed.dart';

@freezed
abstract class AppUser with _$AppUser {
  const factory AppUser({
    @required int id,
    @nullable @required String email,
    @nullable @required String username,
    @nullable @required String password,
    @nullable @required String role,
    @nullable @required bool isEmailVerified,
    @nullable @required String token,
  }) = _AppUser;
}

extension AppUserX on AppUser {
  AppUserModel toModel() {
    return AppUserModel(
      id: this.id,
      email: this.email,
      username: this.username,
      password: this.password,
      role: this.role,
      isEmailVerified: this.isEmailVerified,
      token: this.token,
    );
  }
}
