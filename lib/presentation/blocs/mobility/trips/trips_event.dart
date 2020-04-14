part of 'trips_bloc.dart';

@freezed
abstract class TripsEvent with _$TripsEvent {
  const factory TripsEvent.fetchBus(Direction direction) = FetchBusEvent;
  const factory TripsEvent.fetchTrain(Direction direction) = FetchTrainEvent;
  const factory TripsEvent.hideBus() = HideBusEvent;
  const factory TripsEvent.hideTrain() = HideTrainEvent;
}
