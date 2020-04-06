import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

import 'entreprise_mapper.dart';

@test
@injectable
@RegisterAs(EntrepriseMapper)
class MockEntrepriseMapper extends Mock implements EntrepriseMapper {}
