import 'package:app_pym/data/mappers/app_pym/categorie_mapper.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@RegisterAs(CategorieMapper)
@injectable
class MockCategorieMapper extends Mock implements CategorieMapper {}
