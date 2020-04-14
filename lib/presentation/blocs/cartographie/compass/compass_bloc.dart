import 'dart:async';

import 'package:app_pym/core/permission_handler/permission_handler.dart';
import 'package:app_pym/data/devices/compass_device.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';

part 'compass_bloc.freezed.dart';
part 'compass_event.dart';
part 'compass_state.dart';

@prod
@injectable
class CompassBloc extends Bloc<CompassEvent, CompassState> {
  final PermissionHandler permissionHandler;
  final CompassDevice compassDevice;
  StreamSubscription<double> subscription;
  final ValueNotifier<double> progress = ValueNotifier<double>(0.0);

  CompassBloc({
    @required this.permissionHandler,
    @required this.compassDevice,
  });

  @override
  CompassState get initialState => const CompassState.initial();

  @override
  Future<void> close() async {
    await subscription?.cancel();
    progress.dispose();
    return super.close();
  }

  @override
  Stream<CompassState> mapEventToState(
    CompassEvent event,
  ) async* {
    yield const CompassState.loading();

    final statuses = await permissionHandler.requestPermissions;
    final locationIsEnabled = permissionHandler.locationIsEnabled;

    if (statuses[Permission.camera] == PermissionStatus.granted &&
        statuses[Permission.locationWhenInUse] == PermissionStatus.granted &&
        await locationIsEnabled) {
      int index = 0;
      progress.value = 0.0;
      await subscription?.cancel();
      final stream = compassDevice.heading.asBroadcastStream();
      subscription = stream.listen((data) {
        index++;
        progress.value = index / 100;
      });
      yield const CompassState.movingLoading();
      await stream.elementAt(100);
      yield const CompassState.stopMovingLoading();

      final bearing = await Future<double>.delayed(
        const Duration(seconds: 2),
        () => stream.first,
      );
      await subscription.cancel();
      yield CompassState.loaded(bearing);
    } else {
      yield CompassState.notPermitted(
        cameraIsGranted:
            statuses[Permission.camera] == PermissionStatus.granted,
        locationIsEnabled: await locationIsEnabled,
        locationIsGranted:
            statuses[Permission.locationWhenInUse] == PermissionStatus.granted,
      );
    }
  }
}
