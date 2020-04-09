import 'dart:async';

import 'package:app_pym/core/permission_handler/permission_handler.dart';
import 'package:app_pym/data/devices/compass_device.dart';
import 'package:app_pym/injection_container.dart';
import 'package:app_pym/presentation/blocs/cartographie/compass/compass_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';
import 'package:injectable/injectable.dart' show Environment;
import 'package:mockito/mockito.dart';

void main() {
  CompassBloc bloc;
  PermissionHandler mockPermissionHandler;
  CompassDevice mockCompassDevice;

  init(env: Environment.test);

  setUp(() {
    mockCompassDevice = sl<CompassDevice>();
    mockPermissionHandler = sl<PermissionHandler>();
    bloc = CompassBloc(
      compassDevice: mockCompassDevice,
      permissionHandler: mockPermissionHandler,
    );
  });

  test('initialState should be CompassInitial', () {
    // assert
    expect(bloc.initialState, equals(const CompassInitial()));
  });

  group('LoadHeadingEvent', () {
    test(
      'should emit [CompassInitial, CompassLoading, CompassMovingLoading, CompassStopMovingLoading, CompassLoaded] when data is gotten successfully',
      () async {
        // arrange
        when(mockCompassDevice.heading).thenAnswer((_) async* {
          yield* Stream.fromIterable(List.generate(600, (index) => 1.0));
          yield await Future.delayed(const Duration(seconds: 5), () => 0.0);
        });
        when(mockPermissionHandler.cameraIsGranted)
            .thenAnswer((_) async => true);
        when(mockPermissionHandler.locationWhenInUseIsGranted)
            .thenAnswer((_) async => true);
        when(mockPermissionHandler.locationIsEnabled)
            .thenAnswer((_) async => true);
        // assert later
        const expected = [
          CompassInitial(),
          CompassLoading(),
          CompassMovingLoading(),
          CompassStopMovingLoading(),
          CompassLoaded(0.0),
        ];
        final Future<void> future = expectLater(bloc, emitsInOrder(expected));
        // act
        bloc.add(const LoadHeadingEvent());
        await future;
      },
    );

    test(
      'should emit [CompassInitial, CompassLoading, CompassNotPermitted] when cameraIsGranted false',
      () async {
        // arrange
        when(mockPermissionHandler.cameraIsGranted)
            .thenAnswer((_) async => false);
        when(mockPermissionHandler.locationWhenInUseIsGranted)
            .thenAnswer((_) async => true);
        when(mockPermissionHandler.locationIsEnabled)
            .thenAnswer((_) async => true);
        // assert later
        const expected = [
          CompassInitial(),
          CompassLoading(),
          CompassNotPermitted(
            cameraIsGranted: false,
            locationIsEnabled: true,
            locationIsGranted: true,
          ),
        ];
        final Future<void> future = expectLater(bloc, emitsInOrder(expected));
        // act
        bloc.add(const LoadHeadingEvent());
        await future;
        verifyZeroInteractions(mockCompassDevice);
      },
    );

    test(
      'should emit [CompassInitial, CompassLoading, CompassNotPermitted] when locationWhenInUseIsGranted false',
      () async {
        // arrange
        when(mockCompassDevice.heading).thenAnswer(
            (_) => Stream.fromIterable(List.generate(600, (index) => 1.0)));
        when(mockPermissionHandler.cameraIsGranted)
            .thenAnswer((_) async => true);
        when(mockPermissionHandler.locationWhenInUseIsGranted)
            .thenAnswer((_) async => false);
        when(mockPermissionHandler.locationIsEnabled)
            .thenAnswer((_) async => true);
        // assert later
        const expected = [
          CompassInitial(),
          CompassLoading(),
          CompassNotPermitted(
            locationIsGranted: false,
            locationIsEnabled: true,
            cameraIsGranted: true,
          ),
        ];
        final Future<void> future = expectLater(bloc, emitsInOrder(expected));
        // act
        bloc.add(const LoadHeadingEvent());
        await future;
      },
    );
  });
}

class MockUnityWidgetController extends Mock implements UnityWidgetController {}
