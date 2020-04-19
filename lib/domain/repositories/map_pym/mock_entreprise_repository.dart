import 'package:app_pym/domain/repositories/map_pym/entreprise_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@injectable
@RegisterAs(EntrepriseRepository)
class MockEntrepriseRepository extends Mock implements EntrepriseRepository {}
