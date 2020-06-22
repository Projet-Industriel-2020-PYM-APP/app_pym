import 'package:app_pym/data/services/authentication_service.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@LazySingleton(as: AuthenticationService)
class MockAuthenticationService extends Mock implements AuthenticationService {}
