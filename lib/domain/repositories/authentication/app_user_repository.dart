import 'package:app_pym/domain/entities/authentication/app_user.dart';

abstract class AppUserRepository {
  Future<AppUser> fetch();
}
