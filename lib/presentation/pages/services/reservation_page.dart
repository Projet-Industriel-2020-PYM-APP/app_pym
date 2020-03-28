import 'package:flutter/material.dart';
import 'package:app_pym/injection_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ServicesReservationPage extends StatelessWidget {
  const ServicesReservationPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(); // TODO: Implements
    // return buildBody(context);
  }

  // BlocProvider<ServicesReservationBloc> buildBody(BuildContext context) {
  //   return BlocProvider<ServicesReservationBloc>(
  //     create: (_) => sl<ServicesReservationBloc>()..add(AppStarted()),
  //     child: Center(
  //       child: BlocBuilder<ServicesReservationBloc, ServicesReservationState>(
  //         builder: (BuildContext context, ServicesReservationState state) {
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
