import 'package:app_pym/core/constants/mobility.dart';
import 'package:app_pym/injection_container.dart';
import 'package:app_pym/presentation/blocs/mobility/stop_details/stop_details_bloc.dart';
import 'package:app_pym/presentation/pages/mobility/maps_screen.dart';
import 'package:app_pym/presentation/blocs/mobility/maps/maps_bloc.dart';
import 'package:app_pym/presentation/blocs/mobility/trips/trips_bloc.dart';
import 'package:app_pym/presentation/widgets/mobility/autres_transports.dart';
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
          create: (_) => sl<TripsBloc>()
            ..add(const TripsEvent.fetchBus(Direction.Aller))
            ..add(const TripsEvent.fetchTrain(Direction.Aller)),
        ),
        BlocProvider<MapsBloc>(
          create: (_) => sl<MapsBloc>()..add(const MapsEvent.appStarted()),
        ),
        BlocProvider<StopDetailsBloc>(
          create: (_) => sl<StopDetailsBloc>(),
        ),
      ],
      child: const Scaffold(
        body: MobiliteListenersWidget(
          child: MobiliteBody(),
        ),
      ),
    );
  }
}

class MobiliteListenersWidget extends StatelessWidget {
  final Widget child;

  const MobiliteListenersWidget({
    @required this.child,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<TripsBloc, TripsState>(
      listener: (context, state) {
        context.bloc<MapsBloc>().add(MapsEvent.load(
              tripsState: state,
              scaffoldState: Scaffold.of(context),
            )); // Affiche les polylines et markers
      },
      child: child,
    );
  }
}

class MobiliteBody extends StatelessWidget {
  const MobiliteBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                BlocBuilder<MapsBloc, MapsState>(
                  builder: (context, state) {
                    if (state.isLoading) {
                      return const LinearProgressIndicator();
                    } else {
                      return Container();
                    }
                  },
                ),
                BlocBuilder<TripsBloc, TripsState>(
                  builder: (context, state) {
                    if (state.isLoading) {
                      return const LinearProgressIndicator();
                    } else if (state.isError) {
                      return Text(state.exception.toString());
                    } else {
                      return Container();
                    }
                  },
                ),
                const Material(
                  elevation: 8.0,
                  child: MapsScreen(
                    initialPosition: LatLng(43.45600725, 5.46332194),
                  ),
                ),
                const MobilityControls(),
                const AutresTransports(),
              ],
            ),
          ),
          const Expanded(
            child: Scrollbar(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: NextPassagesCard(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NextPassagesCard extends StatelessWidget {
  const NextPassagesCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: BlocBuilder<TripsBloc, TripsState>(
          builder: (context, state) {
            return Wrap(
              children: <Widget>[
                const ListTile(
                  title: Text(
                    "Prochains Bus de l'arrêt Puits Morandat",
                  ),
                ),
                if (state.isBusLoaded) ..._buildBusTripWidgets(context, state),
                const ListTile(
                  title: Text(
                    "Prochains TER de la Gare de Gardanne",
                  ),
                ),
                if (state.isTrainLoaded)
                  ..._buildTrainTripWidgets(context, state),
              ],
            );
          },
        ),
      ),
    );
  }

  List<Widget> _buildBusTripWidgets(BuildContext context, TripsState state) {
    return state.busTrips
        .take(4)
        .map((trip) => Row(
              children: [
                Text(trip.stop_time
                    .firstWhere((stopTime) =>
                        stopTime.stop.stop_name == MobilityConstants.pymStop)
                    .arrival_time),
                Icon(
                  Icons.arrow_forward,
                  color: Theme.of(context).textTheme.subtitle2.color,
                ),
                Expanded(
                    child: Text(
                        "Destination " + trip.stop_time.last.stop.stop_name)),
              ],
            ))
        .toList();
  }

  List<Widget> _buildTrainTripWidgets(BuildContext context, TripsState state) {
    return state.trainTrips
        .take(4)
        .map((trip) => Row(
              children: [
                Text(trip.stop_time
                    .firstWhere((stopTime) =>
                        stopTime.stop.stop_name ==
                        MobilityConstants.gareGardanne)
                    .arrival_time),
                Icon(
                  Icons.arrow_forward,
                  color: Theme.of(context).textTheme.subtitle2.color,
                ),
                Expanded(
                    child: Text(
                        "Destination " + trip.stop_time.last.stop.stop_name)),
              ],
            ))
        .toList();
  }
}
