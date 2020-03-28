import 'package:flutter/material.dart';
import 'package:app_pym/injection_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MobilitePage extends StatelessWidget {
  const MobilitePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(); // TODO: Implements
    // return buildBody(context);
  }

  // BlocProvider<MobiliteBloc> buildBody(BuildContext context) {
  //   return BlocProvider<MobiliteBloc>(
  //     create: (_) => sl<MobiliteBloc>()..add(AppStarted()),
  //     child: Center(
  //       child: BlocBuilder<MobiliteBloc, MobiliteState>(
  //         builder: (BuildContext context, MobiliteState state) {
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
