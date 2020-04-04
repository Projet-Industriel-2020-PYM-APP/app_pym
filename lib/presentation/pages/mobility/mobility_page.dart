import 'package:app_pym/injection_container.dart';
import 'package:app_pym/presentation/blocs/mobility/bus_trips/bus_trips_bloc.dart';
import 'package:app_pym/presentation/blocs/mobility/train_trips/train_trips_bloc.dart';
import 'package:app_pym/presentation/widgets/mobility/bus_aller_display.dart';
import 'package:app_pym/presentation/widgets/mobility/mobility_bus_controls.dart';
import 'package:app_pym/presentation/widgets/mobility/mobility_controls.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MobilityPage extends StatelessWidget {
  const MobilityPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildBody(context);
  }

  Widget buildBody(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BusTripsBloc>(
          create: (_) => sl<BusTripsBloc>(),
        ),
        BlocProvider<TrainTripsBloc>(
          create: (_) => sl<TrainTripsBloc>(),
        ),
      ],
      child: Center(
        child: BlocBuilder<BusTripsBloc, BusTripsState>(
          builder: (BuildContext context, BusTripsState state) {
            if (state is BusTripsInitial) {
              return Column(
                children: <Widget>[
                  const MobilityControls(),
                ],
              );
            } else if (state is BusTripsLoading) {
              return Column(
                children: <Widget>[
                  const MobilityControls(),
                  const MobilityBusControls(),
                  const CircularProgressIndicator(),
                ],
              );
            } else if (state is BusTripsLoaded) {
              return Column(
                children: <Widget>[
                  const MobilityControls(),
                  const MobilityBusControls(),
                  const BusAllerDisplay(),
                ],
              );
            } else if (state is BusTripsError) {
              return Column(
                children: <Widget>[
                  const MobilityControls(),
                  Text(state.message),
                ],
              );
            }
            return null;
          },
        ),
      ),
    );
  }
}
