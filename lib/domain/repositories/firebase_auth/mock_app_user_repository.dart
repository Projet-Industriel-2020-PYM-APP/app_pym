import 'package:app_pym/domain/repositories/firebase_auth/app_user_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@RegisterAs(AppUserRepository)
@injectable
class MockAppUserRepository extends Mock implements AppUserRepository {}
