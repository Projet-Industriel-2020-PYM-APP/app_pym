import 'package:flutter/material.dart';

class ForgotButton extends StatelessWidget {
  final VoidCallback _onPressed;

  const ForgotButton({Key key, VoidCallback onPressed})
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
          'MOT DE PASSE OUBLIÉ',
          style: Theme.of(context).textTheme.button.apply(color: Colors.white),
        ),
      ),
    );
  }
}
