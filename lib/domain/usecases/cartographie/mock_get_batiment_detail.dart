import 'package:app_pym/domain/usecases/cartographie/get_batiment_detail.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@Injectable(as: GetBatimentDetail)
class MockGetBatimentDetail extends Mock implements GetBatimentDetail {}
