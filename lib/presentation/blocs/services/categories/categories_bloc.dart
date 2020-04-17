import 'dart:async';

import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/app_pym/categorie.dart';
import 'package:app_pym/domain/usecases/services/fetch_categories.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'categories_bloc.freezed.dart';
part 'categories_event.dart';
part 'categories_state.dart';

@prod
@injectable
class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  final FetchServiceCategories fetchServiceCategories;
  StreamSubscription<List<Categorie>> subscription;

  CategoriesBloc(this.fetchServiceCategories);

  @override
  CategoriesState get initialState => const CategoriesState.initial();

  @override
  Future<void> close() async {
    await subscription?.cancel();
    return super.close();
  }

  @override
  Stream<CategoriesState> mapEventToState(CategoriesEvent event) async* {
    yield* event.when(
      fetch: () async* {
        yield const CategoriesState.loading();
        try {
          await subscription?.cancel();

          subscription = fetchServiceCategories(const NoParams())
              .listen((data) => add(CategoriesEvent.refresh(data)));
        } catch (e) {
          yield CategoriesState.error(e.toString());
        }
      },
      refresh: (categories) async* {
        yield CategoriesState.loaded(categories);
      },
    );
  }
}
