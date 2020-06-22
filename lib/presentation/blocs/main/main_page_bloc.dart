import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'main_page_bloc.freezed.dart';
part 'main_page_event.dart';
part 'main_page_state.dart';

@prod
@injectable
class MainPageBloc extends Bloc<MainPageEvent, MainPageState> {
  @override
  MainPageState get initialState => const MainPageState(0);

  @override
  Stream<MainPageState> mapEventToState(
    MainPageEvent event,
  ) async* {
    yield MainPageState(event.index);
  }
}
