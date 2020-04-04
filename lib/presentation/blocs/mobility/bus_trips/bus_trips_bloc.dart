import 'package:app_pym/core/constants/mobility.dart';
import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/mobility/trip.dart';
import 'package:app_pym/domain/usecases/mobility/fetch_bus_trips.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'bus_trips_event.dart';
part 'bus_trips_state.dart';

@prod
@injectable
class BusTripsBloc extends Bloc<BusTripsEvent, BusTripsState> {
  final FetchBusTrips fetchBusTrips;

  BusTripsBloc({
    @required this.fetchBusTrips,
  }) : assert(fetchBusTrips != null);

  @override
  BusTripsState get initialState => const BusTripsInitial();

  @override
  Stream<BusTripsState> mapEventToState(
    BusTripsEvent event,
  ) async* {
    if (event is FetchBusEvent) {
      yield const BusTripsLoading();
      try {
        final trips = await fetchBusTrips(const NoParams());
        yield BusTripsLoaded(trips: trips, direction: event.direction);
      } catch (e) {
        yield BusTripsError(message: e.toString());
      }
    } else if (event is HideBusEvent) {
      yield const BusTripsInitial();
    }
  }
}
