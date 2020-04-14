import 'package:app_pym/core/constants/mobility.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class DirectionControls extends StatefulWidget {
  const DirectionControls({Key key}) : super(key: key);

  @override
  _DirectionControlsState createState() => _DirectionControlsState();
}

class _DirectionControlsState extends State<DirectionControls> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        RaisedButton(
          onPressed: () => context
              .bloc<BusTripsBloc>()
              .add(const FetchBusEvent(Direction.Aller)),
          child: const Text("Aller"),
        ),
        RaisedButton(
          onPressed: () => context
              .bloc<BusTripsBloc>()
              .add(const FetchBusEvent(Direction.Retour)),
          child: const Text("Retour"),
        ),
      ],
    );
  }
}
