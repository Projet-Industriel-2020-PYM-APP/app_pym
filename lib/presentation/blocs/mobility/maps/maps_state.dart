part of 'maps_bloc.dart';

@freezed
abstract class MapsState with _$MapsState {
  const factory MapsState({
    @required bool isLoading,
    @required bool isError,
    @required bool isBusLoaded,
    @required bool isTrainLoaded,
    @required Set<Polyline> polylines,
    @required Set<Marker> markers,
    Exception exception,
  }) = _MapsState;

  factory MapsState.initial() {
    return MapsState(
      isLoading: false,
      isError: false,
      isBusLoaded: false,
      isTrainLoaded: false,
      polylines: Set<Polyline>(),
      markers: Set<Marker>(),
    );
  }
}

extension MapsStateX on MapsState {
  MapsState busLoaded({
    Set<Polyline> polylines,
    Set<Marker> markers,
  }) {
    this.polylines.addAll(polylines);
    this.markers.addAll(markers);
    return this.copyWith(
      isLoading: false,
      isError: false,
      isBusLoaded: true,
      polylines: this.polylines,
      markers: this.markers,
    );
  }

  MapsState trainLoaded({
    Set<Polyline> polylines,
    Set<Marker> markers,
  }) {
    this.polylines.addAll(polylines);
    this.markers.addAll(markers);
    return this.copyWith(
      isLoading: false,
      isError: false,
      isTrainLoaded: true,
      polylines: this.polylines,
      markers: this.markers,
    );
  }

  MapsState loading() {
    return this.copyWith(
      isLoading: true,
      isError: false,
      isBusLoaded: false,
      isTrainLoaded: false,
    );
  }

  MapsState error(Exception exception) {
    return this.copyWith(
      isLoading: false,
      isError: true,
      isBusLoaded: false,
      isTrainLoaded: false,
      exception: exception,
    );
  }

  MapsState hideBus(Direction direction) {
    this.polylines.removeWhere((polyline) => polyline.polylineId
        .toString()
        .contains("PolylineId{value: bus_${direction}"));
    this.markers.removeWhere((marker) => marker.markerId
        .toString()
        .contains("MarkerId{value: bus_${direction}"));
    return this.copyWith(
      isBusLoaded: false,
      polylines: this.polylines,
      markers: this.markers,
    );
  }

  MapsState hideTrain(Direction direction) {
    this.polylines.removeWhere((polyline) => polyline.polylineId
        .toString()
        .contains("PolylineId{value: train_${direction}"));
    this.markers.removeWhere((marker) => marker.markerId
        .toString()
        .contains("MarkerId{value: train_${direction}"));
    return this.copyWith(
      isTrainLoaded: false,
      polylines: this.polylines,
      markers: this.markers,
    );
  }
}
