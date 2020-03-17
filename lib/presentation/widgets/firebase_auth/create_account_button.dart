import 'package:flutter/material.dart';
import 'package:app_pym/presentation/pages/firebase_auth/register_screen.dart';

class CreateAccountButton extends StatelessWidget {
  const CreateAccountButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        Navigator.of(context).push<void>(
          MaterialPageRoute(builder: (context) {
            return const RegisterScreen();
          }),
        );
      },
      child: const Text('Create an Account'),
    );
  }
}
