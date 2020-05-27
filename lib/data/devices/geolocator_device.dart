import 'dart:math' as math;

import 'package:app_pym/core/error/exceptions.dart';
import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

abstract class GeolocatorDevice {
  /// Get a stream of positions
  Stream<Position> get positions;

  /// Returns bearing between coordinates in radians
  ///
  /// Arguments are in degrees
  double bearingBetween(
    num startLatitude,
    num startLongitude,
    num endLatitude,
    num endLongitude,
  );

  /// Returns current permission level
  Future<GeolocationStatus> checkGeolocationPermissionStatus();

  /// Returns distance between coordinates in meters
  ///
  /// Arguments are in degrees
  double distanceBetween(
    num startLatitude,
    num startLongitude,
    num endLatitude,
    num endLongitude,
  );
}

@prod
@LazySingleton(as: GeolocatorDevice)
class GeolocatorDeviceImpl implements GeolocatorDevice {
  final Geolocator geolocator;

  const GeolocatorDeviceImpl({@required this.geolocator});

  @override
  Stream<Position> get positions async* {
    final GeolocationStatus permissionStatus =
        await checkGeolocationPermissionStatus();
    if (permissionStatus == GeolocationStatus.granted) {
      yield* geolocator.getPositionStream();
    } else {
      throw PermissionException("Permission Geolocation not granted.");
    }
  }

  @override
  double bearingBetween(
    num startLatitude,
    num startLongitude,
    num endLatitude,
    num endLongitude,
  ) {
    final num startLongRad = startLongitude.toRadians();
    final num startLatRad = startLatitude.toRadians();
    final num endLongRad = endLongitude.toRadians();
    final num endLatRad = endLatitude.toRadians();

    final num dLon = endLongRad - startLongRad;
    final double y = math.sin(dLon) * math.cos(endLatRad);
    final double x = math.cos(startLatRad) * math.sin(endLatRad) -
        math.sin(startLatRad) * math.cos(endLatRad) * math.cos(dLon);
    return math.atan2(y, x);
  }

  @override
  Future<GeolocationStatus> checkGeolocationPermissionStatus() =>
      geolocator.checkGeolocationPermissionStatus();

  @override
  double distanceBetween(
    num startLatitude,
    num startLongitude,
    num endLatitude,
    num endLongitude,
  ) {
    const earthRadius = 6371e3; // Metres
    final phi1 = startLatitude * math.pi / 180; // φ, λ in radians
    final phi2 = endLatitude * math.pi / 180;
    final dPhi = (endLatitude - startLatitude) * math.pi / 180;
    final dLamb = (endLongitude - endLatitude) * math.pi / 180;

    // Apply Haversine formula
    final a = math.sin(dPhi / 2) * math.sin(dPhi / 2) +
        math.cos(phi1) *
            math.cos(phi2) *
            math.sin(dLamb / 2) *
            math.sin(dLamb / 2);
    final c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a));

    return earthRadius * c;
  }
}

extension on num {
  num toRadians() {
    return this * math.pi / 180;
  }
}
