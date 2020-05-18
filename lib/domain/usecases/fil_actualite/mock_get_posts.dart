import 'package:app_pym/domain/usecases/fil_actualite/get_posts.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@Injectable(as: GetPosts)
class MockGetPosts extends Mock implements GetPosts {}
