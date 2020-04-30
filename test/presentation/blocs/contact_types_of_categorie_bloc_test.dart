import 'package:app_pym/core/error/exceptions.dart';
import 'package:app_pym/domain/entities/app_pym/action.dart';
import 'package:app_pym/domain/entities/app_pym/categorie.dart';
import 'package:app_pym/domain/entities/app_pym/contact_type.dart';
import 'package:app_pym/domain/usecases/contacts/fetch_contact_types_of_categorie.dart';
import 'package:app_pym/injection_container.dart';
import 'package:app_pym/presentation/blocs/contacts/contact_types_of_categorie/contact_types_of_categorie_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' show Environment;
import 'package:mockito/mockito.dart';

void main() {
  ContactTypesOfCategorieBloc bloc;
  FetchContactTypesOfCategorie mockFetchContactTypesOfCategorie;

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
  const tContactTypeList = [
    ContactType(
      id: "1",
      title: "title",
      categorie_ref: "1",
      subtitle: "subtitle",
      address: "address",
      img_url: "img_url",
      actions: [tAction],
    ),
    ContactType(
      categorie_ref: "2",
    ),
  ];

  setUp(() {
    mockFetchContactTypesOfCategorie = sl<FetchContactTypesOfCategorie>();
    bloc = ContactTypesOfCategorieBloc(mockFetchContactTypesOfCategorie);
  });

  test('initialState should be ContactTypesOfCategorieInitial', () {
    // assert
    expect(bloc.initialState, equals(const ContactTypesOfCategorieInitial()));
  });

  group('FetchContactTypesOfCategorieEvent', () {
    test(
      'should get data from the concrete use case',
      () async {
        // arrange
        when(mockFetchContactTypesOfCategorie(any))
            .thenAnswer((_) => Stream.fromIterable([tContactTypeList]));
        // act
        bloc.add(const FetchContactTypesOfCategorieEvent(tCategorie));
        await untilCalled(mockFetchContactTypesOfCategorie(any));
        // assert
        verify(mockFetchContactTypesOfCategorie(tCategorie));
      },
    );

    test(
      'should emit [ContactTypesOfCategorieInitial, ContactTypesOfCategorieLoading, ContactTypesOfCategorieLoaded] when data is gotten successfully',
      () async {
        // arrange
        when(mockFetchContactTypesOfCategorie(any))
            .thenAnswer((_) => Stream.fromIterable([tContactTypeList]));
        // assert later
        const expected = [
          ContactTypesOfCategorieInitial(),
          ContactTypesOfCategorieLoading(),
          ContactTypesOfCategorieLoaded(tContactTypeList),
        ];
        final Future<void> future = expectLater(bloc, emitsInOrder(expected));
        // act
        bloc.add(const FetchContactTypesOfCategorieEvent(tCategorie));
        await future;
      },
    );

    test(
      'should emit [ContactTypesOfCategorieInitial, ContactTypesOfCategorieLoading, ContactTypesOfCategorieError] when getting data fails from Server',
      () async {
        // arrange
        final tException = ServerException('ServerException');
        when(mockFetchContactTypesOfCategorie(any)).thenThrow(tException);
        // assert later
        final expected = [
          const ContactTypesOfCategorieInitial(),
          const ContactTypesOfCategorieLoading(),
          ContactTypesOfCategorieError(tException.toString()),
        ];
        final Future<void> future = expectLater(bloc, emitsInOrder(expected));
        // act
        bloc.add(const FetchContactTypesOfCategorieEvent(tCategorie));
        await future;
      },
    );

    test(
      'should emit [ContactTypesOfCategorieInitial, ContactTypesOfCategorieLoading, ContactTypesOfCategorieError] when getting data fails from Cache',
      () async {
        // arrange
        final tException = CacheException('CacheException');
        when(mockFetchContactTypesOfCategorie(any)).thenThrow(tException);
        // assert later
        final expected = [
          const ContactTypesOfCategorieInitial(),
          const ContactTypesOfCategorieLoading(),
          ContactTypesOfCategorieError(tException.toString()),
        ];
        final Future<void> future = expectLater(bloc, emitsInOrder(expected));
        // act
        bloc.add(const FetchContactTypesOfCategorieEvent(tCategorie));
        await future;
      },
    );
  });

  group('RefreshContactTypesOfCategorieEvent', () {
    test(
      'should emit [ContactTypesOfCategorieInitial, ContactTypesOfCategorieLoaded]',
      () async {
        // assert later
        const expected = [
          ContactTypesOfCategorieInitial(),
          ContactTypesOfCategorieLoaded(tContactTypeList),
        ];
        final Future<void> future = expectLater(bloc, emitsInOrder(expected));
        // act
        bloc.add(const RefreshContactTypesOfCategorieEvent(tContactTypeList));
        await future;
      },
    );
  });
}
