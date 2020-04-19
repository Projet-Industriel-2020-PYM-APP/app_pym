import 'package:app_pym/domain/entities/app_pym/contact_type.dart';
import 'package:app_pym/domain/entities/app_pym/service.dart';
import 'package:app_pym/domain/repositories/app_pym/categorie_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@RegisterAs(CategorieRepository)
@injectable
class MockServiceCategorieRepository extends Mock
    implements CategorieRepository<Service> {}

@test
@RegisterAs(CategorieRepository)
@injectable
class MockContactCategorieRepository extends Mock
    implements CategorieRepository<ContactType> {}
