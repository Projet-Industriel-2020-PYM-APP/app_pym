import 'package:app_pym/data/services/authentication_service.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@injectable
@lazySingleton
@RegisterAs(AuthenticationService)
class MockAuthenticationService extends Mock implements AuthenticationService {}
