import 'package:app_pym/data/models/firebase_auth/app_user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_user.freezed.dart';

@freezed
abstract class AppUser with _$AppUser {
  const factory AppUser({
    @required String uid,
    @required String email,
    @required String photoUrl,
    @required String displayName,
    @required DateTime lastSeen,
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
      isAdmin: this.isAdmin,
    );
  }
}
