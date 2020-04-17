import 'package:app_pym/domain/usecases/services/fetch_categories.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@RegisterAs(FetchServiceCategories)
@injectable
class MockFetchServiceCategories extends Mock
    implements FetchServiceCategories {}
