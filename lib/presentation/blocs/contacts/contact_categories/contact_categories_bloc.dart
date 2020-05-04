import 'dart:async';

import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/app_pym/contact_categorie.dart';
import 'package:app_pym/domain/usecases/contacts/fetch_contact_categories.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'contact_categories_bloc.freezed.dart';
part 'contact_categories_event.dart';
part 'contact_categories_state.dart';

@prod
@injectable
class ContactCategoriesBloc
    extends Bloc<ContactCategoriesEvent, ContactCategoriesState> {
  final FetchContactCategories fetchContactCategories;

  ContactCategoriesBloc(this.fetchContactCategories);

  @override
  ContactCategoriesState get initialState =>
      const ContactCategoriesState.initial();

  @override
  Stream<ContactCategoriesState> mapEventToState(
      ContactCategoriesEvent event) async* {
    yield* event.when(
      fetch: () async* {
        yield const ContactCategoriesState.loading();
        try {
          final data = await fetchContactCategories(const NoParams());
          add(ContactCategoriesEvent.refresh(data));
        } catch (e) {
          yield ContactCategoriesState.error(e.toString());
        }
      },
      refresh: (categories) async* {
        yield ContactCategoriesState.loaded(categories);
      },
    );
  }
}
