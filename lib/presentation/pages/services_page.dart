import 'package:app_pym/domain/entities/app_pym/categorie.dart';
import 'package:app_pym/domain/entities/app_pym/service.dart';
import 'package:app_pym/presentation/blocs/services/services_of_categorie/services_of_categorie_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app_pym/injection_container.dart';
import 'package:app_pym/presentation/blocs/services/categories/categories_bloc.dart';
import 'package:app_pym/presentation/pages/services/categories_screen.dart';
import 'package:app_pym/presentation/pages/services/services_of_categorie_screen.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildCategories(context);
  }

  BlocProvider<CategoriesBloc> buildCategories(BuildContext context) {
    return BlocProvider<CategoriesBloc>(
      create: (_) {
        final CategoriesBloc bloc = sl<CategoriesBloc>();
        bloc.add(const FetchCategoriesEvent());
        return bloc;
      },
      child: Center(
        child: BlocBuilder<CategoriesBloc, CategoriesState>(
          builder: (BuildContext context, CategoriesState state) {
            return state.when(
              initial: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loaded: (List<Categorie> categories) =>
                  CategoriesSreen(categories),
              error: (e) => Center(
                child: Text(e.toString()),
              ),
            );
          },
        ),
      ),
    );
  }

  BlocProvider<ServicesOfCategorieBloc> buildServices(
      BuildContext context, Categorie categorie) {
    return BlocProvider<ServicesOfCategorieBloc>(
      create: (_) {
        final ServicesOfCategorieBloc bloc = sl<ServicesOfCategorieBloc>();
        bloc.add(FetchServicesOfCategorieEvent(categorie));
        return bloc;
      },
      child: Center(
        child: BlocBuilder<ServicesOfCategorieBloc, ServicesOfCategorieState>(
          builder: (BuildContext context, ServicesOfCategorieState state) {
            return state.when(
              initial: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loaded: (List<Service> services) =>
                  ServicesOfCategorieScreen(services, categorie),
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
