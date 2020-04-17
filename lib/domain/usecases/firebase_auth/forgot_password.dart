import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/data/datasources/firebase_auth_data_source.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class ForgotPassword extends Usecase<Future<void>, String> {
  final FirebaseAuthDataSource dataSource;

  const ForgotPassword(this.dataSource);

  @override
  Future<void> call(String email) {
    return dataSource.forgotPassword(email);
  }
}
