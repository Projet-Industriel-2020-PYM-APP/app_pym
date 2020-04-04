import 'package:app_pym/core/constants/mobility.dart';
import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/mobility/trip.dart';
import 'package:app_pym/domain/usecases/mobility/fetch_train_trips.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'train_trips_event.dart';
part 'train_trips_state.dart';

@prod
@injectable
class TrainTripsBloc extends Bloc<TrainTripsEvent, TrainTripsState> {
  final FetchTrainTrips fetchTrainTrips;

  TrainTripsBloc({
    @required this.fetchTrainTrips,
  }) : assert(fetchTrainTrips != null);

  @override
  TrainTripsState get initialState => const TrainTripsInitial();

  @override
  Stream<TrainTripsState> mapEventToState(
    TrainTripsEvent event,
  ) async* {
    if (event is FetchTrainEvent) {
      yield const TrainTripsLoading();
      try {
        final trips = await fetchTrainTrips(const NoParams());
        yield TrainTripsLoaded(trips: trips, direction: event.direction);
      } catch (e) {
        yield TrainTripsError(message: e.toString());
      }
    } else if (event is HideTrainEvent) {
      yield const TrainTripsInitial();
    }
  }
}
