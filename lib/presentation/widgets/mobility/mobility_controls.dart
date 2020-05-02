import 'package:app_pym/presentation/blocs/mobility/trips/trips_bloc.dart';
import 'package:app_pym/presentation/widgets/mobility/direction_controls.dart';
import 'package:app_pym/presentation/widgets/mobility/switch_button.dart';
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
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: buildButtonBar(context),
              ),
            ),
          ],
        );
      },
    );
  }

  ButtonBar buildButtonBar(BuildContext context) {
    final tripsState = context.bloc<TripsBloc>().state;
    return ButtonBar(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SwitchButton(
          isRaised: !tripsState.isBusLoaded,
          onRaisedPressed: () => null,
          //TODO
          // onRaisedPressed: () => context.bloc<TripsBloc>().add(
          //     TripsEvent.fetchBus(tripsState.direction)),
          onFlatPressed: () =>
              context.bloc<TripsBloc>().add(const TripsEvent.hideBus()),
          child: const Text(" Bus "),
        ),
        SwitchButton(
          isRaised: !tripsState.isTrainLoaded,
          onRaisedPressed: () => context
              .bloc<TripsBloc>()
              .add(TripsEvent.fetchTrain(tripsState.direction)),
          onFlatPressed: () =>
              context.bloc<TripsBloc>().add(const TripsEvent.hideTrain()),
          child: const Text(" Train "),
        ),
        SwitchButton(
          isRaised: tripsState.isBusLoaded || tripsState.isTrainLoaded,
          onRaisedPressed: () {
            context.bloc<TripsBloc>()
              ..add(const TripsEvent.hideBus())
              ..add(const TripsEvent.hideTrain());
          },
          onFlatPressed: () => null,
          child: const Text(" Cacher "),
        ),
      ],
    );
  }
}
