import 'package:app_pym/presentation/blocs/mobility/mobility_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class MobilityBusControls extends StatefulWidget {
  const MobilityBusControls({Key key}) : super(key: key);

  @override
  _MobilityBusControlsState createState() => _MobilityBusControlsState();
}

class _MobilityBusControlsState extends State<MobilityBusControls> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text("Changer de sens"),
        IconButton(
          icon: Icon(Icons.swap_horiz),
          onPressed: () => changeDirection("retour"),
        ),
      ],
    );
  }

  void changeDirection(String sens) {
    if (sens == "retour") {
      context.bloc<MobilityBloc>().add(FetchBusRetourEvent("BusRetour"));
    } else if (sens == "aller") {
      context.bloc<MobilityBloc>().add(FetchBusAllerEvent("BusAller"));
    }
  }
}
