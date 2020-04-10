import 'dart:async';

import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/app_pym/categorie.dart';
import 'package:app_pym/domain/usecases/services/fetch_categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'categories_event.dart';
part 'categories_state.dart';

@prod
@injectable
class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  final FetchCategories fetchCategories;
  StreamSubscription<List<Categorie>> subscription;

  CategoriesBloc(this.fetchCategories);

  @override
  CategoriesState get initialState => const CategoriesInitial();

  @override
  Stream<CategoriesState> mapEventToState(CategoriesEvent event) async* {
    if (event is FetchCategoriesEvent) {
      yield const CategoriesLoading();
      try {
        await subscription?.cancel();

        subscription = fetchCategories(const NoParams())
            .listen((data) => add(RefreshCategoriesEvent(data)));
      } catch (e) {
        yield CategoriesError(message: e.toString());
      }
    } else if (event is RefreshCategoriesEvent) {
      yield CategoriesLoaded(event.categories);
    }
  }

  @override
  Future<void> close() async {
    await subscription?.cancel();
    return super.close();
  }
}
