import 'package:flutter/material.dart';
import 'package:app_pym/injection_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArScreen extends StatelessWidget {
  const ArScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Réalité Augmentée"),
      ),
      body: Container(),
    ); // TODO: Implements
    // return buildBody(context);
  }

  // BlocProvider<ArBloc> buildBody(BuildContext context) {
  //   return BlocProvider<ArBloc>(
  //     create: (_) => sl<ArBloc>()..add(AppStarted()),
  //     child: Center(
  //       child: BlocBuilder<ArBloc, ArState>(
  //         builder: (BuildContext context, ArState state) {
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
