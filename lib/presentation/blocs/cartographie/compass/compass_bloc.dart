import 'dart:async';

import 'package:app_pym/core/permission_handler/permission_handler.dart';
import 'package:app_pym/data/devices/compass_device.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

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
  CompassState get initialState => const CompassInitial();

  @override
  Stream<CompassState> mapEventToState(
    CompassEvent event,
  ) async* {
    if (event is LoadHeadingEvent) {
      yield const CompassLoading();

      final cameraIsGranted = permissionHandler.cameraIsGranted;
      final locationWhenInUseIsGranted =
          permissionHandler.locationWhenInUseIsGranted;
      final locationIsEnabled = permissionHandler.locationIsEnabled;

      if (await cameraIsGranted &&
          await locationWhenInUseIsGranted &&
          await locationIsEnabled) {
        int index = 0;
        progress.value = 0.0;
        await subscription?.cancel();
        final stream = compassDevice.heading.asBroadcastStream();
        subscription = stream.listen((data) {
          index++;
          progress.value = index / 100;
        });
        yield const CompassMovingLoading();
        await stream.elementAt(100);
        yield const CompassStopMovingLoading();

        final bearing = await Future<double>.delayed(
          const Duration(seconds: 2),
          () => stream.first,
        );
        await subscription.cancel();
        yield CompassLoaded(bearing);
      } else {
        yield CompassNotPermitted(
          cameraIsGranted: await cameraIsGranted,
          locationIsEnabled: await locationIsEnabled,
          locationIsGranted: await locationWhenInUseIsGranted,
        );
      }
    }
  }

  @override
  Future<void> close() async {
    await subscription?.cancel();
    progress.dispose();
    return super.close();
  }
}
