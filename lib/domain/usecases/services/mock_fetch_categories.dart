import 'package:app_pym/domain/usecases/services/fetch_categories.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@RegisterAs(FetchCategories)
@injectable
class MockFetchCategories extends Mock implements FetchCategories {}
