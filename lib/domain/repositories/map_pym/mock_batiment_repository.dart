import 'package:app_pym/domain/repositories/map_pym/batiment_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@Injectable(as: BatimentRepository)
class MockBatimentRepository extends Mock implements BatimentRepository {}
