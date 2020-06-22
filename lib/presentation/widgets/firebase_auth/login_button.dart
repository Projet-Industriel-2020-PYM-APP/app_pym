import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final VoidCallback _onPressed;

  const LoginButton({Key key, VoidCallback onPressed})
      : _onPressed = onPressed,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).accentColor,
      onPressed: _onPressed,
      child: Text(
        'SE CONNECTER',
        style: Theme.of(context).textTheme.button.apply(color: Colors.white),
      ),
    );
  }
}
