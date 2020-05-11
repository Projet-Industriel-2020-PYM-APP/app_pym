part of 'maps_bloc.dart';

@freezed
abstract class MapsState with _$MapsState {
  factory MapsState({
    @required bool isLoading,
    @required bool isError,
    @required bool isBusLoaded,
    @required bool isTrainLoaded,
    Exception exception,
  }) = _MapsState;

  factory MapsState.initial() {
    return MapsState(
      isLoading: false,
      isError: false,
      isBusLoaded: false,
      isTrainLoaded: false,
    );
  }
}

extension MapsStateX on MapsState {
  MapsState busLoaded() {
    return this.copyWith(
      isLoading: false,
      isError: false,
      isBusLoaded: true,
    );
  }

  MapsState trainLoaded() {
    return this.copyWith(
      isLoading: false,
      isError: false,
      isTrainLoaded: true,
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
}
