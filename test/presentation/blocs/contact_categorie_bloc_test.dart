import 'package:app_pym/core/error/exceptions.dart';
import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/app_pym/action.dart';
import 'package:app_pym/domain/entities/app_pym/contact_categorie.dart';
import 'package:app_pym/domain/usecases/contacts/fetch_contact_categories.dart';
import 'package:app_pym/injection_container.dart';
import 'package:app_pym/presentation/blocs/contacts/contact_categories/contact_categories_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' show Environment;
import 'package:mockito/mockito.dart';

void main() {
  ContactCategoriesBloc bloc;
  FetchContactCategories mockFetchContactCategories;

  init(env: Environment.test);

  const tAction = Action(
    html_url: "html_url",
    name: "name",
  );
  const tContactTypeList = [
    ContactCategorie(
      id: 1,
      title: "title",
      subtitle: "subtitle",
      address: "address",
      img_url: "img_url",
      actions: [tAction],
      contact_id: 1,
    ),
    ContactCategorie(
      id: 2,
      title: "title",
      subtitle: "subtitle",
      address: "address",
      img_url: "img_url",
      actions: [tAction],
      contact_id: 1,
    ),
  ];

  setUp(() {
    mockFetchContactCategories = sl<FetchContactCategories>();
    bloc = ContactCategoriesBloc(mockFetchContactCategories);
  });

  test('initialState should be ContactCategoriesInitial', () {
    // assert
    expect(bloc.initialState, equals(const ContactCategoriesInitial()));
  });

  group('FetchContactCategoriesEvent', () {
    test(
      'should get data from the concrete use case',
      () async {
        // arrange
        when(mockFetchContactCategories(any))
            .thenAnswer((_) async => tContactTypeList);
        // act
        bloc.add(const FetchContactCategoriesEvent());
        await untilCalled(mockFetchContactCategories(any));
        // assert
        verify(mockFetchContactCategories(const NoParams()));
      },
    );

    test(
      'should emit [ContactCategoriesInitial, ContactCategoriesLoading, ContactCategoriesLoaded] when data is gotten successfully',
      () async {
        // arrange
        when(mockFetchContactCategories(any))
            .thenAnswer((_) async => tContactTypeList);
        // assert later
        const expected = [
          ContactCategoriesInitial(),
          ContactCategoriesLoading(),
          ContactCategoriesLoaded(tContactTypeList),
        ];
        final Future<void> future = expectLater(bloc, emitsInOrder(expected));
        // act
        bloc.add(const FetchContactCategoriesEvent());
        await future;
      },
    );

    test(
      'should emit [ContactCategoriesInitial, ContactCategoriesLoading, ContactCategoriesError] when getting data fails from Server',
      () async {
        // arrange
        final tException = ServerException('ServerException');
        when(mockFetchContactCategories(any)).thenThrow(tException);
        // assert later
        final expected = [
          const ContactCategoriesInitial(),
          const ContactCategoriesLoading(),
          ContactCategoriesError(tException.toString()),
        ];
        final Future<void> future = expectLater(bloc, emitsInOrder(expected));
        // act
        bloc.add(const FetchContactCategoriesEvent());
        await future;
      },
    );

    test(
      'should emit [ContactCategoriesInitial, ContactCategoriesLoading, ContactCategoriesError] when getting data fails from Cache',
      () async {
        // arrange
        final tException = CacheException('CacheException');
        when(mockFetchContactCategories(any)).thenThrow(tException);
        // assert later
        final expected = [
          const ContactCategoriesInitial(),
          const ContactCategoriesLoading(),
          ContactCategoriesError(tException.toString()),
        ];
        final Future<void> future = expectLater(bloc, emitsInOrder(expected));
        // act
        bloc.add(const FetchContactCategoriesEvent());
        await future;
      },
    );
  });

  group('RefreshContactCategoriesEvent', () {
    test(
      'should emit [ContactCategoriesInitial, ContactCategoriesLoaded]',
      () async {
        // assert later
        const expected = [
          ContactCategoriesInitial(),
          ContactCategoriesLoaded(tContactTypeList),
        ];
        final Future<void> future = expectLater(bloc, emitsInOrder(expected));
        // act
        bloc.add(const RefreshContactCategoriesEvent(tContactTypeList));
        await future;
      },
    );
  });
}
