import 'package:flutter/material.dart';
import 'package:app_pym/injection_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactDetailsPage extends StatelessWidget {
  const ContactDetailsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(); // TODO: Implements
    // return buildBody(context);
  }

  // BlocProvider<ContactDetailsBloc> buildBody(BuildContext context) {
  //   return BlocProvider<ContactDetailsBloc>(
  //     create: (_) => sl<ContactDetailsBloc>()..add(AppStarted()),
  //     child: Center(
  //       child: BlocBuilder<ContactDetailsBloc, ContactDetailsState>(
  //         builder: (BuildContext context, ContactDetailsState state) {
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
