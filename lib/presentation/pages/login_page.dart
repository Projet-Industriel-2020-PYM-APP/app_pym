import 'package:app_pym/presentation/pages/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:app_pym/presentation/blocs/authentication/authentication/authentication_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Authentification"),
      ),
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return Center(
      child: BlocConsumer<AuthenticationBloc, AuthenticationState>(
        listener: (BuildContext context, AuthenticationState state) {
          state.when(
            unauthenticated: () {},
            authenticated: (_) => Navigator.of(context).pop(),
          );
        },
        builder: (BuildContext context, AuthenticationState state) {
          return state.when(
            unauthenticated: () => const LoginScreen(),
            authenticated: (_) => Container(),
          );
        },
      ),
    );
  }
}
