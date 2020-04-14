import 'dart:async';

import 'package:app_pym/data/devices/geolocator_device.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';

part 'maps_bloc.freezed.dart';
part 'maps_event.dart';
part 'maps_state.dart';

@prod
@injectable
class MapsBloc extends Bloc<MapsEvent, MapsState> {
  final GeolocatorDevice geolocatorDevice;
  GoogleMapController controller;
  StreamSubscription<LatLng> streamSubscription;

  MapsBloc({@required this.geolocatorDevice});

  @override
  MapsState get initialState => const MapsState.initial();

  @override
  Stream<MapsState> mapEventToState(
    MapsEvent event,
  ) async* {
    yield* event.when(
      fetch: (controller) async* {
        yield const MapsState.loading();
        try {
          await streamSubscription?.cancel();
          this.controller = controller;
          final positions = geolocatorDevice.positions
              .map((position) => LatLng(position.latitude, position.longitude));
          // TODO : Add markers

          yield MapsState.loaded(positions);
        } catch (e) {
          yield MapsState.error(e.toString());
        }
      },
      hide: () async* {
        yield const MapsState.initial();
      },
    );
  }

  @override
  Future<void> close() async {
    await streamSubscription?.cancel();
    return super.close();
  }
}
