import 'package:app_pym/domain/entities/app_pym/categorie.dart';
import 'package:app_pym/injection_container.dart';
import 'package:app_pym/presentation/blocs/contacts/contact_type_categories/contact_type_categories_bloc.dart';
import 'package:app_pym/presentation/pages/contact/categories_screen.dart';
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

  BlocProvider<ContactTypeCategoriesBloc> buildCategories(
      BuildContext context) {
    return BlocProvider<ContactTypeCategoriesBloc>(
      create: (_) => sl<ContactTypeCategoriesBloc>()
        ..add(const ContactTypeCategoriesEvent.fetch()),
      child: Center(
        child:
            BlocBuilder<ContactTypeCategoriesBloc, ContactTypeCategoriesState>(
          builder: (BuildContext context, ContactTypeCategoriesState state) {
            return state.when(
              initial: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loaded: (List<Categorie> categories) =>
                  ContactTypeCategoriesScreen(categories),
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
