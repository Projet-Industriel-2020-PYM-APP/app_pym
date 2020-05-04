import 'package:app_pym/domain/repositories/app_pym/service_categorie_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@RegisterAs(ServiceCategorieRepository)
@injectable
class MockServiceCategorieRepository extends Mock
    implements ServiceCategorieRepository {}
