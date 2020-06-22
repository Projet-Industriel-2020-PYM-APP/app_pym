import 'dart:async';

import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/app_pym/service_categorie.dart';
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

  ServiceCategoriesBloc(this.fetchServiceCategories);

  @override
  ServiceCategoriesState get initialState =>
      const ServiceCategoriesState.initial();

  @override
  Stream<ServiceCategoriesState> mapEventToState(
      ServiceCategoriesEvent event) async* {
    yield* event.when(
      fetch: () async* {
        yield const ServiceCategoriesState.loading();
        try {
          final data = await fetchServiceCategories(const NoParams());
          add(ServiceCategoriesEvent.refresh(data));
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
