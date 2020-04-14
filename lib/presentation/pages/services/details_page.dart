import 'package:flutter/material.dart';

class ServicesDetailsPage extends StatelessWidget {
  const ServicesDetailsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        AppBar(
          title: const Text("Détails"),
        )
      ],
    )); // TODO: Implements
    // return buildBody(context);
  }
}
