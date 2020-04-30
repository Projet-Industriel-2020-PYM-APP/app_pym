import 'dart:async';

import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/app_pym/categorie.dart';
import 'package:app_pym/domain/usecases/contacts/fetch_contact_type_categories.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'contact_type_categories_bloc.freezed.dart';
part 'contact_type_categories_event.dart';
part 'contact_type_categories_state.dart';

@prod
@injectable
class ContactTypeCategoriesBloc
    extends Bloc<ContactTypeCategoriesEvent, ContactTypeCategoriesState> {
  final FetchContactTypeCategories fetchContactCategories;
  StreamSubscription<List<Categorie>> subscription;

  ContactTypeCategoriesBloc(this.fetchContactCategories);

  @override
  ContactTypeCategoriesState get initialState =>
      const ContactTypeCategoriesState.initial();

  @override
  Future<void> close() async {
    await subscription?.cancel();
    return super.close();
  }

  @override
  Stream<ContactTypeCategoriesState> mapEventToState(
      ContactTypeCategoriesEvent event) async* {
    yield* event.when(
      fetch: () async* {
        yield const ContactTypeCategoriesState.loading();
        try {
          await subscription?.cancel();

          subscription = fetchContactCategories(const NoParams())
              .listen((data) => add(ContactTypeCategoriesEvent.refresh(data)));
        } catch (e) {
          yield ContactTypeCategoriesState.error(e.toString());
        }
      },
      refresh: (categories) async* {
        yield ContactTypeCategoriesState.loaded(categories);
      },
    );
  }
}
