import 'package:app_pym/injection_container.dart';
import 'package:app_pym/presentation/blocs/fil_actualite/fil_actualite_bloc.dart';
import 'package:app_pym/presentation/pages/actualite/actualite_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ActualitePage extends StatelessWidget {
  const ActualitePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildBody(context);
  }

  BlocProvider<FilActualiteBloc> buildBody(BuildContext context) {
    return BlocProvider<FilActualiteBloc>(
      create: (_) => sl<FilActualiteBloc>()..add(const FetchPostsEvent()),
      child: Center(
        child: BlocBuilder<FilActualiteBloc, FilActualiteState>(
          builder: (BuildContext context, FilActualiteState state) {
            return state.when(
              initial: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loaded: (posts) => ActualiteScreen(posts),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
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
