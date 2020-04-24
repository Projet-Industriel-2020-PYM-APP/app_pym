import 'package:app_pym/core/constants/mobility.dart';
import 'package:app_pym/injection_container.dart';
import 'package:app_pym/presentation/blocs/mobility/stop_details/stop_details_bloc.dart';
import 'package:app_pym/presentation/pages/mobility/maps_screen.dart';
import 'package:app_pym/presentation/blocs/mobility/maps/maps_bloc.dart';
import 'package:app_pym/presentation/blocs/mobility/trips/trips_bloc.dart';
import 'package:app_pym/presentation/widgets/mobility/mobility_controls.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MobilitePage extends StatelessWidget {
  const MobilitePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildBody(context);
  }

  Widget buildBody(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TripsBloc>(
          create: (_) {
            final bloc = sl<TripsBloc>();
            //TODO bloc.add(TripsEvent.fetchBus(bloc.state.direction));
            bloc.add(TripsEvent.fetchTrain(bloc.state.direction));
            return bloc;
          },
        ),
        BlocProvider<MapsBloc>(
          create: (_) => sl<MapsBloc>(),
        ),
        BlocProvider<StopDetailsBloc>(
          create: (_) => sl<StopDetailsBloc>(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<TripsBloc, TripsState>(
            listener: (context, state) {
              Direction hideDirection = Direction.Aller;
              if (context.bloc<TripsBloc>().state.direction ==
                  Direction.Aller) {
                hideDirection = Direction.Retour;
              }
              context.bloc<MapsBloc>().add(MapsEvent.hide(
                    isBus: !context.bloc<TripsBloc>().state.isBusLoaded,
                    isTrain: !context.bloc<TripsBloc>().state.isTrainLoaded,
                    direction: hideDirection,
                  ));
              context.bloc<MapsBloc>().add(MapsEvent.load(
                    isBus: context.bloc<TripsBloc>().state.isBusLoaded,
                    isTrain: context.bloc<TripsBloc>().state.isTrainLoaded,
                    direction: context.bloc<TripsBloc>().state.direction,
                    trainTrips: context.bloc<TripsBloc>().state.trainTrips,
                    busTrips: context.bloc<TripsBloc>().state.busTrips,
                  ));
            },
          ),
          BlocListener<MapsBloc, MapsState>(
            listener: (context, state) {
              if (context.bloc<MapsBloc>().state.isBusLoaded) {
                //TODO add onTap() pour les markers de bus
              }
              if (context.bloc<MapsBloc>().state.isTrainLoaded) {
                //TODO add onTap() pour les markers de train
              }
            },
          ),
        ],
        child: const MobiliteBody(),
      ),
    );
  }
}

class MobiliteBody extends StatelessWidget {
  const MobiliteBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                if (context.bloc<TripsBloc>().state.isLoading)
                  const LinearProgressIndicator(),
                MapsScreen(
                  initialPosition: const LatLng(43.4506539, 5.4459134),
                ),
                const MobilityControls(),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: <Widget>[
                    const Text("Autres transports"),
                    Wrap(
                      children: <Widget>[
                        Column(
                          children: <Widget>[],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
