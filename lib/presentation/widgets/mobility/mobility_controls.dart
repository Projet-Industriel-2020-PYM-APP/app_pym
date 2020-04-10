import 'package:app_pym/core/constants/mobility.dart';
import 'package:app_pym/presentation/blocs/mobility/bus_trips/bus_trips_bloc.dart';
import 'package:app_pym/presentation/blocs/mobility/train_trips/train_trips_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class MobilityControls extends StatefulWidget {
  const MobilityControls({Key key}) : super(key: key);

  @override
  _MobilityControlsState createState() => _MobilityControlsState();
}

class _MobilityControlsState extends State<MobilityControls> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ButtonBar(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            RaisedButton(
              onPressed: () => {
                //Est-ce nécessaire de cacher avant d'afficher le nouveau ?
                context.bloc<TrainTripsBloc>().add(const HideTrainEvent()),
                context
                    .bloc<BusTripsBloc>()
                    .add(const FetchBusEvent(Direction.Aller)),
              },
              child: const Text(" Bus "),
            ),
            RaisedButton(
              onPressed: () => {
                context.bloc<BusTripsBloc>().add(const HideBusEvent()),
                context
                    .bloc<TrainTripsBloc>()
                    .add(const FetchTrainEvent(Direction.Aller)),
              },
              child: const Text("Train"),
            ),
            RaisedButton(
              onPressed: () => {
                context.bloc<BusTripsBloc>().add(const HideBusEvent()),
                context.bloc<TrainTripsBloc>().add(const HideTrainEvent()),
              },
              child: const Text("Cacher"),
            ),
          ],
        ),
      ),
    );
  }
}
