import 'package:flutter/material.dart';
import 'package:app_pym/injection_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartographiePage extends StatelessWidget {
  const CartographiePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(); // TODO: Implements
    // return buildBody(context);
  }

  // BlocProvider<CartographieBloc> buildBody(BuildContext context) {
  //   return BlocProvider<CartographieBloc>(
  //     create: (_) => sl<CartographieBloc>()..add(AppStarted()),
  //     child: Center(
  //       child: BlocBuilder<CartographieBloc, CartographieState>(
  //         builder: (BuildContext context, CartographieState state) {
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
