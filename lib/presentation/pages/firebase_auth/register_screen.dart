import 'package:flutter/material.dart';
import 'package:app_pym/injection_container.dart';
import 'package:app_pym/presentation/blocs/firebase_auth/register/register_bloc.dart';
import 'package:app_pym/presentation/widgets/firebase_auth/register_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Register')),
      body: Center(
        child: BlocProvider<RegisterBloc>(
          create: (_) => sl<RegisterBloc>(),
          child: RegisterForm(),
        ),
      ),
    );
  }
}
