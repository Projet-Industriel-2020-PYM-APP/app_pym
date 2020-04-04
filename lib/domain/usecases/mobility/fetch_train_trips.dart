import 'package:app_pym/core/constants/mobility.dart';
import 'package:app_pym/core/utils/string_utils.dart';
import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/mobility/trip.dart';
import 'package:app_pym/domain/usecases/mobility/fetch_train_route.dart';
import 'package:injectable/injectable.dart';
import 'package:dartx/dartx.dart';

@prod
@lazySingleton
@injectable
class FetchTrainNextTrip extends Usecase<Future<Trip>, NoParams> {
  final FetchTrainRoute fetchTrainRoute;

  const FetchTrainNextTrip(this.fetchTrainRoute);

  @override
  Future<Trip> call(NoParams _) async {
    return _fetchNextTrip();
  }

  Future<Trip> _fetchNextTrip() async {
    final route = await fetchTrainRoute(const NoParams());
    final DateTime now = DateTime.now();
    final DateTime midnight =
        DateTime(now.year, now.month, now.day, 0, 0, 0) + 1.days;
    final int today = now.weekday - 1;
    final int tomorrow = (today + 1) % 7;
    DateTime minTime = DateTime(now.year, now.month, now.day, 23, 59, 59);
    DateTime minTimeTomorrow = minTime + 1.days;
    Trip nextTrip;
    Trip firstTripTomorrow;
    for (final trip in route.trips) {
      // Si on est auj
      final DateTime now = DateTime.now();
      // On veut afficher le prochain.
      if (trip.calendar.weekdays[today]) {
        final stopTimeOfTrip = trip.stop_time
            .where((stop_time) =>
                stop_time.stop.stop_name == MobilityConstants.gareGardanne &&
                stop_time.stop.location_type == 0)
            .first;

        final arrivalTimeOfTrip = stopTimeOfTrip.arrival_time.timeToDateTime();
        if (arrivalTimeOfTrip.isAfter(now) &&
            minTime.isAfter(arrivalTimeOfTrip)) {
          minTime = arrivalTimeOfTrip;
          nextTrip = trip;
        }
      }
      if (trip.calendar.weekdays[tomorrow]) {
        final stopTimeOfTrip = trip.stop_time
            .where((stop_time) =>
                stop_time.stop.stop_name == MobilityConstants.gareGardanne &&
                stop_time.stop.location_type == 0)
            .first;

        final arrivalTimeOfTrip = stopTimeOfTrip.arrival_time.timeToDateTime();
        if (arrivalTimeOfTrip.isAfter(midnight) &&
            minTimeTomorrow.isAfter(arrivalTimeOfTrip)) {
          minTimeTomorrow = arrivalTimeOfTrip;
          firstTripTomorrow = trip;
        }
      }
    }
    // Aucun trip aujourd'hui
    return nextTrip ?? firstTripTomorrow;
  }
}
