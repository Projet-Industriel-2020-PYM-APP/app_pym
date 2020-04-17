import 'package:app_pym/core/constants/mobility.dart';
import 'package:app_pym/presentation/blocs/mobility/maps/maps_bloc.dart';
import 'package:app_pym/presentation/blocs/mobility/trips/trips_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsScreen extends StatelessWidget {
  final LatLng initialPosition;

  const MapsScreen({
    @required this.initialPosition,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      mapType: MapType.normal,
      polylines: context.bloc<MapsBloc>().state.polylines,
      markers: context.bloc<MapsBloc>().state.markers,
      initialCameraPosition: CameraPosition(target: initialPosition),
      onMapCreated: (GoogleMapController controller) {
        context.bloc<MapsBloc>().add(MapsEvent.load(
            context.bloc<TripsBloc>().state.busTrips,
            true,
            context.bloc<TripsBloc>().state.trainTrips,
            true,
            Direction.Aller));
      },
    );
  }
}
