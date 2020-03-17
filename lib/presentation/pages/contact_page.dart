import 'package:flutter/material.dart';
import 'package:app_pym/injection_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts"),
      ),
      body: Container(),
    ); // TODO: Implements
    // return buildBody(context);
  }

  // BlocProvider<ContactBloc> buildBody(BuildContext context) {
  //   return BlocProvider<ContactBloc>(
  //     create: (_) => sl<ContactBloc>()..add(AppStarted()),
  //     child: Center(
  //       child: BlocBuilder<ContactBloc, ContactState>(
  //         builder: (BuildContext context, ContactState state) {
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
