import 'package:app_pym/domain/usecases/services/fetch_service_categories.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@Injectable(as: FetchServiceCategories)
class MockFetchServiceCategories extends Mock
    implements FetchServiceCategories {}
