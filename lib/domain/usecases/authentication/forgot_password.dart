import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/data/services/authentication_service.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
class ForgotPassword extends Usecase<Future<void>, String> {
  final AuthenticationService service;

  const ForgotPassword(this.service);

  @override
  Future<void> call(String email) {
    return service.forgotPassword(email);
  }
}
