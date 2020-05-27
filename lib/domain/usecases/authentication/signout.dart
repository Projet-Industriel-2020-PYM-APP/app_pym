import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/data/services/authentication_service.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
class AuthSignOut extends Usecase<void, NoParams> {
  final AuthenticationService service;

  const AuthSignOut(this.service);

  @override
  void call(NoParams noParams) {
    return service.signOut();
  }
}
