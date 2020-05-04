import 'package:app_pym/domain/repositories/app_pym/contact_categorie_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@RegisterAs(ContactCategorieRepository)
@injectable
class MockContactCategorieRepository extends Mock
    implements ContactCategorieRepository {}
