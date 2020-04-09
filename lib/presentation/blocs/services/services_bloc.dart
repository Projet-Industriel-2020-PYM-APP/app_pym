import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/usecases/services/fetch_categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import 'package:app_pym/domain/entities/services/categorie.dart';
import 'package:app_pym/domain/entities/services/service.dart';
part 'services_event.dart';
part 'services_state.dart';

@prod
@injectable
class ServicesBloc extends Bloc<ServicesEvent, ServicesState> {
  final FetchCategories fetchCategories;

  ServicesBloc({@required this.fetchCategories});

  @override
  ServicesState get initialState => const ServicesStateInitial();

  @override
  Stream<ServicesState> mapEventToState(ServicesEvent event) async* {
    if (event is FetchCategoriesEvent) {
      yield const CategoriesLoading();
      try {
        final List<Categorie> categories =
            await fetchCategories(const NoParams());
        yield CategoriesLoaded(categoriesList: categories);
      } catch (e) {
        yield CategoriesError(message: e.toString());
      }
    }
  }
}
