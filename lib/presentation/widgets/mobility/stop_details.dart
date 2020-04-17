import 'package:app_pym/presentation/blocs/mobility/stop_details/stop_details_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StopDetails extends StatefulWidget {
  const StopDetails({Key key}) : super(key: key);

  @override
  _StopDetailsState createState() => _StopDetailsState();
}

class _StopDetailsState extends State<StopDetails> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<StopDetailsBloc, StopDetailsState>(
        listener: (BuildContext context, StopDetailsState state) {
      //TODO implement
    });
  }
}
