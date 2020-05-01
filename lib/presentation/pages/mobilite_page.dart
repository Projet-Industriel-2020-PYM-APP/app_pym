import 'dart:js';

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
    return Scaffold(
      body: MultiBlocProvider(
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
                      direction: context.bloc<TripsBloc>().state.direction,
                    )); //cache ce qui n'est pas chargé
                context.bloc<MapsBloc>().add(MapsEvent.hide(
                      isBus: context.bloc<TripsBloc>().state.isBusLoaded,
                      isTrain: context.bloc<TripsBloc>().state.isTrainLoaded,
                      direction: hideDirection,
                    )); //cache ce qui est chargé mais dans la mauvaise direction
                context.bloc<MapsBloc>().add(MapsEvent.load(
                      isBus: context.bloc<TripsBloc>().state.isBusLoaded,
                      isTrain: context.bloc<TripsBloc>().state.isTrainLoaded,
                      direction: context.bloc<TripsBloc>().state.direction,
                      trainTrips: context.bloc<TripsBloc>().state.trainTrips,
                      busTrips: context.bloc<TripsBloc>().state.busTrips,
                    )); //affiche les polylines et markers
              },
            ),
            BlocListener<MapsBloc, MapsState>(
              listener: (context, state) {
                if (context.bloc<MapsBloc>().state.isBusLoaded) {
                  for (final Marker marker
                      in context.bloc<MapsBloc>().state.markers) {
                    if (marker.markerId.value.startsWith("bus")) {
                      final Marker newMarker = Marker(
                        markerId: MarkerId("!" + marker.markerId.value),
                        consumeTapEvents: true,
                        onTap: () {
                          context
                              .bloc<StopDetailsBloc>()
                              .add(StopDetailsEvent.show(
                                id: marker.markerId.value,
                                trips: context.bloc<TripsBloc>().state.busTrips,
                                isBus: true,
                              ));
                          Scaffold.of(context)
                              .showBottomSheet<dynamic>((context) {
                            return const Details();
                          });
                        },
                        position: marker.position,
                        visible: true,
                      );
                      context.bloc<MapsBloc>().state.markers.remove(marker);
                      context.bloc<MapsBloc>().state.markers.add(newMarker);
                    }
                  }
                }
                if (context.bloc<MapsBloc>().state.isTrainLoaded) {
                  for (final Marker marker
                      in context.bloc<MapsBloc>().state.markers) {
                    if (marker.markerId.value.startsWith("train")) {
                      final Marker newMarker = Marker(
                        markerId: MarkerId("!" + marker.markerId.value),
                        consumeTapEvents: true,
                        onTap: () {
                          context
                              .bloc<StopDetailsBloc>()
                              .add(StopDetailsEvent.show(
                                id: marker.markerId.value,
                                trips:
                                    context.bloc<TripsBloc>().state.trainTrips,
                                isBus: false,
                              ));
                        },
                        position: marker.position,
                        visible: true,
                      );
                      context.bloc<MapsBloc>().state.markers.remove(marker);
                      context.bloc<MapsBloc>().state.markers.add(newMarker);
                    }
                  }
                }
              },
            ),
          ],
          child: const MobiliteBody(),
        ),
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
                          children: <Widget>[
                            //TODO autres transports
                          ],
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

class Details extends StatelessWidget {
  const Details({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: () =>
          context.bloc<StopDetailsBloc>().add(const StopDetailsEvent.hide()),
      builder: (BuildContext context) {
        if (context.bloc<StopDetailsBloc>().state.isLoading) {
          return const CircularProgressIndicator();
        } else if (context.bloc<StopDetailsBloc>().state.isError) {
          return Text(
              context.bloc<StopDetailsBloc>().state.exception.toString());
        } else {
          IconData icone;
          String ligne_name;
          if (context.bloc<StopDetailsBloc>().state.isBus) {
            icone = Icons.directions_bus;
            ligne_name = MobilityConstants.busLines[0];
          } else {
            icone = Icons.train;
            ligne_name = MobilityConstants.trainLines[0];
          }
          return Column(
            children: [
              Row(
                children: [
                  Icon(icone),
                  Text(ligne_name),
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.arrow_forward),
                  Text("Direction " +
                      context.bloc<StopDetailsBloc>().state.last_stop),
                ],
              ),
              Text(context.bloc<StopDetailsBloc>().state.stop_name),
              Row(
                children: [
                  const Icon(Icons.arrow_right),
                  Text(context.bloc<StopDetailsBloc>().state.stop_times[0]),
                ],
              ),
              Text(context.bloc<StopDetailsBloc>().state.stop_times[1]),
              Text(context.bloc<StopDetailsBloc>().state.stop_times[2]),
              ListView.builder(itemBuilder: (context, index) {
                Color couleur = Colors.black;
                IconData icone = Icons.arrow_drop_down;
                if (context
                        .bloc<StopDetailsBloc>()
                        .state
                        .trip[index]
                        .stop
                        .stop_name ==
                    context.bloc<StopDetailsBloc>().state.last_stop) {
                  icone = Icons.fiber_manual_record;
                }
                if (context
                        .bloc<StopDetailsBloc>()
                        .state
                        .trip[index]
                        .stop
                        .stop_name ==
                    context.bloc<StopDetailsBloc>().state.destination) {
                  couleur = Colors.red;
                }
                final TextStyle style =
                    TextStyle(inherit: true, color: couleur);
                return Row(
                  children: [
                    Icon(
                      icone,
                      color: couleur,
                    ),
                    Text(
                      context
                          .bloc<StopDetailsBloc>()
                          .state
                          .trip[index]
                          .stop
                          .stop_name,
                      style: style,
                    ),
                    Text(
                      context
                          .bloc<StopDetailsBloc>()
                          .state
                          .trip[index]
                          .arrival_time,
                      style: style,
                    ),
                  ],
                );
              }),
            ],
          );
        }
      },
    );
  }
}
