import 'dart:async';

import 'package:app_pym/data/models/firebase_auth/app_user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart' show SwitchMapExtension;

abstract class FirebaseAuthDataSource {
  /// Receive a stream of [AppUserModel] for each change in data if logged in.
  ///
  /// Receive [null] if not logged in.
  Stream<AppUserModel> get profile;

  Future<void> forgotPassword(String email);

  Future<void> sendEmailVerification();

  /// Add user data to database (merge enabled)
  Future<void> setUserData(AppUserModel map);

  /// Tries to sign in a user with the given email address and password.
  ///
  /// If successful, it also signs the user in into the app and updates
  /// the [profile] stream.
  ///
  /// **Important**: You must enable Email & Password accounts in the Auth
  /// section of the Firebase console before being able to use them.
  ///
  /// Errors:
  ///
  ///  * `ERROR_INVALID_EMAIL` - If the [email] address is malformed.
  ///  * `ERROR_WRONG_PASSWORD` - If the [password] is wrong.
  ///  * `ERROR_USER_NOT_FOUND` - If there is no user corresponding to the given [email] address, or if the user has been deleted.
  ///  * `ERROR_USER_DISABLED` - If the user has been disabled (for example, in the Firebase console)
  ///  * `ERROR_TOO_MANY_REQUESTS` - If there was too many attempts to sign in as this user.
  ///  * `ERROR_OPERATION_NOT_ALLOWED` - Indicates that Email & Password accounts are not enabled.
  Future<AuthResult> signIn(String email, String password);
  Future<void> signOut();

  /// Tries to create a new user account with the given email address and password.
  ///
  /// If successful, it also signs the user in into the app and updates
  /// the [profile] stream.
  ///
  /// Errors:
  ///
  ///  * `ERROR_WEAK_PASSWORD` - If the password is not strong enough.
  ///  * `ERROR_INVALID_EMAIL` - If the email address is malformed.
  ///  * `ERROR_EMAIL_ALREADY_IN_USE` - If the email is already in use by a different account.
  Future<AuthResult> signUp(String email, String password);
}

@RegisterAs(FirebaseAuthDataSource)
@prod
@lazySingleton
@injectable
class FirebaseAuthDataSourceImpl implements FirebaseAuthDataSource {
  final FirebaseAuth auth;
  final Firestore db;

  FirebaseAuthDataSourceImpl({
    @required this.auth,
    @required this.db,
  });

  @override
  Stream<AppUserModel> get profile =>
      auth.onAuthStateChanged.switchMap((FirebaseUser user) {
        if (user != null) {
          return db
              .collection('users')
              .document(user.uid)
              .snapshots()
              .map((snap) => AppUserModel.fromJson(snap.data));
        } else {
          return Stream<AppUserModel>.value(null);
        }
      });

  @override
  Future<void> forgotPassword(String email) =>
      auth.sendPasswordResetEmail(email: email);

  @override
  Future<void> sendEmailVerification() async {
    await (await auth.currentUser())?.reload();
    final user = await auth.currentUser();
    if (user != null) {
      if (!user.isEmailVerified) {
        await user.sendEmailVerification();
        print("VERIFICATION EMAIL SENT");
      } else {
        await _updateUserData(user);
      }
    }
  }

  @override
  Future<void> setUserData(AppUserModel appUser) {
    final DocumentReference ref = db.collection('users').document(appUser.uid);

    return ref.setData(appUser.toJson(), merge: true);
  }

  @override
  Future<AuthResult> signIn(String email, String password) async {
    final AuthResult result = await auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    await _updateUserData(result.user);
    return result;
  }

  @override
  Future<void> signOut() => auth.signOut();

  @override
  Future<AuthResult> signUp(String email, String password) async {
    final result = await auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    if (result.user != null) {
      await _initializeUserData(result.user);
      await result.user.sendEmailVerification();
    }
    return result;
  }

  Future<void> _initializeUserData(FirebaseUser user) async {
    final DocumentReference ref = db.collection('users').document(user.uid);

    return ref.setData(<String, dynamic>{
      'uid': user.uid,
      'email': user.email,
      'photoUrl': user.photoUrl,
      'displayName': user.displayName,
      'lastSeen': DateTime.now(),
      'isEmailVerified': user.isEmailVerified,
      'isAdmin': false,
    });
  }

  Future<void> _updateUserData(FirebaseUser user) async {
    final DocumentReference ref = db.collection('users').document(user.uid);

    return ref.setData(<String, dynamic>{
      'uid': user.uid,
      'email': user.email,
      'photoUrl': user.photoUrl,
      'displayName': user.displayName,
      'isEmailVerified': user.isEmailVerified,
      'lastSeen': DateTime.now(),
    }, merge: true);
  }
}
