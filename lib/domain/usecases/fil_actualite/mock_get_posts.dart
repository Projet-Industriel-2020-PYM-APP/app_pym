import 'package:app_pym/domain/usecases/fil_actualite/get_posts.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@RegisterAs(GetPosts)
@injectable
class MockGetPosts extends Mock implements GetPosts {}
