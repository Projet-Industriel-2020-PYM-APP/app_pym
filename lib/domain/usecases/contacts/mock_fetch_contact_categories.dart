import 'package:app_pym/domain/usecases/contacts/fetch_contact_categories.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@Injectable(as: FetchContactCategories)
class MockFetchContactCategories extends Mock
    implements FetchContactCategories {}
