import 'package:app_pym/domain/repositories/app_pym/contact_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@RegisterAs(ContactRepository)
@injectable
class MockContactRepository extends Mock implements ContactRepository {}
