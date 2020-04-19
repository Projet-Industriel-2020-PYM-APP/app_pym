import 'dart:async';

import 'package:app_pym/domain/entities/app_pym/categorie.dart';
import 'package:app_pym/domain/entities/app_pym/contact_type.dart';
import 'package:app_pym/domain/usecases/contacts/fetch_contact_types_of_categorie.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'contact_types_of_categorie_bloc.freezed.dart';
part 'contact_types_of_categorie_event.dart';
part 'contact_types_of_categorie_state.dart';

@prod
@injectable
class ContactTypesOfCategorieBloc
    extends Bloc<ContactTypesOfCategorieEvent, ContactTypesOfCategorieState> {
  final FetchContactTypesOfCategorie fetchContactTypesOfCategorie;
  StreamSubscription<List<ContactType>> subscription;

  ContactTypesOfCategorieBloc(this.fetchContactTypesOfCategorie);

  @override
  ContactTypesOfCategorieState get initialState =>
      const ContactTypesOfCategorieInitial();

  @override
  Future<void> close() async {
    await subscription?.cancel();
    return super.close();
  }

  @override
  Stream<ContactTypesOfCategorieState> mapEventToState(
      ContactTypesOfCategorieEvent event) async* {
    yield* event.when(
      fetch: (categorie) async* {
        yield const ContactTypesOfCategorieLoading();
        try {
          await subscription?.cancel();

          subscription = fetchContactTypesOfCategorie(categorie)
              .listen((data) => add(RefreshContactTypesOfCategorieEvent(data)));
        } catch (e) {
          yield ContactTypesOfCategorieError(e.toString());
        }
      },
      refresh: (services) async* {
        yield ContactTypesOfCategorieLoaded(services);
      },
    );
  }
}
