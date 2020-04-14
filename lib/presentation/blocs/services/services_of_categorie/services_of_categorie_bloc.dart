import 'dart:async';

import 'package:app_pym/domain/entities/app_pym/categorie.dart';
import 'package:app_pym/domain/entities/app_pym/service.dart';
import 'package:app_pym/domain/usecases/services/fetch_services_of_categorie.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'services_of_categorie_bloc.freezed.dart';
part 'services_of_categorie_event.dart';
part 'services_of_categorie_state.dart';

@prod
@injectable
class ServicesOfCategorieBloc
    extends Bloc<ServicesOfCategorieEvent, ServicesOfCategorieState> {
  final FetchServicesOfCategorie fetchServicesOfCategorie;
  StreamSubscription<List<Service>> subscription;

  ServicesOfCategorieBloc(this.fetchServicesOfCategorie);

  @override
  ServicesOfCategorieState get initialState =>
      const ServicesOfCategorieInitial();

  @override
  Future<void> close() async {
    await subscription?.cancel();
    return super.close();
  }

  @override
  Stream<ServicesOfCategorieState> mapEventToState(
      ServicesOfCategorieEvent event) async* {
    yield* event.when(
      fetch: (categorie) async* {
        yield const ServicesOfCategorieLoading();
        try {
          await subscription?.cancel();

          subscription = fetchServicesOfCategorie(categorie)
              .listen((data) => add(RefreshServicesOfCategorieEvent(data)));
        } catch (e) {
          yield ServicesOfCategorieError(e.toString());
        }
      },
      refresh: (services) async* {
        yield ServicesOfCategorieLoaded(services);
      },
    );
  }
}
