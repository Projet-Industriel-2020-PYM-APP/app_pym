import 'package:app_pym/core/constants/mobility.dart';
import 'package:app_pym/domain/entities/mobility/stop_time.dart';
import 'package:app_pym/domain/entities/mobility/trip.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'stop_details_bloc.freezed.dart';
part 'stop_details_event.dart';
part 'stop_details_state.dart';

@prod
@injectable
class StopDetailsBloc extends Bloc<StopDetailsEvent, StopDetailsState> {
  @override
  StopDetailsState get initialState => StopDetailsState.initial();

  @override
  Stream<StopDetailsState> mapEventToState(
    StopDetailsEvent event,
  ) async* {
    yield* event.when(
      show: (id, trips, isBus) async* {
        yield state.loading();
        try {
          final List<String> infos = id.split(
              "_"); // id au format bus_direction(aller/partir)_sens(aller/retour)_nom
          final String stop_name = infos[0];
          final String destination = isBus
              ? MobilityConstants.pymStop
              : MobilityConstants.gareGardanne;
          final Direction direction = infos[1] == "Direction.Aller"
              ? Direction.Aller
              : Direction.Partir;
          final Sens sens = infos[2] == "Sens.Aller" ? Sens.Aller : Sens.Retour;

          final List<StopTime> trip = trips[direction.index].stop_time;
          final String last_stop = trip.last.stop.stop_name;
          final List<String> arrivalTimes = [];
          // Le top 3 des horaires du marker
          for (int i = 0; i < 3; i++) {
            if (direction.index == sens.index) {
              arrivalTimes.add(trips[2 * i + direction.index]
                  .stop_time
                  .firstWhere(
                      (stop_time) => stop_time.stop.stop_name == stop_name)
                  .arrival_time);
            } else {
              arrivalTimes.add(trips[6 + 2 * i + direction.index]
                  .stop_time
                  .firstWhere(
                      (stop_time) => stop_time.stop.stop_name == stop_name)
                  .arrival_time);
            }
          }
          yield state.loaded(
            stop_name,
            last_stop,
            arrivalTimes,
            trip,
            destination,
          );
        } on Exception catch (e) {
          yield state.error(e);
        }
      },
      hide: () async* {
        yield StopDetailsState.initial();
      },
    );
  }
}
