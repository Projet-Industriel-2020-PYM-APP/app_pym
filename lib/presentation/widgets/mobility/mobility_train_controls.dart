import 'package:app_pym/core/constants/mobility.dart';
import 'package:app_pym/presentation/blocs/mobility/train_trips/train_trips_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class MobilityTrainControls extends StatefulWidget {
  const MobilityTrainControls({Key key}) : super(key: key);

  @override
  _MobilityTrainControlsState createState() => _MobilityTrainControlsState();
}

class _MobilityTrainControlsState extends State<MobilityTrainControls> {
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
                  .bloc<TrainTripsBloc>()
                  .add(const FetchTrainEvent(Direction.Aller)),
              child: const Text("Aller"),
            ),
            RaisedButton(
              onPressed: () => context
                  .bloc<TrainTripsBloc>()
                  .add(const FetchTrainEvent(Direction.Retour)),
              child: const Text("Retour"),
            ),
          ],
        ),
      ),
    );
  }
}
