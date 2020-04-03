import 'package:app_pym/injection_container.dart';
import 'package:app_pym/presentation/blocs/mobility/mobility_bloc.dart';
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

  BlocProvider<MobilityBloc> buildBody(BuildContext context) {
    return BlocProvider<MobilityBloc>(
      create: (_) => sl<MobilityBloc>(),
      child: Center(
        child: BlocBuilder<MobilityBloc, MobilityState>(
          builder: (BuildContext context, MobilityState state) {
            if (state is MobilityStateInitial) {
              return Column(
                children: <Widget>[
                  MobilityControls(),
                ],
              );
            } else if (state is MobilityStateBusAllerLoading) {
              return Column(
                children: <Widget>[
                  MobilityControls(),
                  MobilityBusControls(),
                  CircularProgressIndicator(),
                ],
              );
            } else if (state is MobilityStateBusAllerLoaded) {
              return Column(
                children: <Widget>[
                  MobilityControls(),
                  MobilityBusControls(),
                  BusAllerDisplay(),
                ],
              );
            } else if (state is MobilityStateError) {
              return Column(
                children: <Widget>[
                  MobilityControls(),
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
