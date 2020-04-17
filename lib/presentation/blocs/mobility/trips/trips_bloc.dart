import 'dart:async';

import 'package:app_pym/core/constants/mobility.dart';
import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/mobility/trip.dart';
import 'package:app_pym/domain/usecases/mobility/fetch_bus_trips.dart';
import 'package:app_pym/domain/usecases/mobility/fetch_train_trips.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'trips_bloc.freezed.dart';
part 'trips_event.dart';
part 'trips_state.dart';

@prod
@injectable
class TripsBloc extends Bloc<TripsEvent, TripsState> {
  final FetchBusTrips fetchBusTrips;
  final FetchTrainTrips fetchTrainTrips;

  TripsBloc({
    @required this.fetchBusTrips,
    @required this.fetchTrainTrips,
  });

  @override
  TripsState get initialState => TripsState.initial();

  @override
  Stream<TripsState> mapEventToState(
    TripsEvent event,
  ) async* {
    yield* event.when(
      fetchBus: (direction) async* {
        yield state.loading();
        try {
          final trips = await fetchBusTrips(const NoParams());
          yield state.busLoaded(busTrips: trips, direction: direction);
        } on Exception catch (e) {
          yield state.error(e);
        }
      },
      hideBus: () async* {
        yield state.hideBus();
      },
      fetchTrain: (direction) async* {
        yield state.loading();
        try {
          final trips = await fetchTrainTrips(const NoParams());
          yield state.trainLoaded(trainTrips: trips, direction: direction);
        } on Exception catch (e) {
          yield state.error(e);
        }
      },
      hideTrain: () async* {
        yield state.hideTrain();
      },
      hideAll: () async* {
        yield state.hideTrain();
        yield state.hideBus();
      },
      changeDirection: (direction) async* {
        yield state.changeDirection(direction);
      },
    );
  }
}
