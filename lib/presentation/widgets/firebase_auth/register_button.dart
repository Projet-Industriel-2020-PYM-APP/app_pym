import 'package:flutter/material.dart';

class RegisterButton extends StatelessWidget {
  final VoidCallback _onPressed;

  const RegisterButton({Key key, VoidCallback onPressed})
      : _onPressed = onPressed,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RaisedButton(
        color: Theme.of(context).accentColor,
        onPressed: _onPressed,
        child: Text(
          'CRÉER UN COMPTE',
          style: Theme.of(context).textTheme.button.apply(color: Colors.white),
        ),
      ),
    );
  }
}
