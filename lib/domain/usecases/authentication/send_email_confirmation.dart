import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/data/services/authentication_service.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class SendEmailConfirmation extends Usecase<Future<void>, NoParams> {
  final AuthenticationService service;

  const SendEmailConfirmation(this.service);

  @override
  Future<void> call(NoParams noParams) {
    return service.sendEmailVerification();
  }
}
