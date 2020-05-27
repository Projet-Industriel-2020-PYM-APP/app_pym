import 'package:app_pym/core/constants/mobility.dart';
import 'package:app_pym/core/utils/url_launcher_utils.dart';
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
    return BlocListener<TripsBloc, TripsState>(
      listener: (context, state) {
        context.bloc<MapsBloc>().add(MapsEvent.load(
              tripsState: state,
              scaffoldState: Scaffold.of(context),
            )); // Affiche les polylines et markers
      },
      child: const MobiliteBody(),
    );
  }
}

class MobiliteBody extends StatelessWidget {
  const MobiliteBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
              const MapsScreen(
                initialPosition: LatLng(43.4506539, 5.4459134),
              ),
              const MobilityControls(),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Card(
            elevation: 4.0,
            margin: const EdgeInsets.all(10.0),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Autres transports",
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.all(10.0),
                            height: 40.0,
                            width: 40.0,
                            child: Tooltip(
                              message: "BlaBlaCar",
                              child: InkWell(
                                onTap: () => UrlLauncherUtils.launch(
                                    "https://www.blablacar.fr/"),
                                child: Image.asset(
                                  "assets/images/mobilite/Logo_BlaBlaCar.png",
                                  fit: BoxFit.contain,
                                  color: Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? Theme.of(context)
                                          .textTheme
                                          .bodyText1
                                          .color
                                      : null,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(10.0),
                            height: 40.0,
                            width: 40.0,
                            child: Tooltip(
                              message: "Uber",
                              child: InkWell(
                                onTap: () => UrlLauncherUtils.launch(
                                    "https://www.uber.com/"),
                                child: Image.asset(
                                  "assets/images/mobilite/Logo_Uber.png",
                                  fit: BoxFit.contain,
                                  color: Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? Theme.of(context)
                                          .textTheme
                                          .bodyText1
                                          .color
                                      : null,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
