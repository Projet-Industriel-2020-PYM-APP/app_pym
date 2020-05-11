import 'package:app_pym/core/constants/mobility.dart';
import 'package:app_pym/presentation/blocs/mobility/trips/trips_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class DirectionControls extends StatefulWidget {
  final Direction direction;

  const DirectionControls(
    this.direction, {
    Key key,
  }) : super(key: key);

  @override
  _DirectionControlsState createState() => _DirectionControlsState();
}

class _DirectionControlsState extends State<DirectionControls> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        RaisedButton(
          disabledColor: Colors.black38,
          color: Theme.of(context).primaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          onPressed: widget.direction == Direction.Retour
              ? () {
                  context
                      .bloc<TripsBloc>()
                      .add(const TripsEvent.changeDirection(Direction.Aller));
                }
              : null,
          child: Text(
            "ALLER",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        RaisedButton(
          disabledColor: Colors.black38,
          color: Theme.of(context).primaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          onPressed: widget.direction == Direction.Aller
              ? () {
                  context
                      .bloc<TripsBloc>()
                      .add(const TripsEvent.changeDirection(Direction.Retour));
                }
              : null,
          child: Text(
            "PARTIR",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
