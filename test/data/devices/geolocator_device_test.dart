import 'dart:math';

import 'package:app_pym/core/error/exceptions.dart';
import 'package:app_pym/data/devices/geolocator_device.dart';
import 'package:app_pym/injection_container.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart' show Environment;
import 'package:matcher/matcher.dart';
import 'package:mockito/mockito.dart';

void main() {
  GeolocatorDevice device;
  Geolocator mockGeolocator;
  init(env: Environment.test);

  setUp(() {
    mockGeolocator = sl<Geolocator>();
    device = GeolocatorDeviceImpl(geolocator: mockGeolocator);
  });

  group('get positions', () {
    test(
      'should return Stream<double> if permission granted',
      () async {
        // arrange
        final tDateTime = DateTime.now();
        final tPosition = Position(
          latitude: 0,
          longitude: 0,
          heading: 0,
          accuracy: 0,
          altitude: 0,
          mocked: true,
          speed: 0,
          speedAccuracy: 0,
          timestamp: tDateTime,
        );
        when(mockGeolocator.getPositionStream(any)).thenAnswer(
            (_) => Stream<Position>.fromIterable(<Position>[tPosition]));
        when(mockGeolocator.checkGeolocationPermissionStatus())
            .thenAnswer((_) async => GeolocationStatus.granted);
        // act
        final result = await device.positions.first;
        // assert
        verify(mockGeolocator.getPositionStream());
        verify(mockGeolocator.checkGeolocationPermissionStatus());
        expect(result, equals(tPosition));
      },
    );

    test(
      'should throw a PermissionException if not permission not granted',
      () async {
        // arrange
        when(mockGeolocator.checkGeolocationPermissionStatus())
            .thenAnswer((_) async => GeolocationStatus.denied);
        // act
        final call = device.positions.drain;
        // assert
        expect(() => call<Position>(),
            throwsA(const TypeMatcher<PermissionException>()));
        verifyNever(mockGeolocator.getPositionStream());
      },
    );
  });

  group('checkGeolocationPermissionStatus', () {
    test('should return GeolocationStatus', () async {
      // arrange
      const tPermission = GeolocationStatus.denied;
      when(mockGeolocator.checkGeolocationPermissionStatus())
          .thenAnswer((_) async => tPermission);
      // act
      final result = await device.checkGeolocationPermissionStatus();
      // assert
      expect(result, equals(tPermission));
      verify(mockGeolocator.checkGeolocationPermissionStatus());
    });
  });

  group('bearingBetween', () {
    test(
      'should do the right calculation : 0 bearing',
      () async {
        // arrange
        const startLatitude = 50;
        const startLongitude = 50;
        const endLatitude = 50;
        const endLongitude = 50;
        // act
        final result = device.bearingBetween(
          startLatitude,
          startLongitude,
          endLatitude,
          endLongitude,
        );
        // assert
        expect(result, equals(0));
      },
    );

    test(
      'should do the right calculation : 45 bearing',
      () async {
        // arrange
        const startLatitude = 90;
        const startLongitude = 0;
        const endLatitude = 90;
        const endLongitude = 90;
        // act
        final result = device.bearingBetween(
          startLatitude,
          startLongitude,
          endLatitude,
          endLongitude,
        );
        // assert
        expect(result, equals(pi / 4));
      },
    );
  });
}
