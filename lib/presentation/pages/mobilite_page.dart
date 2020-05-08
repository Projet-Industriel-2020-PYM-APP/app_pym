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
import 'package:url_launcher/url_launcher.dart';

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
        child: const MobiliteListenersWidget(),
      ),
    );
  }
}

class MobiliteListenersWidget extends StatelessWidget {
  const MobiliteListenersWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<TripsBloc, TripsState>(
          listener: (context, state) {
            Direction hideDirection = Direction.Aller;
            if (state.direction == Direction.Aller) {
              hideDirection = Direction.Retour;
            }
            context.bloc<MapsBloc>().add(MapsEvent.hide(
                  isBus: !state.isBusLoaded,
                  isTrain: !state.isTrainLoaded,
                  direction: state.direction,
                )); //cache ce qui n'est pas chargé
            context.bloc<MapsBloc>().add(MapsEvent.hide(
                  isBus: state.isBusLoaded,
                  isTrain: state.isTrainLoaded,
                  direction: hideDirection,
                )); //cache ce qui est chargé mais dans la mauvaise direction
            context.bloc<MapsBloc>().add(MapsEvent.load(
                  isBus: state.isBusLoaded,
                  isTrain: state.isTrainLoaded,
                  direction: state.direction,
                  trainTrips: state.trainTrips,
                  busTrips: state.busTrips,
                )); //affiche les polylines et markers
          },
        ),
        BlocListener<MapsBloc, MapsState>(
          listener: (context, state) {
            final tripState = context.bloc<TripsBloc>().state;
            if (state.isBusLoaded) {
              for (final Marker marker in state.markers) {
                if (marker.markerId.value.startsWith("bus")) {
                  final Marker newMarker = Marker(
                    markerId: MarkerId("!" +
                        marker.markerId.value), //pour ne traiter qu'une fois
                    consumeTapEvents: true,
                    onTap: () {
                      //ajoute les infos dans state
                      context.bloc<StopDetailsBloc>().add(StopDetailsEvent.show(
                            id: marker.markerId.value,
                            trips: tripState.busTrips,
                            isBus: true,
                          ));
                      //affiche la BottomSheet
                      Scaffold.of(context).showBottomSheet<dynamic>((context) {
                        return const Details();
                      });
                    },
                    position: marker.position,
                    visible: true,
                  );
                  //remplace le marqueur sans action par le nouveau
                  state.markers.remove(marker);
                  state.markers.add(newMarker);
                }
              }
            }
            if (state.isTrainLoaded) {
              for (final Marker marker in state.markers) {
                if (marker.markerId.value.startsWith("train")) {
                  final Marker newMarker = Marker(
                    markerId: MarkerId("!" +
                        marker.markerId.value), //pour ne traiter qu'une fois
                    consumeTapEvents: true,
                    onTap: () {
                      //ajoute les infos dans state
                      context.bloc<StopDetailsBloc>().add(StopDetailsEvent.show(
                            id: marker.markerId.value,
                            trips: tripState.trainTrips,
                            isBus: false,
                          ));
                      //affiche la BottomSheet
                      Scaffold.of(context).showBottomSheet<dynamic>((context) {
                        return const Details();
                      });
                    },
                    position: marker.position,
                    visible: true,
                  );
                  //remplace le marqueur sans action par le nouveau
                  state.markers.remove(marker);
                  state.markers.add(newMarker);
                }
              }
            }
          },
        ),
      ],
      child: const MobiliteBody(),
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
                const MapsScreen(
                  initialPosition: LatLng(43.4506539, 5.4459134),
                ),
                const MobilityControls(),
                if (context.bloc<TripsBloc>().state.isError)
                  Text(context.bloc<TripsBloc>().state.exception.toString()),
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
                        FlatButton(
                          onPressed: () =>
                              _launchURL("https://www.blablacar.fr/"),
                          child: const Image(
                              image: AssetImage(
                                  "images/mobilite/Logo_BlaBlaCar.png")),
                        ),
                        FlatButton(
                          onPressed: () => _launchURL("https://www.uber.com/"),
                          child: const Image(
                              image:
                                  AssetImage("images/mobilite/Logo_Uber.png")),
                        )
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

void _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw Exception('Could not launch $url');
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
        final stopDetailsState = context.bloc<StopDetailsBloc>().state;
        if (stopDetailsState.isLoading) {
          return const CircularProgressIndicator();
        } else if (stopDetailsState.isError) {
          return Text(stopDetailsState.exception.toString());
        } else {
          IconData icone;
          String ligne_name;
          if (stopDetailsState.isBus) {
            icone = Icons.directions_bus;
            ligne_name = MobilityConstants.busLine;
          } else {
            icone = Icons.train;
            ligne_name = MobilityConstants.trainLine;
          }
          return Column(
            children: [
              Row(
                children: [
                  Icon(icone),
                  Text(
                    ligne_name,
                    style: DefaultTextStyle.of(context)
                        .style
                        .apply(fontSizeFactor: 2.0),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.black.withOpacity(0.5),
                  ),
                  Text(
                    "Direction " + stopDetailsState.last_stop,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
              Text(
                stopDetailsState.stop_name,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
              Row(
                children: [
                  const Icon(Icons.arrow_right),
                  Text(
                    stopDetailsState.stop_times[0],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Text(stopDetailsState.stop_times[1]),
              Text(stopDetailsState.stop_times[2]),
              ListView.builder(itemBuilder: (context, index) {
                //valeurs par défaut
                Color couleur = Colors.black;
                IconData icone = Icons.arrow_drop_down;

                if (stopDetailsState.trip[index].stop.stop_name ==
                    stopDetailsState.last_stop) {
                  icone = Icons.fiber_manual_record;
                }
                if (stopDetailsState.trip[index].stop.stop_name ==
                    stopDetailsState.stop_name) {
                  icone = Icons.fiber_manual_record;
                }
                if (stopDetailsState.trip[index].stop.stop_name ==
                    stopDetailsState.destination) {
                  couleur = Colors.red;
                }
                //création des styles
                final TextStyle name_style = TextStyle(
                  color: couleur,
                  fontWeight: FontWeight.bold,
                );
                final TextStyle hour_style = TextStyle(color: couleur);

                return Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Icon(
                        icone,
                        color: couleur,
                      ),
                    ),
                    Text(
                      stopDetailsState.trip[index].stop.stop_name,
                      style: name_style,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Text(
                        stopDetailsState.trip[index].arrival_time,
                        style: hour_style,
                      ),
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
