import 'package:app_pym/data/models/firebase_auth/app_user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:app_pym/data/datasources/firebase_auth_data_source.dart';
import 'package:app_pym/domain/entities/firebase_auth/app_user.dart';
import 'package:app_pym/domain/repositories/firebase_auth/app_user_repository.dart';
import 'package:injectable/injectable.dart';

@prod
@RegisterAs(AppUserRepository)
@lazySingleton
@injectable
class AppUserRepositoryImpl implements AppUserRepository {
  final FirebaseAuthDataSource dataSource;

  const AppUserRepositoryImpl({
    @required this.dataSource,
  });
  @override
  Stream<AppUser> get profile =>
      dataSource.profile.map((user) => user?.toEntity());

  @override
  Future<void> setUserData(AppUser user) {
    return dataSource.setUserData(user.toModel());
  }

  @override
  Future<AuthResult> signIn(String email, String password) {
    return dataSource.signIn(email, password);
  }

  @override
  Future<void> signOut() {
    return dataSource.signOut();
  }

  @override
  Future<AuthResult> signUp(String email, String password) {
    return dataSource.signUp(email, password);
  }
}
