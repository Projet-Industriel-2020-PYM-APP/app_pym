import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class AppUserModel extends Equatable {
  final String uid;
  final String email;
  final String photoUrl;
  final String displayName;
  final DateTime lastSeen;
  final bool isAdmin;

  const AppUserModel({
    this.uid,
    this.email,
    this.photoUrl,
    this.displayName,
    this.lastSeen,
    this.isAdmin,
  });

  factory AppUserModel.fromMap(Map<String, dynamic> map) {
    return AppUserModel(
      uid: map['uid'] as String,
      email: map['email'] as String,
      photoUrl: map['photoURL'] as String,
      displayName: map['displayName'] as String,
      lastSeen: (map['lastSeen'] as Timestamp)?.toDate(),
      isAdmin: map['isAdmin'] as bool,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uid': uid,
      'email': email,
      'photoUrl': photoUrl,
      'displayName': displayName,
      'lastSeen': lastSeen,
      'isAdmin': isAdmin,
    };
  }

  @override
  List<Object> get props => <Object>[
        this.uid,
        this.email,
        this.photoUrl,
        this.displayName,
        this.lastSeen,
        this.isAdmin,
      ];
}
