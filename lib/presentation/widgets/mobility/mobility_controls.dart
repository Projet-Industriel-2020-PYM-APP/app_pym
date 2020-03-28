import 'package:flutter/material.dart';

class MobilityControls extends StatefulWidget {
  const MobilityControls({Key key}) : super(key: key);

  @override
  _MobilityControlsState createState() => _MobilityControlsState();
}

class _MobilityControlsState extends State<MobilityControls> {
  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      children: <Widget>[
        Text("Bus"),
        Text("Train"),
        Text("Maps"),
      ],
    );
  }
}
