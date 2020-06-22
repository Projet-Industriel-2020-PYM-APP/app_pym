import 'package:app_pym/core/error/exceptions.dart';
import 'package:app_pym/data/services/authentication_service.dart';

class AuthenticationServiceDevImpl implements AuthenticationService {
  @override
  String token;

  @override
  Future<void> forgotPassword(String email) async {
    print('[dev] AuthenticationService.forgotPassword(${email}) is called !');
    return;
  }

  @override
  Future<void> sendEmailVerification() async {
    print('[dev] AuthenticationService.sendEmailVerification() is called !');
    return;
  }

  @override
  Future<String> signIn(String email, String password) async {
    print('[dev] AuthenticationService.signIn(${email}, ***) is called !');
    // Normalement on devrait prendre la DB du map_remote_data_source_dev_impl.
    if (email == 'example@example.com' && password == 'pass1234') {
      return token = 'devToken';
    } else {
      throw ServerException('401 Unauthorized');
    }
  }

  @override
  void signOut() {
    token = null;
  }

  @override
  Future<String> signUp(String email, String password) async {
    print('[dev] AuthenticationService.signUp(${email}, ***) is called !');
    if (email == 'example@example.com' && password == 'pass1234') {
      return token = 'devToken';
    } else {
      throw ServerException('401 Unauthorized');
    }
  }
}
