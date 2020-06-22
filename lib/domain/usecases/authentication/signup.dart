import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/data/services/authentication_service.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
class AuthSignUp extends Usecase<Future<void>, SignUpCredentials> {
  final AuthenticationService service;

  const AuthSignUp(this.service);

  @override
  Future<void> call(SignUpCredentials credentials) {
    // No error handling, error will be displayed through BLoC
    return service.signUp(credentials.email, credentials.password);
  }
}

class SignUpCredentials {
  final String email;
  final String password;

  const SignUpCredentials(this.email, this.password);
}
