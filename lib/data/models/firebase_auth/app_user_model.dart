import 'package:app_pym/domain/entities/firebase_auth/app_user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_user_model.g.dart';
part 'app_user_model.freezed.dart';

@freezed
abstract class AppUserModel with _$AppUserModel {
  const factory AppUserModel({
    @required String uid,
    @required String email,
    @required String photoUrl,
    @required String displayName,
    @required @JsonKey(fromJson: _fromJson, toJson: _toJson) DateTime lastSeen,
    @required bool isAdmin,
  }) = _AppUserModel;

  factory AppUserModel.fromJson(Map<String, dynamic> json) =>
      _$AppUserModelFromJson(json);
}

DateTime _fromJson(Timestamp timestamp) => timestamp.toDate();
Timestamp _toJson(DateTime date) => Timestamp.fromDate(date);

extension AppUserModelX on AppUserModel {
  AppUser toEntity() {
    return AppUser(
      uid: this.uid,
      email: this.email,
      photoUrl: this.photoUrl,
      displayName: this.displayName,
      lastSeen: this.lastSeen,
      isAdmin: this.isAdmin,
    );
  }
}
