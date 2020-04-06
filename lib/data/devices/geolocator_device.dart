import 'dart:math' as math;

import 'package:app_pym/core/error/exceptions.dart';
import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

abstract class GeolocatorDevice {
  /// Get a stream of positions
  Stream<Position> get positions;

  /// Returns current permission level
  Future<GeolocationStatus> checkGeolocationPermissionStatus();

  /// Returns bearing between coordinates in radians
  ///
  /// Arguments are in degrees
  double bearingBetween(
    num startLatitude,
    num startLongitude,
    num endLatitude,
    num endLongitude,
  );
}

@RegisterAs(GeolocatorDevice)
@prod
@lazySingleton
@injectable
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
  Future<GeolocationStatus> checkGeolocationPermissionStatus() =>
      geolocator.checkGeolocationPermissionStatus();

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
}

extension on num {
  num toRadians() {
    return this * math.pi / 180;
  }
}
