part of 'stop_details_bloc.dart';

@freezed
abstract class StopDetailsState with _$StopDetailsState {
  const factory StopDetailsState({
    @required bool isLoading,
    @required bool isError,
    @required bool isBus,
    @required String stop_name,
    @required String last_stop,
    @required List<String> stop_times,
    @required List<StopTime> trip,
    @required String destination,
    Exception exception,
  }) = _StopDetailsState;

  factory StopDetailsState.initial() {
    return const StopDetailsState(
      isBus: true,
      isLoading: false,
      isError: false,
      stop_name: "",
      last_stop: "",
      stop_times: ["", "", ""],
      trip: [],
      destination: "",
    );
  }
}

extension StopDetailsStateX on StopDetailsState {
  StopDetailsState loading() {
    return this.copyWith(
      isLoading: true,
      isError: false,
    );
  }

  StopDetailsState loaded(bool isBus, String stop_name, String last_stop,
      List<String> stop_times, List<StopTime> trip, String destination) {
    return this.copyWith(
      isBus: isBus,
      isLoading: false,
      isError: false,
      stop_name: stop_name,
      last_stop: last_stop,
      stop_times: stop_times,
      trip: trip,
      destination: destination,
    );
  }

  StopDetailsState error(Exception exception) {
    return this.copyWith(
      isLoading: false,
      isError: true,
      exception: exception,
    );
  }
}
