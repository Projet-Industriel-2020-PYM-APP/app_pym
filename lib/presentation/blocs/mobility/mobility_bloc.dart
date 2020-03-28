import 'package:app_pym/domain/entities/mobility/bus.dart';
import 'package:app_pym/domain/usecases/mobility/fetch_bus.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'mobility_event.dart';
part 'mobility_state.dart';

@prod
@injectable
class MobilityBloc extends Bloc<MobilityEvent, MobilityState> {
  final FetchBusAller fetchBusAller;
  final FetchBusRetour fetchBusRetour;

  MobilityBloc({
    @required this.fetchBusAller,
    @required this.fetchBusRetour,
  }) : assert(fetchBusAller != null && fetchBusRetour != null);

  @override
  MobilityState get initialState => const MobilityStateInitial();

  @override
  Stream<MobilityState> mapEventToState(
    MobilityEvent event,
  ) async* {
    if (event is FetchBusAllerEvent) {
      yield const MobilityStateBusAllerLoading();
      try {
        final bus = await fetchBusAller(event.repo);
        yield MobilityStateBusAllerLoaded(bus: bus);
      } catch (e) {
        yield MobilityStateBusError(message: e.toString());
      }
    } else if (event is FetchBusRetourEvent) {
      yield const MobilityStateBusRetourLoading();
      try {
        final bus = await fetchBusRetour(event.repo);
        yield MobilityStateBusRetourLoaded(bus: bus);
      } catch (e) {
        yield MobilityStateBusError(message: e.toString());
      }
    }
  }
}
