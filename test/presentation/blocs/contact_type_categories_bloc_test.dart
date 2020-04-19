import 'package:app_pym/core/error/exceptions.dart';
import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/app_pym/action.dart';
import 'package:app_pym/domain/entities/app_pym/categorie.dart';
import 'package:app_pym/domain/usecases/contacts/fetch_contact_type_categories.dart';
import 'package:app_pym/injection_container.dart';
import 'package:app_pym/presentation/blocs/contacts/contact_type_categories/contact_type_categories_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' show Environment;
import 'package:mockito/mockito.dart';

void main() {
  ContactTypeCategoriesBloc bloc;
  FetchContactTypeCategories mockFetchContactCategories;

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
    mockFetchContactCategories = sl<FetchContactTypeCategories>();
    bloc = ContactTypeCategoriesBloc(mockFetchContactCategories);
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
        when(mockFetchContactCategories(any))
            .thenAnswer((_) => Stream.fromIterable([
                  [tCategorie]
                ]));
        // act
        bloc.add(const FetchContactTypeCategoriesEvent());
        await untilCalled(mockFetchContactCategories(any));
        // assert
        verify(mockFetchContactCategories(const NoParams()));
      },
    );

    test(
      'should emit [CategoriesInitial, CategoriesLoading, CategoriesLoaded] when data is gotten successfully',
      () async {
        // arrange
        when(mockFetchContactCategories(any))
            .thenAnswer((_) => Stream.fromIterable([
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
        bloc.add(const FetchContactTypeCategoriesEvent());
        await future;
      },
    );

    test(
      'should emit [CategoriesInitial, CategoriesLoading, CategoriesError] when getting data fails from Server',
      () async {
        // arrange
        final tException = ServerException('ServerException');
        when(mockFetchContactCategories(any)).thenThrow(tException);
        // assert later
        final expected = [
          const CategoriesInitial(),
          const CategoriesLoading(),
          CategoriesError(tException.toString()),
        ];
        final Future<void> future = expectLater(bloc, emitsInOrder(expected));
        // act
        bloc.add(const FetchContactTypeCategoriesEvent());
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
        bloc.add(const RefreshContactTypeCategoriesEvent([tCategorie]));
        await future;
      },
    );
  });
}
