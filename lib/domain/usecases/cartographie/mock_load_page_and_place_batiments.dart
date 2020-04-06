import 'package:app_pym/domain/usecases/cartographie/load_page_and_place_batiments.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@injectable
@RegisterAs(LoadPageAndPlaceBatiment)
class MockLoadPageAndPlaceBatiment extends Mock
    implements LoadPageAndPlaceBatiment {}
