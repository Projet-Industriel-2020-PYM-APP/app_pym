import 'package:app_pym/domain/usecases/services/fetch_services_of_categorie.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@RegisterAs(FetchServicesOfCategorie)
@injectable
class MockFetchServicesOfCategorie extends Mock
    implements FetchServicesOfCategorie {}
