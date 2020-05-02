import 'dart:async';

import 'package:app_pym/core/constants/mobility.dart';
import 'package:app_pym/data/devices/geolocator_device.dart';
import 'package:app_pym/domain/entities/mobility/stop_time.dart';
import 'package:app_pym/domain/entities/mobility/trip.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
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
  MapsState get initialState => MapsState.initial();

  @override
  Stream<MapsState> mapEventToState(
    MapsEvent event,
  ) async* {
    yield* event.when(
      load: (isBus, isTrain, direction, busTrips, trainTrips) async* {
        yield state.loading();
        try {
          final Set<Polyline> polylines = {};
          final Set<Marker> markers = {};
          if (isBus) {
            polylines.add(polylineFromTrip(
                busTrips[0], direction, "bus_${direction}_1_", Colors.black));
            markers.addAll(
                markersFromTrip(busTrips[0], direction, "bus_${direction}_1_"));
            polylines.add(polylineFromTrip(
                busTrips[1], direction, "bus_${direction}_2_", Colors.black));
            markers.addAll(
                markersFromTrip(busTrips[1], direction, "bus_${direction}_2_"));
            yield state.busLoaded(polylines: polylines, markers: markers);
          }
          if (isTrain) {
            polylines.add(polylineFromTrip(trainTrips[0], direction,
                "train_${direction}_1_", Colors.orange));
            markers.addAll(markersFromTrip(
                trainTrips[0], direction, "train_${direction}_1_"));
            polylines.add(polylineFromTrip(trainTrips[1], direction,
                "train_${direction}_2_", Colors.orange));
            markers.addAll(markersFromTrip(
                trainTrips[1], direction, "train_${direction}_2_"));
            yield state.trainLoaded(polylines: polylines, markers: markers);
          }
        } on Exception catch (e) {
          yield state.error(e);
        }
      },
      hide: (isBus, isTrain, direction) async* {
        if (isBus) {
          yield state.hideBus(direction);
        }
        if (isTrain) {
          yield state.hideTrain(direction);
        }
        if (direction == Direction.Aller) {
          yield state.hideTrain(Direction.Retour);
          yield state.hideBus(Direction.Retour);
        } else {
          yield state.hideTrain(Direction.Aller);
          yield state.hideBus(Direction.Aller);
        }
      },
    );
  }

  @override
  Future<void> close() async {
    await streamSubscription?.cancel();
    return super.close();
  }

  Polyline polylineFromTrip(
      Trip trip, Direction direction, String id, Color couleur) {
    final List<LatLng> list = <LatLng>[];
    bool ajoute = direction == Direction.Aller;
    for (final StopTime stopTime in trip.stop_time) {
      final LatLng position = LatLng(double.parse(stopTime.stop.stop_lat),
          double.parse(stopTime.stop.stop_long));
      if (id.startsWith("bus")) {
        if (stopTime.stop.stop_name == MobilityConstants.pymStop) {
          list.add(position);
          ajoute = !ajoute;
        } else if (ajoute) {
          list.add(position);
        }
      } else {
        if (stopTime.stop.stop_name == MobilityConstants.gareGardanne) {
          list.add(position);
          ajoute = !ajoute;
        } else if (ajoute) {
          list.add(position);
        }
      }
    }
    return Polyline(
      polylineId: PolylineId(id),
      color: couleur,
      points: list,
      visible: true,
      width: 4,
    );
  }

  Set<Marker> markersFromTrip(Trip trip, Direction direction, String id) {
    final Set<Marker> markers = {};
    bool ajoute = direction == Direction.Aller;
    for (final StopTime stopTime in trip.stop_time) {
      final Marker marker = Marker(
        markerId: MarkerId(id + stopTime.stop.stop_name),
        position: LatLng(double.parse(stopTime.stop.stop_lat),
            double.parse(stopTime.stop.stop_long)),
        visible: true,
      );
      if (id.startsWith("bus")) {
        if (stopTime.stop.stop_name == MobilityConstants.pymStop) {
          markers.add(marker);
          ajoute = !ajoute;
        } else if (ajoute) {
          markers.add(marker);
        }
      } else {
        if (stopTime.stop.stop_name == MobilityConstants.gareGardanne) {
          markers.add(marker);
          ajoute = !ajoute;
        } else if (ajoute) {
          markers.add(marker);
        }
      }
    }
    return markers;
  }
}
