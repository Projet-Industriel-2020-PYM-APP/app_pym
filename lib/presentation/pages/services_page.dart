import 'package:app_pym/domain/entities/app_pym/categorie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app_pym/injection_container.dart';
import 'package:app_pym/presentation/blocs/services/categories/categories_bloc.dart';
import 'package:app_pym/presentation/pages/services/categories_screen.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildBody(context);
  }

  BlocProvider<CategoriesBloc> buildBody(BuildContext context) {
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
}
