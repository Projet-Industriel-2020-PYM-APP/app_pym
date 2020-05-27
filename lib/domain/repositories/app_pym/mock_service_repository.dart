import 'package:app_pym/domain/repositories/app_pym/service_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@Injectable(as: ServiceRepository)
class MockServiceRepository extends Mock implements ServiceRepository {}
