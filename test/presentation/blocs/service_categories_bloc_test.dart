import 'dart:ui';

import 'package:app_pym/core/error/exceptions.dart';
import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/app_pym/action.dart';
import 'package:app_pym/domain/entities/app_pym/service_categorie.dart';
import 'package:app_pym/domain/usecases/services/fetch_service_categories.dart';
import 'package:app_pym/injection_container.dart';
import 'package:app_pym/presentation/blocs/services/service_categories/service_categories_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' show Environment;
import 'package:mockito/mockito.dart';

void main() {
  ServiceCategoriesBloc bloc;
  FetchServiceCategories mockFetchServiceCategories;

  init(env: Environment.test);

  const tAction = Action(
    html_url: "html_url",
    name: "name",
  );
  const tCategorie = ServiceCategorie(
    id: 1,
    action: tAction,
    name: "name",
    img_url: "img_url",
    primary_color: Color(0xffffffff),
  );

  setUp(() {
    mockFetchServiceCategories = sl<FetchServiceCategories>();
    bloc = ServiceCategoriesBloc(mockFetchServiceCategories);
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
        when(mockFetchServiceCategories(any))
            .thenAnswer((_) async => [tCategorie]);
        // act
        bloc.add(const FetchServiceCategoriesEvent());
        await untilCalled(mockFetchServiceCategories(any));
        // assert
        verify(mockFetchServiceCategories(const NoParams()));
      },
    );

    test(
      'should emit [CategoriesInitial, CategoriesLoading, CategoriesLoaded] when data is gotten successfully',
      () async {
        // arrange
        when(mockFetchServiceCategories(any))
            .thenAnswer((_) async => [tCategorie]);
        // assert later
        const expected = [
          CategoriesInitial(),
          CategoriesLoading(),
          CategoriesLoaded([tCategorie]),
        ];
        final Future<void> future = expectLater(bloc, emitsInOrder(expected));
        // act
        bloc.add(const FetchServiceCategoriesEvent());
        await future;
      },
    );

    test(
      'should emit [CategoriesInitial, CategoriesLoading, CategoriesError] when getting data fails from Server',
      () async {
        // arrange
        final tException = ServerException('ServerException');
        when(mockFetchServiceCategories(any)).thenThrow(tException);
        // assert later
        final expected = [
          const CategoriesInitial(),
          const CategoriesLoading(),
          CategoriesError(tException.toString()),
        ];
        final Future<void> future = expectLater(bloc, emitsInOrder(expected));
        // act
        bloc.add(const FetchServiceCategoriesEvent());
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
        bloc.add(const RefreshServiceCategoriesEvent([tCategorie]));
        await future;
      },
    );
  });
}
