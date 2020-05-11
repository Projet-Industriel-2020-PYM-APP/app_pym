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
    // Si c'est Aller, on va du début jusqu'au break,
    // sinon on part de la fin.
    final Iterable<StopTime> stopTimes =
        direction == Direction.Aller ? this.stop_time : this.stop_time.reversed;

    for (final StopTime stopTime in stopTimes) {
      final LatLngNamed position = LatLngNamed(
        double.parse(stopTime.stop.stop_lat),
        double.parse(stopTime.stop.stop_long),
        name: polylineId + stopTime.stop.stop_name,
      );

      if (polylineId.startsWith("bus")) {
        yield position;
        if (stopTime.stop.stop_name == MobilityConstants.pymStop) {
          break;
        }
      }
      if (polylineId.startsWith("train")) {
        yield position;
        if (stopTime.stop.stop_name == MobilityConstants.gareGardanne) {
          break;
        }
      }
    }
  }
}
