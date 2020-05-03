import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/app_pym/post.dart';
import 'package:app_pym/domain/repositories/app_pym/post_repository.dart';
import 'package:app_pym/domain/usecases/fil_actualite/get_posts.dart';
import 'package:app_pym/injection_container.dart';
import 'package:injectable/injectable.dart' show Environment;
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  GetPosts usecase;
  PostRepository mockRepository;

  init(env: Environment.test);

  setUp(() {
    mockRepository = sl<PostRepository>();
    usecase = GetPosts(mockRepository);
  });

  final DateTime tDateTime = DateTime.parse("1970-01-01T00:00:00.000Z");
  final tPost = Post(
    content: 'content',
    id: 0,
    published: tDateTime,
    title: 'title',
    updated: tDateTime,
    url: 'url',
  );

  test(
    'should get user from the repository',
    () async {
      // arrange
      when(mockRepository.fetchAll()).thenAnswer((_) async => [tPost]);
      // act
      final result = await usecase(const NoParams());
      // assert
      expect(result, [tPost]);
      verify(mockRepository.fetchAll());
      verifyNoMoreInteractions(mockRepository);
    },
  );
}
