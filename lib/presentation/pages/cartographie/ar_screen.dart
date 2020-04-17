import 'dart:async';
import 'dart:io';

import 'package:app_pym/core/keys/keys.dart';
import 'package:app_pym/core/routes/routes.dart';
import 'package:app_pym/presentation/blocs/cartographie/ar_view/ar_view_bloc.dart';
import 'package:app_pym/presentation/blocs/cartographie/compass/compass_bloc.dart';
import 'package:app_pym/presentation/pages/cartographie/ar_view.dart';
import 'package:flutter/material.dart';
import 'package:app_pym/injection_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';

class ArScreen extends StatelessWidget {
  const ArScreen({
    Key key,
  }) : super(key: key);

  Future<bool> goBack(BuildContext context) async {
    await Navigator.pushReplacementNamed(context, RoutePaths.root);
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => goBack(context),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            key: const Key(KeysStringNavigation.goBackAlternative),
            icon: const Icon(Icons.arrow_back),
            onPressed: () => goBack(context),
          ),
          title: const Text("Réalité Augmentée"),
        ),
        body: buildBody(context),
      ),
    );
  }

  Widget buildBody(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ArViewBloc>(create: (_) => sl<ArViewBloc>()),
        BlocProvider<CompassBloc>(
            create: (_) => sl<CompassBloc>()..add(const LoadHeadingEvent())),
      ],
      child: BlocConsumer<CompassBloc, CompassState>(
        listener: (context, state) async {
          if (state is CompassNotPermitted && Platform.isAndroid) {
            await Permission.locationWhenInUse.shouldShowRequestRationale;
            await Permission.camera.shouldShowRequestRationale;
          }
        },
        builder: (context, state) {
          return state.map(
            initial: (_) => const LinearProgressIndicator(
              semanticsLabel: "AR is loading",
            ),
            loading: (_) => const LinearProgressIndicator(
              semanticsLabel: "AR is loading",
            ),
            movingLoading: (_) {
              return const MovingLoadingWidget();
            },
            stopMovingLoading: (_) {
              return const StopMovingLoadingWidget();
            },
            loaded: (_) => const ArMainScreen(),
            notPermitted: (s) => ArNotPermittedScreen(s),
          );
        },
      ),
    );
  }
}

class StopMovingLoadingWidget extends StatelessWidget {
  const StopMovingLoadingWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const LinearProgressIndicator(
          semanticsLabel: "AR is loading",
        ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            color: Colors.white,
            child: Text(
              "Veuillez arrêter d'agiter l'appareil.",
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
        ),
      ],
    );
  }
}

class MovingLoadingWidget extends StatelessWidget {
  const MovingLoadingWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        ValueListenableBuilder<double>(
          valueListenable: context.bloc<CompassBloc>().progress,
          builder: (context, value, _) => LinearProgressIndicator(
            semanticsLabel: "AR is loading",
            value: value,
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Veuillez agiter l'appareil.",
                style: Theme.of(context).textTheme.headline6,
              ),
              Image.asset('assets/images/cartographie/move.gif'),
            ],
          ),
        ),
      ],
    );
  }
}

class ArNotPermittedScreen extends StatelessWidget {
  final CompassNotPermitted state;

  const ArNotPermittedScreen(
    this.state, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          if (!state.cameraIsGranted)
            const Text("Les permissions Camera ne sont pas accordés."),
          if (!state.locationIsGranted)
            const Text("Les permissions Localisation ne sont pas accordés."),
          if (!state.locationIsEnabled)
            const Text("La localisation n'est pas activée."),
          RaisedButton(
            onPressed: () => openAppSettings(),
            child: Text(
              "Ouvrir les paramètres",
              style: Theme.of(context).textTheme.button,
            ),
          ),
        ],
      ),
    );
  }
}

class ArMainScreen extends StatelessWidget {
  const ArMainScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        const ArView(),
        BlocBuilder<ArViewBloc, ArViewState>(
          builder: (context, state) {
            return state.when(
              initial: () => const LinearProgressIndicator(
                semanticsLabel: "AR is loading",
              ),
              loaded: () => Container(),
              loading: () => const LinearProgressIndicator(
                semanticsLabel: "AR is loading",
              ),
              error: (e) => Text(e.toString()),
            );
          },
        )
      ],
    );
  }
}
