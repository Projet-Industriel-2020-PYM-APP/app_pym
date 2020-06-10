import 'package:app_pym/domain/entities/app_pym/contact_categorie.dart';
import 'package:app_pym/injection_container.dart';
import 'package:app_pym/presentation/blocs/contacts/contact_categories/contact_categories_bloc.dart';
import 'package:app_pym/presentation/pages/contact/contact_categorie_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contacts"),
      ),
      body: buildCategories(context),
    );
  }

  BlocProvider<ContactCategoriesBloc> buildCategories(BuildContext context) {
    return BlocProvider<ContactCategoriesBloc>(
      create: (_) => sl<ContactCategoriesBloc>()
        ..add(const ContactCategoriesEvent.fetch()),
      child: Center(
        child: BlocBuilder<ContactCategoriesBloc, ContactCategoriesState>(
          builder: (BuildContext context, ContactCategoriesState state) {
            return state.when(
              initial: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loaded: (List<ContactCategorie> categories) =>
                  ContactCategorieScreen(categories),
              error: (e) => Center(
                child: Text(e.toString()),
              ),
            );
          },
        ),
      ),
    );
  }
}
