import 'package:app_pym/data/mappers/app_pym/service_mapper.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@RegisterAs(ServiceMapper)
@injectable
class MockServiceMapper extends Mock implements ServiceMapper {}
