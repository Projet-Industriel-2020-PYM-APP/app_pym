import 'package:app_pym/presentation/blocs/mobility/trips/trips_bloc.dart';
import 'package:app_pym/presentation/widgets/mobility/direction_controls.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class MobilityControls extends StatelessWidget {
  const MobilityControls({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TripsBloc, TripsState>(
      builder: (context, state) {
        return Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: DirectionControls(state.direction),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: buildButtonBar(context, state),
              ),
            ),
          ],
        );
      },
    );
  }

  ButtonBar buildButtonBar(BuildContext context, TripsState tripsState) {
    return ButtonBar(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        RaisedButton(
          color: tripsState.isBusLoaded ? Colors.blue : Colors.white,
          disabledColor: Colors.grey,
          elevation: tripsState.isBusLoaded ? 8.0 : 0.0,
          onPressed: tripsState.isBusLoaded
              ? () => context.bloc<TripsBloc>().add(const TripsEvent.hideBus())
              : () => context
                  .bloc<TripsBloc>()
                  .add(TripsEvent.fetchBus(tripsState.direction)),
          child: const Text("BUS"),
        ),
        RaisedButton(
          color: tripsState.isTrainLoaded ? Colors.orange[800] : Colors.white,
          disabledColor: Colors.grey,
          elevation: tripsState.isTrainLoaded ? 8.0 : 0.0,
          onPressed: tripsState.isTrainLoaded
              ? () =>
                  context.bloc<TripsBloc>().add(const TripsEvent.hideTrain())
              : () => context
                  .bloc<TripsBloc>()
                  .add(TripsEvent.fetchTrain(tripsState.direction)),
          child: const Text("TER"),
        ),
      ],
    );
  }
}
