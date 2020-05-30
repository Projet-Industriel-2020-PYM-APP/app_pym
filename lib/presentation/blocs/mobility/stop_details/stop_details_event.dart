part of 'stop_details_bloc.dart';

@freezed
abstract class StopDetailsEvent with _$StopDetailsEvent {
  const factory StopDetailsEvent.show({
    @required String id,
    @required List<Trip> trips,
    @required bool isBus,
  }) = FetchBusStopDetailsEvent;
  const factory StopDetailsEvent.hide() = HideStopDetailsEvent;
}
