import 'package:app_pym/injection_container.dart';
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
            bloc.add(TripsEvent.fetchBus(bloc.state.direction));
            bloc.add(TripsEvent.fetchTrain(bloc.state.direction));
            return bloc;
          },
        ),
        BlocProvider<MapsBloc>(
          create: (_) => sl<MapsBloc>(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<TripsBloc, TripsState>(
            listener: (context, state) {
              if (state.isBusLoaded) {
                // context.bloc<MapsBloc>().add(MapsEvent.showBus(state.busTrips));
                // TODO : Load to GoogleMapsController
              }
            },
          ),
        ],
        child: Center(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    if (context.bloc<MapsBloc>().state.isLoading)
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
        ),
      ),
    );
  }
}
