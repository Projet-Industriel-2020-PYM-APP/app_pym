import 'package:app_pym/domain/repositories/authentication/app_user_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@Injectable(as: AppUserRepository)
class MockAppUserRepository extends Mock implements AppUserRepository {}
