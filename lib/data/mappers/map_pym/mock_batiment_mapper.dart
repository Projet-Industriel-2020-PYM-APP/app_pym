import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

import 'batiment_mapper.dart';

@test
@injectable
@RegisterAs(BatimentMapper)
class MockBatimentMapper extends Mock implements BatimentMapper {}
