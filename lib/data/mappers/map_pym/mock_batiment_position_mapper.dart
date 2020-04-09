import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

import 'batiment_position_mapper.dart';

@test
@injectable
@RegisterAs(BatimentPositionMapper)
class MockBatimentPositionMapper extends Mock
    implements BatimentPositionMapper {}
