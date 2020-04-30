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
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
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
    return ButtonBar(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SwitchButton(
          isRaised: !context.bloc<TripsBloc>().state.isBusLoaded,
          onRaisedPressed: () => context.bloc<TripsBloc>().add(
              TripsEvent.fetchBus(context.bloc<TripsBloc>().state.direction)),
          onFlatPressed: () =>
              context.bloc<TripsBloc>().add(const TripsEvent.hideBus()),
          child: const Text(" Bus "),
        ),
        SwitchButton(
          isRaised: !context.bloc<TripsBloc>().state.isTrainLoaded,
          onRaisedPressed: () => context.bloc<TripsBloc>().add(
              TripsEvent.fetchTrain(context.bloc<TripsBloc>().state.direction)),
          onFlatPressed: () =>
              context.bloc<TripsBloc>().add(const TripsEvent.hideTrain()),
          child: const Text(" Train "),
        ),
        SwitchButton(
          isRaised: context.bloc<TripsBloc>().state.isBusLoaded ||
              context.bloc<TripsBloc>().state.isTrainLoaded,
          onRaisedPressed: () {
            context.bloc<TripsBloc>().add(const TripsEvent.hideBus());
            context.bloc<TripsBloc>().add(const TripsEvent.hideTrain());
          },
          onFlatPressed: () => null,
          child: const Text(" Cacher "),
        ),
      ],
    );
  }
}
