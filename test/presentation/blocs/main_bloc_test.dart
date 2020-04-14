import 'package:app_pym/presentation/blocs/main/main_page_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  MainPageBloc bloc;

  setUp(() {
    bloc = MainPageBloc();
  });

  test('initialState should be MainPageState(0)', () {
    // assert
    expect(bloc.initialState, equals(const MainPageState(0)));
  });

  group('GoToSecondPageEvent then GoToFirstPageEvent', () {
    test(
      'should emit [FirstPageState, SecondPageState, FirstPageState]',
      () async {
        // assert later
        const expected = [
          MainPageState(0),
          MainPageState(1),
          MainPageState(0),
        ];
        final Future<void> future = expectLater(bloc, emitsInOrder(expected));
        // act
        bloc.add(const GoToPageEvent(1));
        bloc.add(const GoToPageEvent(0));
        await future;
      },
    );
  });

  group('GoToSecondPageEvent', () {
    test(
      'should emit [FirstPageState, SecondPageState]',
      () async {
        // assert later
        const expected = [MainPageState(0), MainPageState(1)];
        final Future<void> future = expectLater(bloc, emitsInOrder(expected));
        // act
        bloc.add(const GoToPageEvent(1));
        await future;
      },
    );
  });
}
