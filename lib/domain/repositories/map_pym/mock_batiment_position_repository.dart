import 'package:app_pym/domain/repositories/map_pym/batiment_position_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@injectable
@RegisterAs(BatimentPositionRepository)
class MockBatimentPositionRepository extends Mock
    implements BatimentPositionRepository {}
