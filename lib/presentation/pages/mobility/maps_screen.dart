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
    return BlocBuilder<MapsBloc, MapsState>(
      builder: (BuildContext context, MapsState state) {
        return GoogleMap(
          mapType: MapType.normal,
          polylines: state.polylines,
          markers: state.markers,
          initialCameraPosition:
              CameraPosition(target: initialPosition, zoom: 15),
          onMapCreated: (GoogleMapController controller) {
            final tripsState = context.bloc<TripsBloc>().state;
            context.bloc<MapsBloc>().add(
                  MapsEvent.load(
                    busTrips: tripsState.busTrips,
                    isBus: tripsState.isBusLoaded,
                    trainTrips: tripsState.trainTrips,
                    isTrain: tripsState.isTrainLoaded,
                    direction: tripsState.direction,
                  ),
                );
          },
        );
      },
    );
  }
}
