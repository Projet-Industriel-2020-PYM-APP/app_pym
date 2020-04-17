import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/blogger/post.dart';
import 'package:app_pym/domain/usecases/fil_actualite/get_posts.dart';
import 'package:app_pym/injection_container.dart';
import 'package:app_pym/presentation/blocs/fil_actualite/fil_actualite_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' show Environment;
import 'package:mockito/mockito.dart';
import 'package:app_pym/core/error/exceptions.dart';

void main() {
  FilActualiteBloc bloc;
  GetPosts mockUsecase;

  init(env: Environment.test);

  setUp(() {
    mockUsecase = sl<GetPosts>();

    bloc = FilActualiteBloc(mockUsecase);
  });

  test('initialState should be FilActualiteInitial', () {
    // assert
    expect(bloc.initialState, equals(const FilActualiteInitial()));
  });

  group('FetchPostsEvent', () {
    final DateTime tDateTime = DateTime.parse("1970-01-01T00:00:00.000Z");
    final tPost = Post(
      content: 'content',
      id: 'id',
      published: tDateTime,
      title: 'title',
      updated: tDateTime,
      url: 'url',
    );
    final tListPosts = <Post>[tPost];

    test(
      'should get data from the concrete use case',
      () async {
        // arrange
        when(mockUsecase(any)).thenAnswer((_) async => tListPosts);
        // act
        bloc.add(const FetchPostsEvent());
        await untilCalled(mockUsecase(any));
        // assert
        verify(mockUsecase(const NoParams()));
      },
    );

    test(
      'should emit [FilActualiteLoading, FilActualiteLoaded] when data is gotten successfully',
      () async {
        // arrange
        when(mockUsecase(any)).thenAnswer((_) async => tListPosts);
        // assert later
        final expected = [
          const FilActualiteInitial(),
          const FilActualiteLoading(),
          FilActualiteLoaded(tListPosts),
        ];
        final Future<void> future = expectLater(bloc, emitsInOrder(expected));
        // act
        bloc.add(const FetchPostsEvent());
        await future;
      },
    );

    test(
      'should emit [FilActualiteLoading, FilActualiteError] when getting data fails',
      () async {
        // arrange
        final tError = ServerException();
        when(mockUsecase(any)).thenThrow(tError);
        // assert later
        final expected = [
          const FilActualiteInitial(),
          const FilActualiteLoading(),
          FilActualiteError(tError),
        ];
        final Future<void> future = expectLater(bloc, emitsInOrder(expected));
        // act
        bloc.add(const FetchPostsEvent());
        await future;
      },
    );

    test(
      'should emit [FilActualiteLoading, FilActualiteError] with a proper message for the error when getting data fails',
      () async {
        // arrange
        final tError = CacheException();
        when(mockUsecase(any)).thenThrow(tError);
        // assert later
        final expected = [
          const FilActualiteInitial(),
          const FilActualiteLoading(),
          FilActualiteError(tError),
        ];
        final Future<void> future = expectLater(bloc, emitsInOrder(expected));
        // act
        bloc.add(const FetchPostsEvent());
        await future;
      },
    );
  });
}
