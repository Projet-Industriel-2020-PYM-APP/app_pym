part of 'trips_bloc.dart';

@freezed
abstract class TripsState with _$TripsState {
  const factory TripsState({
    @required bool isLoading,
    @required bool isError,
    @required bool isBusLoaded,
    @required bool isTrainLoaded,
    @required Direction direction,
    Exception exception,
    List<Trip> busTrips,
    List<Trip> trainTrips,
  }) = _TripsState;

  factory TripsState.initial([Direction direction = Direction.Aller]) {
    return TripsState(
      isLoading: false,
      isError: false,
      isBusLoaded: false,
      isTrainLoaded: false,
      direction: direction,
    );
  }
}

extension TripsStateX on TripsState {
  TripsState busLoaded({
    List<Trip> busTrips,
    Direction direction,
  }) {
    return this.copyWith(
      isLoading: false,
      isError: false,
      isBusLoaded: true,
      busTrips: busTrips,
      direction: direction,
    );
  }

  TripsState trainLoaded({
    List<Trip> trainTrips,
    Direction direction,
  }) {
    return this.copyWith(
      isLoading: false,
      isError: false,
      isTrainLoaded: true,
      trainTrips: trainTrips,
      direction: direction,
    );
  }

  TripsState loading() {
    return this.copyWith(
      isLoading: true,
      isError: false,
      isBusLoaded: false,
      isTrainLoaded: false,
    );
  }

  TripsState error(Exception exception) {
    return this.copyWith(
      isLoading: false,
      isError: true,
      isBusLoaded: false,
      isTrainLoaded: false,
      exception: exception,
    );
  }

  TripsState hideBus() {
    return this.copyWith(
      isBusLoaded: false,
    );
  }

  TripsState hideTrain() {
    return this.copyWith(
      isTrainLoaded: false,
    );
  }
}
