import 'package:app_pym/presentation/pages/login/forgot_screen.dart';
import 'package:flutter/material.dart';

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
        "J'ai oublié mon mot de passe",
      ),
    );
  }
}
