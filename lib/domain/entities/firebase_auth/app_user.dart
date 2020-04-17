import 'package:app_pym/data/models/firebase_auth/app_user_model.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_user.freezed.dart';

@freezed
abstract class AppUser with _$AppUser {
  const factory AppUser({
    @required String uid,
    @nullable @required String email,
    @nullable @required String photoUrl,
    @nullable @required String displayName,
    @nullable @required DateTime lastSeen,
    @nullable @required bool isEmailVerified,
    @required bool isAdmin,
  }) = _AppUser;
}

extension AppUserX on AppUser {
  AppUserModel toModel() {
    return AppUserModel(
      uid: this.uid,
      email: this.email,
      photoUrl: this.photoUrl,
      displayName: this.displayName,
      lastSeen: this.lastSeen,
      isEmailVerified: this.isEmailVerified,
      isAdmin: this.isAdmin,
    );
  }
}
