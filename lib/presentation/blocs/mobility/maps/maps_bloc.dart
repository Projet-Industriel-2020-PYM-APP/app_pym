import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';

part 'maps_event.dart';
part 'maps_state.dart';

@prod
@injectable
class MapsBloc extends Bloc<MapsEvent, MapsState> {
  MapsBloc();

  @override
  MapsState get initialState => const MapsInitial();

  @override
  Stream<MapsState> mapEventToState(
    MapsEvent event,
  ) async* {
    if (event is FetchMapsEvent) {
      yield const MapsLoading();
      try {
        //TODO use lastKnownPosition
        final position = await Geolocator()
            .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
        yield MapsLoaded(LatLng(position.latitude, position.longitude));
      } catch (e) {
        yield MapsError(message: e.toString());
      }
    } else if (event is HideMapsEvent) {
      yield const MapsInitial();
    }
  }
}
