import 'package:app_pym/data/datasources/blogger_local_data_source.dart';
import 'package:app_pym/data/datasources/blogger_remote_data_source.dart';
import 'package:app_pym/data/models/blogger/post_model.dart';
import 'package:app_pym/data/repositories/blogger/post_repository_impl.dart';
import 'package:app_pym/domain/entities/blogger/post.dart';
import 'package:app_pym/domain/repositories/blogger/post_repository.dart';
import 'package:connectivity/connectivity.dart';
import 'package:app_pym/injection_container.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' show Environment;
import 'package:mockito/mockito.dart';
import 'package:app_pym/core/error/exceptions.dart';
import 'package:app_pym/core/network/network_info.dart';

void main() {
  PostRepository repository;
  BloggerRemoteDataSource mockRemoteDataSource;
  BloggerLocalDataSource mockLocalDataSource;
  NetworkInfo mockNetworkInfo;

  init(env: Environment.test);

  setUp(() {
    mockRemoteDataSource = sl<BloggerRemoteDataSource>();
    mockLocalDataSource = sl<BloggerLocalDataSource>();
    mockNetworkInfo = sl<NetworkInfo>();
    repository = PostRepositoryImpl(
      remoteDataSource: mockRemoteDataSource,
      localDataSource: mockLocalDataSource,
      networkInfo: mockNetworkInfo,
    );
  });

  void runTestsOnline(Function body) {
    group('device is online', () {
      setUp(() {
        when(mockNetworkInfo.result)
            .thenAnswer((_) async => ConnectivityResult.wifi);
      });

      body();
    });
  }

  void runTestsOffline(Function body) {
    group('device is offline', () {
      setUp(() {
        when(mockNetworkInfo.result)
            .thenAnswer((_) async => ConnectivityResult.none);
      });

      body();
    });
  }

  group('getPosts', () {
    final DateTime tDateTime = DateTime.parse("1970-01-01T00:00:00Z");
    final tPost = Post(
      content: "content",
      id: 'id',
      published: tDateTime,
      title: 'title',
      updated: tDateTime,
      url: 'url',
    );
    final tListPosts = [tPost];
    final tPostModel = PostModel(
      content: "content",
      id: 'id',
      published: tDateTime,
      title: 'title',
      updated: tDateTime,
      url: 'url',
    );
    final tListPostModels = [tPostModel];
    test(
      'should check if the device is online',
      () async {
        // arrange
        when(mockNetworkInfo.result)
            .thenAnswer((_) async => ConnectivityResult.wifi);
        when(mockRemoteDataSource.getPosts())
            .thenAnswer((_) async => tListPostModels);
        // act
        await repository.getPosts();
        // assert
        verify(mockNetworkInfo.result);
      },
    );

    runTestsOnline(() {
      test(
        'should return remote data when the call to remote data source is successful',
        () async {
          // arrange
          when(mockRemoteDataSource.getPosts())
              .thenAnswer((_) async => tListPostModels);
          // act
          final result = await repository.getPosts();
          // assert
          verify(mockRemoteDataSource.getPosts());
          expect(result, equals(tListPosts));
        },
      );

      test(
        'should cache the data locally when the call to remote data source is successful',
        () async {
          // arrange
          when(mockRemoteDataSource.getPosts())
              .thenAnswer((_) async => tListPostModels);
          // act
          await repository.getPosts();
          // assert
          verify(mockRemoteDataSource.getPosts());
          verify(mockLocalDataSource.cachePosts(tListPostModels));
        },
      );

      test(
        'should return server failure when the call to remote data source is unsuccessful',
        () async {
          // arrange
          when(mockRemoteDataSource.getPosts()).thenThrow(ServerException());
          // act
          final call = repository.getPosts;
          try {
            await call();
            fail("exception not thrown");
          } catch (e) {
            expect(e, isInstanceOf<ServerException>());
          }
        },
      );
    });

    runTestsOffline(() {
      test(
        'should return last locally cached data when the cached data is present',
        () async {
          // arrange
          when(mockLocalDataSource.getPosts())
              .thenAnswer((_) async => tListPostModels);
          // act
          final result = await repository.getPosts();
          // assert
          verifyZeroInteractions(mockRemoteDataSource);
          verify(mockLocalDataSource.getPosts());
          expect(result, equals(tListPosts));
        },
      );

      test(
        'should return CacheFailure when there is no cached data present',
        () async {
          // arrange
          when(mockLocalDataSource.getPosts()).thenThrow(CacheException());
          // act
          final call = repository.getPosts;
          // assert
          try {
            await call();
            fail("exception not thrown");
          } catch (e) {
            expect(e, isInstanceOf<CacheException>());
          }
        },
      );
    });
  });
}
