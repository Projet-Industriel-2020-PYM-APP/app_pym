import 'package:app_pym/core/error/exceptions.dart';
import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/app_pym/action.dart';
import 'package:app_pym/domain/entities/app_pym/categorie.dart';
import 'package:app_pym/domain/usecases/services/fetch_categories.dart';
import 'package:app_pym/injection_container.dart';
import 'package:app_pym/presentation/blocs/services/categories/categories_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' show Environment;
import 'package:mockito/mockito.dart';

void main() {
  CategoriesBloc bloc;
  FetchCategories mockFetchCategories;

  init(env: Environment.test);

  const tAction = Action(
    id: "1",
    html_url: "html_url",
    name: "name",
  );
  const tCategorie = Categorie(
    id: "1",
    action: tAction,
    name: "name",
  );

  setUp(() {
    mockFetchCategories = sl<FetchCategories>();
    bloc = CategoriesBloc(mockFetchCategories);
  });

  test('initialState should be CategoriesInitial', () {
    // assert
    expect(bloc.initialState, equals(const CategoriesInitial()));
  });

  group('FetchCategoriesEvent', () {
    test(
      'should get data from the concrete use case',
      () async {
        // arrange
        when(mockFetchCategories(any)).thenAnswer((_) => Stream.fromIterable([
              [tCategorie]
            ]));
        // act
        bloc.add(const FetchCategoriesEvent());
        await untilCalled(mockFetchCategories(any));
        // assert
        verify(mockFetchCategories(const NoParams()));
      },
    );

    test(
      'should emit [CategoriesInitial, CategoriesLoading, CategoriesLoaded] when data is gotten successfully',
      () async {
        // arrange
        when(mockFetchCategories(any)).thenAnswer((_) => Stream.fromIterable([
              [tCategorie]
            ]));
        // assert later
        const expected = [
          CategoriesInitial(),
          CategoriesLoading(),
          CategoriesLoaded([tCategorie]),
        ];
        final Future<void> future = expectLater(bloc, emitsInOrder(expected));
        // act
        bloc.add(const FetchCategoriesEvent());
        await future;
      },
    );

    test(
      'should emit [CategoriesInitial, CategoriesLoading, CategoriesError] when getting data fails from Server',
      () async {
        // arrange
        final tException = ServerException('ServerException');
        when(mockFetchCategories(any)).thenThrow(tException);
        // assert later
        final expected = [
          const CategoriesInitial(),
          const CategoriesLoading(),
          CategoriesError(message: tException.toString()),
        ];
        final Future<void> future = expectLater(bloc, emitsInOrder(expected));
        // act
        bloc.add(const FetchCategoriesEvent());
        await future;
      },
    );
  });

  group('RefreshCategoriesEvent', () {
    test(
      'should emit [CategoriesInitial, CategoriesLoaded]',
      () async {
        // assert later
        const expected = [
          CategoriesInitial(),
          CategoriesLoaded([tCategorie]),
        ];
        final Future<void> future = expectLater(bloc, emitsInOrder(expected));
        // act
        bloc.add(const RefreshCategoriesEvent([tCategorie]));
        await future;
      },
    );
  });
}
