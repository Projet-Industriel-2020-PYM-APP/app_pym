import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class SwitchButton extends MaterialButton {
  final bool isRaised;
  final VoidCallback onRaisedPressed;
  final VoidCallback onFlatPressed;

  const SwitchButton({
    @required this.isRaised,
    @nullable @required this.onRaisedPressed,
    @nullable @required this.onFlatPressed,
    VoidCallback onPressed,
    Widget child,
    Key key,
  }) : super(
          key: key,
          onPressed: onPressed,
          child: child,
        );

  @override
  Widget build(BuildContext context) {
    if (isRaised) {
      return RaisedButton(
        onPressed: onRaisedPressed,
        child: child,
      );
    } else {
      return FlatButton(
        onPressed: onFlatPressed,
        child: child,
      );
    }
  }
}
