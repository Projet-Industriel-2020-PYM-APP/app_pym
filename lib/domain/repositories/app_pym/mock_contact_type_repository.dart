import 'package:app_pym/domain/repositories/app_pym/contact_type_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@RegisterAs(ContactTypeRepository)
@injectable
class MockContactTypeRepository extends Mock implements ContactTypeRepository {}
