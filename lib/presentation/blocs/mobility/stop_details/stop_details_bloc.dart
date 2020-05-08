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
          final String stop_name = infos[3];
          String destination;
          if (isBus) {
            destination = MobilityConstants.pymStop;
          } else {
            destination = MobilityConstants.gareGardanne;
          }
          Direction direction;
          if (infos[1] == "Direction.Aller") {
            direction = Direction.Aller;
          } else {
            direction = Direction.Retour;
          }

          final List<StopTime> trip = trips[direction.index].stop_time;
          final String last_stop = trip.last.stop.stop_name;
          final List<String> stop_times = [];
          //les horaires des arrêts à la destination dans la direction voulue
          for (int i = 0; i < 3; i++) {
            stop_times.add(trips[i + direction.index]
                .stop_time
                .firstWhere(
                    (stop_time) => stop_time.stop.stop_name == destination)
                .arrival_time);
          }
          yield state.loaded(
              isBus, stop_name, last_stop, stop_times, trip, destination);
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
