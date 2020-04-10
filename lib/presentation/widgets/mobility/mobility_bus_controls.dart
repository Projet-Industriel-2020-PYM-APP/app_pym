import 'package:app_pym/core/constants/mobility.dart';
import 'package:app_pym/presentation/blocs/mobility/bus_trips/bus_trips_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class MobilityBusControls extends StatefulWidget {
  const MobilityBusControls({Key key}) : super(key: key);

  @override
  _MobilityBusControlsState createState() => _MobilityBusControlsState();
}

class _MobilityBusControlsState extends State<MobilityBusControls> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
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
        ),
      ),
    );
  }
}
