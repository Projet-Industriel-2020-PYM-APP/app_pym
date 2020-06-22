import 'package:app_pym/domain/usecases/cartographie/load_page_and_place_batiments.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@Injectable(as: LoadPageAndPlaceBatiments)
class MockLoadPageAndPlaceBatiment extends Mock
    implements LoadPageAndPlaceBatiments {}
