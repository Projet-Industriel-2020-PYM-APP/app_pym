import 'package:app_pym/core/routes/routes.dart';
import 'package:app_pym/presentation/blocs/authentication/authentication/authentication_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthenticationStatus extends StatelessWidget {
  const AuthenticationStatus({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
      return state.when(
        authenticated: (user) => Column(
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.account_circle, color: Colors.green),
              title: Text(
                user.email,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: FlatButton(
                onPressed: () {
                  context
                      .bloc<AuthenticationBloc>()
                      .add(const AuthenticationEvent.signOut());
                },
                child: const Text("SE DÉCONNECTER"),
              ),
            ),
            if (!user.isEmailVerified)
              ListTile(
                title: const Text("E-mail non vérifié"),
                trailing: RaisedButton(
                  onPressed: () {
                    context
                        .bloc<AuthenticationBloc>()
                        .add(const AuthenticationEvent.sendEmailVerification());
                  },
                  child: const Text("VERIFIER L'EMAIL"),
                ),
              ),
          ],
        ),
        unauthenticated: () => ListTile(
          leading: const Icon(Icons.account_circle),
          title: const Text("Non authentifié"),
          trailing: RaisedButton(
            onPressed: () {
              Navigator.pushNamed<void>(
                context,
                RoutePaths.login,
              );
            },
            child: const Text("S'AUTHENTIFIER"),
          ),
        ),
      );
    });
  }
}
