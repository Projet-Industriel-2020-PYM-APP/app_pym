import 'package:app_pym/core/constants/mobility.dart';
import 'package:app_pym/presentation/blocs/mobility/bus_trips/bus_trips_bloc.dart';
import 'package:app_pym/presentation/blocs/mobility/maps/maps_bloc.dart';
import 'package:app_pym/presentation/blocs/mobility/train_trips/train_trips_bloc.dart';
import 'package:app_pym/presentation/widgets/mobility/maps.dart';
import 'package:app_pym/presentation/widgets/mobility/mobility_bus_controls.dart';
import 'package:app_pym/presentation/widgets/mobility/mobility_controls.dart';
import 'package:app_pym/presentation/widgets/mobility/mobility_train_controls.dart';
import 'package:flutter/material.dart';
import 'package:app_pym/injection_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MobilitePage extends StatelessWidget {
  const MobilitePage({Key key}) : super(key: key);

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
        BlocProvider<MapsBloc>(
          create: (_) => sl<MapsBloc>(),
        ),
      ],
      child: Center(
        child: Stack(
          children: <Widget>[
            BlocListener<BusTripsBloc, BusTripsState>(
              listener: (BuildContext context, BusTripsState state) {
                if (state is BusTripsInitial) {
                  _load(context);
                  return Stack(children: <Widget>[
                    const MobilityBusControls(),
                    const MobilityControls(),
                  ]);
                } else if (state is BusTripsLoading) {
                  return Stack(
                    children: <Widget>[
                      const CircularProgressIndicator(),
                      const MobilityBusControls(),
                      const MobilityControls(),
                    ],
                  );
                } else if (state is BusTripsLoaded) {
                  //TODO fetchMapsEvent
                  return Stack(
                    children: <Widget>[
                      const MapsScreen(),
                      const MobilityBusControls(),
                      const MobilityControls(),
                      //TODO détails de bus/train
                    ],
                  );
                } else if (state is BusTripsError) {
                  return Stack(
                    children: <Widget>[
                      Center(
                        child: Text(state.message),
                      ),
                      const MobilityBusControls(),
                      const MobilityControls(),
                    ],
                  );
                }
                return null;
              },
            ),
            BlocListener<TrainTripsBloc, TrainTripsState>(
              listener: (BuildContext context, TrainTripsState state) {
                if (state is TrainTripsInitial) {
                  _load(context);
                  return Stack(children: <Widget>[
                    const MobilityTrainControls(),
                    const MobilityControls(),
                  ]);
                } else if (state is TrainTripsLoading) {
                  return Stack(
                    children: <Widget>[
                      const CircularProgressIndicator(),
                      const MobilityTrainControls(),
                      const MobilityControls(),
                    ],
                  );
                } else if (state is TrainTripsLoaded) {
                  //TODO fetchMapsEvent
                  return Stack(
                    children: <Widget>[
                      const MapsScreen(),
                      const MobilityTrainControls(),
                      const MobilityControls(),
                      //TODO détails de bus/train
                    ],
                  );
                } else if (state is TrainTripsError) {
                  return Stack(
                    children: <Widget>[
                      Center(
                        child: Text(state.message),
                      ),
                      const MobilityTrainControls(),
                      const MobilityControls(),
                    ],
                  );
                }
                return null;
              },
            ),
          ],
        ),
      ),
    );
  }

  void _load(BuildContext context) {
    context.bloc<BusTripsBloc>().add(const FetchBusEvent(Direction.Aller));
  }
}

class MapsScreen extends StatelessWidget {
  const MapsScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapsBloc, MapsState>(
      builder: (context, state) {
        if (state is MapsLoading) {
          return const LinearProgressIndicator();
        } else if (state is MapsLoaded) {
          return Maps(state.position);
        } else if (state is MapsError) {
          return Text(state.message);
        } else {
          return Container();
        }
      },
    );
  }
}
