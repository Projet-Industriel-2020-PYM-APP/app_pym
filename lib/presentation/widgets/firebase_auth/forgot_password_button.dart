import 'package:flutter/material.dart';
import 'package:app_pym/presentation/pages/firebase_auth/forgot_screen.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        Navigator.of(context).push<void>(
          MaterialPageRoute(builder: (context) {
            return const ForgotScreen();
          }),
        );
      },
      child: const Text(
        'Forgot Password',
      ),
    );
  }
}
