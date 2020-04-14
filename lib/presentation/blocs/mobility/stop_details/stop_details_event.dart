part of 'stop_details_bloc.dart';

@freezed
abstract class StopDetailsEvent with _$StopDetailsEvent {
  const factory StopDetailsEvent.fetch() = FetchStopDetailsEvent;
  const factory StopDetailsEvent.hide() = HideStopDetailsEvent;
}
