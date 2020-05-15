import 'dart:async';

import 'package:app_pym/core/constants/mobility.dart';
import 'package:app_pym/core/permission_handler/permission_handler.dart';
import 'package:app_pym/core/utils/icons_utils.dart';
import 'package:app_pym/domain/entities/mobility/trip.dart';
import 'package:app_pym/presentation/blocs/mobility/trips/trips_bloc.dart';
import 'package:app_pym/presentation/widgets/mobility/details_bottom_sheet.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart'
    show
        BorderRadiusDirectional,
        Color,
        Colors,
        Icons,
        Offset,
        Radius,
        RoundedRectangleBorder,
        ScaffoldState,
        TextStyle;
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
  final PermissionHandler permissionHandler;
  Completer<GoogleMapController> controller = Completer<GoogleMapController>();
  final Set<Polyline> polylines = <Polyline>{};
  final Set<Marker> markers = <Marker>{};

  MapsBloc({
    @required this.permissionHandler,
  });

  @override
  MapsState get initialState => MapsState.initial();

  @override
  Stream<MapsState> mapEventToState(
    MapsEvent event,
  ) async* {
    yield* event.when(
      load: _mapLoadEventToState,
      appStarted: _mapAppStartedToState,
    );
  }

  Stream<MapsState> _mapAppStartedToState() async* {
    await permissionHandler.requestPermissionLocationWhenInUse;
    await permissionHandler.locationIsEnabled;
    yield state;
  }

  Stream<MapsState> _mapLoadEventToState(
    TripsState tripsState,
    ScaffoldState scaffoldState,
  ) async* {
    yield state.loading();
    markers.clear();
    polylines.clear();
    try {
      final busEndCap = await Icons.arrow_upward.toBitmapDescriptor(
        const TextStyle(color: Colors.black),
        size: 100,
        offset: const Offset(0.0, 48.0),
      );
      final trainEndCap = await Icons.arrow_upward.toBitmapDescriptor(
        const TextStyle(color: Colors.orange),
        size: 100,
        offset: const Offset(0.0, 48.0),
      );
      final busMarker = await Icons.fiber_manual_record.toBitmapDescriptor(
        const TextStyle(color: Colors.red),
        size: 64,
      );
      final trainMarker = await Icons.fiber_manual_record.toBitmapDescriptor(
        const TextStyle(color: Colors.red),
        size: 64,
      );

      if (tripsState.isBusLoaded) {
        await Future.wait<void>([
          tripsState.busTrips[0].trace(
            markers,
            direction: tripsState.direction,
            isBus: true,
            markerIcon: busMarker,
            endCapIcon: Cap.customCapFromBitmap(busEndCap),
            polylineId: "bus_${tripsState.direction}_1_",
            color: Colors.black,
            onTapMarker: (markerId) {
              scaffoldState.showBottomSheet<void>(
                (context) => DetailsBottomSheet(
                  tripsState.busTrips,
                  isBus: true,
                  markerId: markerId,
                ),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.only(
                    topStart: Radius.circular(10.0),
                    topEnd: Radius.circular(10.0),
                  ),
                ),
              );
            },
          ).then(polylines.add),
          tripsState.busTrips[1].trace(
            markers,
            direction: tripsState.direction,
            isBus: true,
            markerIcon: busMarker,
            endCapIcon: Cap.customCapFromBitmap(busEndCap),
            polylineId: "bus_${tripsState.direction}_2_",
            color: Colors.black,
            onTapMarker: (markerId) {
              scaffoldState.showBottomSheet<void>(
                (context) => DetailsBottomSheet(
                  tripsState.busTrips,
                  isBus: true,
                  markerId: markerId,
                ),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.only(
                    topStart: Radius.circular(10.0),
                    topEnd: Radius.circular(10.0),
                  ),
                ),
              );
            },
          ).then(polylines.add),
        ]);
        yield state.busLoaded();
      }
      if (tripsState.isTrainLoaded) {
        //pour les trains, on traite différemment Aller et Partir car tous les trains ne vont pas à Aix
        if (tripsState.direction == Direction.Aller) {
          await Future.wait<void>([
            tripsState.trainTrips[0].trace(
              markers,
              direction: tripsState.direction,
              isBus: false,
              markerIcon: trainMarker,
              endCapIcon: Cap.customCapFromBitmap(trainEndCap),
              polylineId: "train_${tripsState.direction}_1_",
              color: Colors.orange,
              onTapMarker: (markerId) {
                scaffoldState.showBottomSheet<void>(
                  (context) => DetailsBottomSheet(
                    tripsState.trainTrips,
                    isBus: false,
                    markerId: markerId,
                  ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.only(
                      topStart: Radius.circular(10.0),
                      topEnd: Radius.circular(10.0),
                    ),
                  ),
                );
              },
            ).then(polylines.add),
            tripsState.trainTrips[7].trace(
              markers,
              direction: tripsState.direction,
              isBus: false,
              markerIcon: trainMarker,
              endCapIcon: Cap.customCapFromBitmap(trainEndCap),
              polylineId: "train_${tripsState.direction}_2_",
              color: Colors.orange,
              onTapMarker: (markerId) {
                scaffoldState.showBottomSheet<void>(
                  (context) => DetailsBottomSheet(
                    tripsState.trainTrips,
                    isBus: false,
                    markerId: markerId,
                  ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.only(
                      topStart: Radius.circular(10.0),
                      topEnd: Radius.circular(10.0),
                    ),
                  ),
                );
              },
            ).then(polylines.add),
          ]);
          yield state.trainLoaded();
        } else {
          await Future.wait<void>([
            tripsState.trainTrips[6].trace(
              markers,
              direction: tripsState.direction,
              isBus: false,
              markerIcon: trainMarker,
              endCapIcon: Cap.customCapFromBitmap(trainEndCap),
              polylineId: "train_${tripsState.direction}_1_",
              color: Colors.orange,
              onTapMarker: (markerId) {
                scaffoldState.showBottomSheet<void>(
                  (context) => DetailsBottomSheet(
                    tripsState.trainTrips,
                    isBus: false,
                    markerId: markerId,
                  ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.only(
                      topStart: Radius.circular(10.0),
                      topEnd: Radius.circular(10.0),
                    ),
                  ),
                );
              },
            ).then(polylines.add),
            tripsState.trainTrips[1].trace(
              markers,
              direction: tripsState.direction,
              isBus: false,
              markerIcon: trainMarker,
              endCapIcon: Cap.customCapFromBitmap(trainEndCap),
              polylineId: "train_${tripsState.direction}_2_",
              color: Colors.orange,
              onTapMarker: (markerId) {
                scaffoldState.showBottomSheet<void>(
                  (context) => DetailsBottomSheet(
                    tripsState.trainTrips,
                    isBus: false,
                    markerId: markerId,
                  ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.only(
                      topStart: Radius.circular(10.0),
                      topEnd: Radius.circular(10.0),
                    ),
                  ),
                );
              },
            ).then(polylines.add),
          ]);
          yield state.trainLoaded();
        }
      }
    } on Exception catch (e) {
      yield state.error(e);
    }
  }
}

extension on Trip {
  Future<Polyline> trace(
    Set<Marker> markers, {
    @required Direction direction,
    @required bool isBus,
    @required BitmapDescriptor markerIcon,
    @required Color color,
    @required String polylineId,
    @required void Function(String) onTapMarker,
    Cap endCapIcon = Cap.buttCap,
    Cap startCapIcon = Cap.buttCap,
  }) async {
    final points =
        await this.toPoints(direction, polylineId: polylineId).map((point) {
      final BitmapDescriptor icone =
          point.name.compareTo(MobilityConstants.gareGardanne) == 0 ||
                  point.name.compareTo(MobilityConstants.pymStop) == 0
              ? BitmapDescriptor.defaultMarker
              : markerIcon;
      final String transportType = isBus ? 'Bus ' : 'TER ';
      final marker = point.toMarker(
        icon: icone,
        infoWindow: InfoWindow(
          title: transportType + this.route_id,
          snippet: this
                  .stop_time
                  .firstWhere((stopTime) =>
                      stopTime.stop.stop_name.compareTo(point.name) == 0)
                  .arrival_time +
              ' -> ' +
              this.stop_time.last.stop.stop_name,
          onTap: () => onTapMarker(point.name + '_$direction'),
        ),
      );
      markers.add(marker);
      return point;
    }).toList();

    return Polyline(
      polylineId: PolylineId(polylineId),
      color: color,
      points: points,
      endCap: endCapIcon,
      startCap: startCapIcon,
      visible: true,
      width: 4,
    );
  }
}
