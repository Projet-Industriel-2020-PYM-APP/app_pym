import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/data/services/authentication_service.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class AuthSignIn extends Usecase<Future<void>, SignInCredentials> {
  final AuthenticationService service;

  const AuthSignIn(this.service);

  @override
  Future<void> call(SignInCredentials credentials) {
    // No error handling, error will be displayed through BLoC
    return service.signIn(credentials.email, credentials.password);
  }
}

class SignInCredentials {
  final String email;
  final String password;

  const SignInCredentials(this.email, this.password);
}
