import 'package:app_pym/domain/repositories/app_pym/post_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@injectable
@RegisterAs(PostRepository)
class MockPostRepository extends Mock implements PostRepository {}
