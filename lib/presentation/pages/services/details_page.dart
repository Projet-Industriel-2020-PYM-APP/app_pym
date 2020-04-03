import 'package:flutter/material.dart';
import 'package:app_pym/injection_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ServicesDetailsPage extends StatelessWidget {
  const ServicesDetailsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        AppBar(
          title: const Text("Détails"),
        )
      ],
    )); // TODO: Implements
    // return buildBody(context);
  }

  // BlocProvider<ServicesDetailsBloc> buildBody(BuildContext context) {
  //   return BlocProvider<ServicesDetailsBloc>(
  //     create: (_) => sl<ServicesDetailsBloc>()..add(AppStarted()),
  //     child: Center(
  //       child: BlocBuilder<ServicesDetailsBloc, ServicesDetailsState>(
  //         builder: (BuildContext context, ServicesDetailsState state) {
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
