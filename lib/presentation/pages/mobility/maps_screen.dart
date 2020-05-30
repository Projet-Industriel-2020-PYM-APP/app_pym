import 'package:app_pym/presentation/blocs/mobility/maps/maps_bloc.dart';
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
      builder: (context, state) {
        return GoogleMap(
          mapType: MapType.normal,
          polylines: context.bloc<MapsBloc>().polylines,
          markers: context.bloc<MapsBloc>().markers,
          myLocationEnabled: true,
          initialCameraPosition:
              CameraPosition(target: initialPosition, zoom: 15),
          onMapCreated: (GoogleMapController controller) {
            context.bloc<MapsBloc>().controller.complete(controller);
          },
          buildingsEnabled: true,
          compassEnabled: true,
          indoorViewEnabled: true,
          key: const Key('google_maps'),
        );
      },
    );
  }
}
