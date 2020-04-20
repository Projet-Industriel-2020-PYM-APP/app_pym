import 'package:app_pym/core/utils/firestore_utils.dart';
import 'package:app_pym/domain/entities/firebase_auth/app_user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'app_user_model.g.dart';
part 'app_user_model.freezed.dart';

@freezed
abstract class AppUserModel with _$AppUserModel {
  const factory AppUserModel({
    @required String uid,
    @nullable @required String email,
    @nullable @required String photoUrl,
    @nullable @required String displayName,
    @nullable
    @required
    @JsonKey(fromJson: TimestampSerializer.toDateTime, toJson: TimestampSerializer.fromDateTime)
        DateTime lastSeen,
    @nullable @required bool isEmailVerified,
    @required bool isAdmin,
  }) = _AppUserModel;

  factory AppUserModel.fromJson(Map<String, dynamic> json) =>
      _$AppUserModelFromJson(json);
}

extension AppUserModelX on AppUserModel {
  AppUser toEntity() {
    return AppUser(
      uid: this.uid,
      email: this?.email,
      photoUrl: this?.photoUrl,
      displayName: this?.displayName,
      lastSeen: this?.lastSeen,
      isEmailVerified: this?.isEmailVerified,
      isAdmin: this.isAdmin,
    );
  }
}
