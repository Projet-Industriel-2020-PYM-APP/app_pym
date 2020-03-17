import 'package:flutter/material.dart';
import 'package:app_pym/injection_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(); // TODO: Implements
    // return buildBody(context);
  }

  // BlocProvider<ServicesBloc> buildBody(BuildContext context) {
  //   return BlocProvider<ServicesBloc>(
  //     create: (_) => sl<ServicesBloc>()..add(AppStarted()),
  //     child: Center(
  //       child: BlocBuilder<ServicesBloc, ServicesState>(
  //         builder: (BuildContext context, ServicesState state) {
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
