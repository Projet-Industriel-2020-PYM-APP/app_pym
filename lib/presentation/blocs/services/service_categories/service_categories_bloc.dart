import 'dart:async';

import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/app_pym/categorie.dart';
import 'package:app_pym/domain/usecases/services/fetch_service_categories.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'service_categories_bloc.freezed.dart';
part 'service_categories_event.dart';
part 'service_categories_state.dart';

@prod
@injectable
class ServiceCategoriesBloc
    extends Bloc<ServiceCategoriesEvent, ServiceCategoriesState> {
  final FetchServiceCategories fetchServiceCategories;
  StreamSubscription<List<Categorie>> subscription;

  ServiceCategoriesBloc(this.fetchServiceCategories);

  @override
  ServiceCategoriesState get initialState =>
      const ServiceCategoriesState.initial();

  @override
  Future<void> close() async {
    await subscription?.cancel();
    return super.close();
  }

  @override
  Stream<ServiceCategoriesState> mapEventToState(
      ServiceCategoriesEvent event) async* {
    yield* event.when(
      fetch: () async* {
        yield const ServiceCategoriesState.loading();
        try {
          await subscription?.cancel();

          subscription = fetchServiceCategories(const NoParams())
              .listen((data) => add(ServiceCategoriesEvent.refresh(data)));
        } catch (e) {
          yield ServiceCategoriesState.error(e.toString());
        }
      },
      refresh: (categories) async* {
        yield ServiceCategoriesState.loaded(categories);
      },
    );
  }
}
