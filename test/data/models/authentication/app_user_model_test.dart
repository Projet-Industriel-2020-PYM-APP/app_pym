import 'package:app_pym/data/models/authentication/app_user_model.dart';
import 'package:app_pym/domain/entities/authentication/app_user.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const AppUserModel model = AppUserModel(
    id: 0,
    email: "email",
    username: "username",
    password: "password",
    role: "role",
    isEmailVerified: true,
    token: "token",
  );
  const AppUser entity = AppUser(
    id: 0,
    email: "email",
    username: "username",
    password: "password",
    role: "role",
    isEmailVerified: true,
    token: "token",
  );
  group('toEntity', () {
    test(
      'should return a valid entity',
      () async {
        // act
        final result = model.toEntity();
        // assert
        expect(result, equals(entity));
      },
    );
  });
}
