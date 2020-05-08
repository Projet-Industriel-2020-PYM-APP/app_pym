import 'package:app_pym/core/constants/mobility.dart';
import 'package:app_pym/presentation/blocs/mobility/trips/trips_bloc.dart';
import 'package:app_pym/presentation/widgets/mobility/switch_button.dart';
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
        SwitchButton(
          isRaised:
              context.bloc<TripsBloc>().state.direction == Direction.Retour,
          onRaisedPressed: () => context
              .bloc<TripsBloc>()
              .add(const TripsEvent.changeDirection(Direction.Aller)),
          onFlatPressed: () => null,
          child: const Text("ALLER"),
        ),
        SwitchButton(
          isRaised:
              context.bloc<TripsBloc>().state.direction == Direction.Aller,
          onRaisedPressed: () => context
              .bloc<TripsBloc>()
              .add(const TripsEvent.changeDirection(Direction.Retour)),
          onFlatPressed: () => null,
          child: const Text("PARTIR"),
        ),
      ],
    );
  }
}
