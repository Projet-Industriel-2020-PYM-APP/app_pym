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
    is_email_verified: true,
    token: "token",
  );
  const AppUser entity = AppUser(
    id: 0,
    email: "email",
    username: "username",
    password: "password",
    role: "role",
    is_email_verified: true,
    token: "token",
  );
  group('toModel', () {
    test(
      'should return a valid model',
      () async {
        // act
        final result = entity.toModel();
        // assert
        expect(result, equals(model));
      },
    );
  });
}
