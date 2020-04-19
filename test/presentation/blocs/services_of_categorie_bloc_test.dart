import 'package:app_pym/core/error/exceptions.dart';
import 'package:app_pym/domain/entities/app_pym/action.dart';
import 'package:app_pym/domain/entities/app_pym/categorie.dart';
import 'package:app_pym/domain/entities/app_pym/service.dart';
import 'package:app_pym/domain/usecases/services/fetch_services_of_categorie.dart';
import 'package:app_pym/injection_container.dart';
import 'package:app_pym/presentation/blocs/services/services_of_categorie/services_of_categorie_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' show Environment;
import 'package:mockito/mockito.dart';

void main() {
  ServicesOfCategorieBloc bloc;
  FetchServicesOfCategorie mockFetchServicesOfCategorie;

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
  const tServiceList = [
    Service(
      id: "1",
      title: "title",
      categorie_ref: "1",
      subtitle: "subtitle",
      address: "address",
      img_url: "img_url",
      actions: [tAction],
    ),
    Service(
      categorie_ref: "2",
    ),
  ];

  setUp(() {
    mockFetchServicesOfCategorie = sl<FetchServicesOfCategorie>();
    bloc = ServicesOfCategorieBloc(mockFetchServicesOfCategorie);
  });

  test('initialState should be ServicesOfCategorieInitial', () {
    // assert
    expect(bloc.initialState, equals(const ServicesOfCategorieInitial()));
  });

  group('FetchServicesOfCategorieEvent', () {
    test(
      'should get data from the concrete use case',
      () async {
        // arrange
        when(mockFetchServicesOfCategorie(any))
            .thenAnswer((_) => Stream.fromIterable([tServiceList]));
        // act
        bloc.add(const FetchServicesOfCategorieEvent(tCategorie));
        await untilCalled(mockFetchServicesOfCategorie(any));
        // assert
        verify(mockFetchServicesOfCategorie(tCategorie));
      },
    );

    test(
      'should emit [ServicesOfCategorieInitial, ServicesOfCategorieLoading, ServicesOfCategorieLoaded] when data is gotten successfully',
      () async {
        // arrange
        when(mockFetchServicesOfCategorie(any))
            .thenAnswer((_) => Stream.fromIterable([tServiceList]));
        // assert later
        const expected = [
          ServicesOfCategorieInitial(),
          ServicesOfCategorieLoading(),
          ServicesOfCategorieLoaded(tServiceList),
        ];
        final Future<void> future = expectLater(bloc, emitsInOrder(expected));
        // act
        bloc.add(const FetchServicesOfCategorieEvent(tCategorie));
        await future;
      },
    );

    test(
      'should emit [ServicesOfCategorieInitial, ServicesOfCategorieLoading, ServicesOfCategorieError] when getting data fails from Server',
      () async {
        // arrange
        final tException = ServerException('ServerException');
        when(mockFetchServicesOfCategorie(any)).thenThrow(tException);
        // assert later
        final expected = [
          const ServicesOfCategorieInitial(),
          const ServicesOfCategorieLoading(),
          ServicesOfCategorieError(tException.toString()),
        ];
        final Future<void> future = expectLater(bloc, emitsInOrder(expected));
        // act
        bloc.add(const FetchServicesOfCategorieEvent(tCategorie));
        await future;
      },
    );

    test(
      'should emit [ServicesOfCategorieInitial, ServicesOfCategorieLoading, ServicesOfCategorieError] when getting data fails from Cache',
      () async {
        // arrange
        final tException = CacheException('CacheException');
        when(mockFetchServicesOfCategorie(any)).thenThrow(tException);
        // assert later
        final expected = [
          const ServicesOfCategorieInitial(),
          const ServicesOfCategorieLoading(),
          ServicesOfCategorieError(tException.toString()),
        ];
        final Future<void> future = expectLater(bloc, emitsInOrder(expected));
        // act
        bloc.add(const FetchServicesOfCategorieEvent(tCategorie));
        await future;
      },
    );
  });

  group('RefreshServicesOfCategorieEvent', () {
    test(
      'should emit [ServicesOfCategorieInitial, ServicesOfCategorieLoaded]',
      () async {
        // assert later
        const expected = [
          ServicesOfCategorieInitial(),
          ServicesOfCategorieLoaded(tServiceList),
        ];
        final Future<void> future = expectLater(bloc, emitsInOrder(expected));
        // act
        bloc.add(const RefreshServicesOfCategorieEvent(tServiceList));
        await future;
      },
    );
  });
}
