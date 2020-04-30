part of 'stop_details_bloc.dart';

@freezed
abstract class StopDetailsState with _$StopDetailsState {
  const factory StopDetailsState.initial() = StopDetailsInitial;
  const factory StopDetailsState.loading() = StopDetailsLoading;
  const factory StopDetailsState.loaded() = StopDetailsLoaded;
  const factory StopDetailsState.error(String message) = StopDetailsError;
}
