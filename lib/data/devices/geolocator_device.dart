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
    final startLongRad = startLongitude * math.pi / 180;
    final endLongRad = endLongitude * math.pi / 180;
    final startLatRad = startLatitude * math.pi / 180;
    final endLatRad = endLatitude * math.pi / 180;

    final dLon = endLongRad - startLongRad;
    final dLat = endLatRad - startLatRad;

    final a = math.pow(math.sin(dLat / 2), 2) +
        math.cos(startLatRad) *
            math.cos(endLatRad) *
            math.pow(math.sin(dLon / 2), 2);

    final c = 2 * math.asin(math.sqrt(a));

    return earthRadius * c;
  }
}

extension on num {
  num toRadians() {
    return this * math.pi / 180;
  }
}
