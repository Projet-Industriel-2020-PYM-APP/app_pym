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
            const Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: DirectionControls(),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: buildButtonBar(context),
              ),
            ),
          ],
        );
      },
    );
  }

  ButtonBar buildButtonBar(BuildContext context) {
    return ButtonBar(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        RaisedButton(
          onPressed: () =>
              context.bloc<BusTripsBloc>().add(FetchBusEvent(direction)),
          child: const Text(" Bus "),
        ),
        RaisedButton(
          onPressed: () =>
              context.bloc<TrainTripsBloc>().add(FetchTrainEvent(direction)),
          child: const Text("Train"),
        ),
      ],
    );
  }
}

class SwitchButton extends MaterialButton {
  final bool isRaised;

  const SwitchButton(
    this.isRaised, {
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
        onPressed: onPressed,
        child: child,
      );
    } else {
      return FlatButton(
        onPressed: onPressed,
        child: child,
      );
    }
  }
}
