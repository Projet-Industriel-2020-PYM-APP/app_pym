import 'package:app_pym/domain/usecases/contacts/fetch_contact_types_of_categorie.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@RegisterAs(FetchContactTypesOfCategorie)
@injectable
class MockFetchContactTypesOfCategorie extends Mock
    implements FetchContactTypesOfCategorie {}
