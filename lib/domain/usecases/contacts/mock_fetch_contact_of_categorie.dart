import 'package:app_pym/domain/usecases/contacts/fetch_contact_of_categorie.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@Injectable(as: FetchContactOfCategorie)
class MockFetchContactOfCategorie extends Mock
    implements FetchContactOfCategorie {}
