import 'package:app_pym/domain/usecases/contacts/fetch_contact_type_categories.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@RegisterAs(FetchContactTypeCategories)
@injectable
class MockFetchContactCategories extends Mock
    implements FetchContactTypeCategories {}
