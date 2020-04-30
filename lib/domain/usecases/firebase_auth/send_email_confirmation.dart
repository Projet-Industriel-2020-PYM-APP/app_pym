import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/data/datasources/firebase_auth_data_source.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class SendEmailConfirmation extends Usecase<Future<void>, NoParams> {
  final FirebaseAuthDataSource dataSource;

  const SendEmailConfirmation(this.dataSource);

  @override
  Future<void> call(NoParams noParams) {
    return dataSource.sendEmailVerification();
  }
}
