import 'package:app_pym/domain/repositories/app_pym/categorie_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@RegisterAs(CategorieRepository)
@injectable
class MockCategorieRepository extends Mock implements CategorieRepository {}
