import 'package:flutter/material.dart';
import 'package:app_pym/injection_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ActualitePage extends StatelessWidget {
  const ActualitePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(); // TODO: Implements
    // return buildBody(context);
  }

  // BlocProvider<ActualiteBloc> buildBody(BuildContext context) {
  //   return BlocProvider<ActualiteBloc>(
  //     create: (_) => sl<ActualiteBloc>()..add(AppStarted()),
  //     child: Center(
  //       child: BlocBuilder<ActualiteBloc, ActualiteState>(
  //         builder: (BuildContext context, ActualiteState state) {
  //           if (state is Unloaded) {
  //             return SplashScreen();  // TODO
  //           } else if (state is Loading) {
  //             return LoadingScreen();  // TODO
  //           } else if (state is Loaded) {
  //             return AcualiteScreen(user: state.posts);  // TODO
  //           }
  //           return null;
  //         },
  //       ),
  //     ),
  //   );
  // }
}
