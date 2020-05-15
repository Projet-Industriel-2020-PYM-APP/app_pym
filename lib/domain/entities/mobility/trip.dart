import 'dart:ui' show Offset;

import 'package:app_pym/core/constants/mobility.dart';
import 'package:app_pym/domain/entities/mobility/calendar.dart';
import 'package:app_pym/domain/entities/mobility/stop_time.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart'
    show BitmapDescriptor, InfoWindow, LatLng, Marker, MarkerId;

part 'trip.freezed.dart';

class LatLngNamed extends LatLng {
  final String name;

  const LatLngNamed(double latitude, double longitude, {@required this.name})
      : super(latitude, longitude);

  Marker toMarker({
    @required BitmapDescriptor icon,
    @required InfoWindow infoWindow,
  }) {
    return Marker(
      markerId: MarkerId(this.name),
      anchor: const Offset(0.5, 0.5),
      position: this,
      visible: true,
      icon: icon,
      infoWindow: infoWindow,
    );
  }
}

@freezed
abstract class Trip with _$Trip {
  const factory Trip({
    String service_id,
    String route_id,
    String trip_id,
    String trip_headsign,
    Direction direction_id,
    Calendar calendar,
    List<StopTime> stop_time,
  }) = _Trip;
}

extension TripX on Trip {
  Stream<LatLngNamed> toPoints(
    Direction direction, {
    @required String polylineId,
  }) async* {
    // Si c'est Aller, on va du début jusqu'à la destination,
    // sinon on ajoute qu'à partir de la destination.
    bool ajouteBus = direction == Direction.Aller;
    bool ajouteTrain = direction == Direction.Aller;
    for (final StopTime stopTime in this.stop_time) {
      final LatLngNamed position = LatLngNamed(
        double.parse(stopTime.stop.stop_lat),
        double.parse(stopTime.stop.stop_long),
        name: stopTime.stop.stop_name,
      );

      if (polylineId.startsWith("bus")) {
        if (stopTime.stop.stop_name == MobilityConstants.pymStop) {
          ajouteBus = !ajouteBus;
          yield position;
        } else if (ajouteBus) {
          yield position;
        }
      }
      if (polylineId.startsWith("train")) {
        if (stopTime.stop.stop_name == MobilityConstants.gareGardanne) {
          ajouteTrain = !ajouteTrain;
          yield position;
        } else if (ajouteTrain) {
          yield position;
        }
      }
    }
  }
}
