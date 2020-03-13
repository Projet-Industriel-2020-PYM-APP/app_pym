import 'package:app_pym/domain/entities/github/user.dart';
import 'package:app_pym/domain/repositories/github/user_repository.dart';
import 'package:app_pym/domain/usecases/github/get_user.dart';
import 'package:app_pym/injection_container.dart';
import 'package:injectable/injectable.dart' show Environment;
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  GetGithubUser usecase;
  UserRepository mockUserRepository;

  init(env: Environment.test);

  setUp(() {
    mockUserRepository = sl<UserRepository>();
    usecase = GetGithubUser(mockUserRepository);
  });

  const tUser = 'Darkness4';
  final DateTime tDateTime = DateTime.parse("1970-01-01T00:00:00.000Z");
  final tGithubUser = GithubUser(
    login: 'login',
    id: 0,
    node_id: 'node_id',
    avatar_url: 'avatar_url',
    gravatar_id: 'gravatar_id',
    url: 'url',
    html_url: 'html_url',
    followers_url: 'followers_url',
    following_url: 'following_url',
    gists_url: 'gists_url',
    starred_url: 'starred_url',
    subscriptions_url: 'subscriptions_url',
    organizations_url: 'organizations_url',
    repos_url: 'repos_url',
    events_url: 'events_url',
    received_events_url: 'received_events_url',
    type: 'type',
    site_admin: false,
    name: 'name',
    company: 'company',
    blog: 'blog',
    location: 'location',
    email: 'email',
    hireable: false,
    bio: 'bio',
    public_repos: 0,
    public_gists: 0,
    followers: 0,
    following: 0,
    created_at: tDateTime,
    updated_at: tDateTime,
  );

  test(
    'should get user from the repository',
    () async {
      // arrange
      when(mockUserRepository.getUser(any))
          .thenAnswer((_) async => tGithubUser);
      // act
      final result = await usecase(tUser);
      // assert
      expect(result, tGithubUser);
      verify(mockUserRepository.getUser(tUser));
      verifyNoMoreInteractions(mockUserRepository);
    },
  );
}
