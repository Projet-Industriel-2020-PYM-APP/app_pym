import 'package:flutter/material.dart';
import 'package:app_pym/domain/entities/firebase_auth/app_user.dart';
import 'package:app_pym/injection_container.dart';
import 'package:app_pym/presentation/blocs/firebase_auth/authentication/authentication_bloc.dart';
import 'package:app_pym/presentation/blocs/firebase_auth/user_data/user_data_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  final AppUser user;

  const HomeScreen({Key key, @required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Center(child: Text('Welcome ${user.email}!')),
        BlocProvider<UserDataBloc>(
          create: (_) => sl<UserDataBloc>(),
          child: BlocBuilder<UserDataBloc, UserDataState>(
            builder: (BuildContext context, UserDataState state) {
              if (state is UpdatedState || state is NotUpdatedState) {
                return Switch(
                  value: user.isAdmin,
                  onChanged: (value) {
                    final AppUser newUser = AppUser.setAdmin(user, value);
                    sl<UserDataBloc>().add(UpdatedUserData(newUser));
                  },
                );
              } else {
                return const CircularProgressIndicator();
              }
            },
          ),
        ),
        RaisedButton(
          onPressed: () {
            context.bloc<AuthenticationBloc>().add(const LoggedOut());
          },
          child: const Text("SignOut"),
        ),
      ],
    );
  }
}
