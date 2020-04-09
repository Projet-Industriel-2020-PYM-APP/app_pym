import 'package:app_pym/domain/usecases/cartographie/get_entreprises_of_batiment.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@injectable
@RegisterAs(GetEntreprisesOfBatiment)
class MockGetEntreprisesOfBatiment extends Mock
    implements GetEntreprisesOfBatiment {}
