import 'package:app_pym/domain/entities/app_pym/categorie.dart';
import 'package:app_pym/presentation/blocs/services/service_categories/service_categories_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app_pym/injection_container.dart';
import 'package:app_pym/presentation/pages/services/categories_screen.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildCategories(context);
  }

  BlocProvider<ServiceCategoriesBloc> buildCategories(BuildContext context) {
    return BlocProvider<ServiceCategoriesBloc>(
      create: (_) {
        final ServiceCategoriesBloc bloc = sl<ServiceCategoriesBloc>();
        bloc.add(const ServiceCategoriesEvent.fetch());
        return bloc;
      },
      child: Center(
        child: BlocBuilder<ServiceCategoriesBloc, ServiceCategoriesState>(
          builder: (BuildContext context, ServiceCategoriesState state) {
            return state.when(
              initial: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loaded: (List<Categorie> categories) =>
                  CategoriesScreen(categories),
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
