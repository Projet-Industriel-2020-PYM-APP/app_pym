import 'package:flutter/material.dart';
import 'package:app_pym/injection_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ParametersPage extends StatelessWidget {
  const ParametersPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Paramètres"),
      ),
      body: Container(),
    ); // TODO: Implements
    // return buildBody(context);
  }

  // BlocProvider<ParametersBloc> buildBody(BuildContext context) {
  //   return BlocProvider<ParametersBloc>(
  //     create: (_) => sl<ParametersBloc>()..add(AppStarted()),
  //     child: Center(
  //       child: BlocBuilder<ParametersBloc, ParametersState>(
  //         builder: (BuildContext context, ParametersState state) {
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
