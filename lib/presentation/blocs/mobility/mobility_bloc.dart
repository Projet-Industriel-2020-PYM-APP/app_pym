import 'package:app_pym/core/constants/mobility.dart';
import 'package:app_pym/domain/entities/mobility/trip.dart';
import 'package:app_pym/domain/usecases/mobility/fetch_trips.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'mobility_event.dart';
part 'mobility_state.dart';

@prod
@injectable
class MobilityBloc extends Bloc<MobilityEvent, MobilityState> {
  final FetchTrip fetchTrip;

  MobilityBloc({
    @required this.fetchTrip,
  }) : assert(fetchTrip != null);

  @override
  MobilityState get initialState => const MobilityStateInitial();

  @override
  Stream<MobilityState> mapEventToState(
    MobilityEvent event,
  ) async* {
    if (event is FetchBusAllerEvent) {
      yield const MobilityStateBusAllerLoading();
      try {
        final busTrips = await fetchTrip(TransportType.Bus);
        yield MobilityStateBusAllerLoaded(busAllerTrips: busTrips);
      } catch (e) {
        yield MobilityStateError(message: e.toString());
      }
    } else if (event is FetchBusRetourEvent) {
      yield const MobilityStateBusRetourLoading();
      try {
        final busTrips = await fetchTrip(TransportType.Bus);
        yield MobilityStateBusRetourLoaded(busRetourTrips: busTrips);
      } catch (e) {
        yield MobilityStateError(message: e.toString());
      }
    } else if (event is HideBusEvent) {
      yield const MobilityStateInitial();
    } else if (event is FetchTrainAllerEvent) {
      yield const MobilityStateTrainAllerLoading();
      try {
        final trainTrips = await fetchTrip(TransportType.Train);
        yield MobilityStateTrainAllerLoaded(trainAllerTrips: trainTrips);
      } catch (e) {
        yield MobilityStateError(message: e.toString());
      }
    } else if (event is FetchTrainRetourEvent) {
      yield const MobilityStateTrainRetourLoading();
      try {
        final trainTrips = await fetchTrip(TransportType.Train);
        yield MobilityStateTrainRetourLoaded(trainRetourTrips: trainTrips);
      } catch (e) {
        yield MobilityStateError(message: e.toString());
      }
    } else if (event is HideTrainEvent) {
      yield const MobilityStateInitial();
    }
  }
}
