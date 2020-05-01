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
          final List<String> infos = id.split("_");
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
          for (int i = 0; i < 3; i++) {
            for (final StopTime stop_time
                in trips[i + direction.index].stop_time) {
              if (stop_time.stop.stop_name == destination) {
                stop_times.add(stop_time.arrival_time);
              }
            }
          }
          if (direction == Direction.Aller) {
            bool supprime = true;
            for (final StopTime stop_time in trip) {
              if (stop_time.stop.stop_name == stop_name) {
                supprime = false;
              }
              if (supprime) {
                trip.remove(stop_time);
              }
            }
          } else {
            bool supprime = true;
            for (final StopTime stop_time in trip) {
              if (stop_time.stop.stop_name == destination) {
                supprime = false;
              }
              if (supprime) {
                trip.remove(stop_time);
              }
            }
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
