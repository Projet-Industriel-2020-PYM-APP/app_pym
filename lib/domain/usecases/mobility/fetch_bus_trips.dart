import 'package:app_pym/core/constants/mobility.dart';
import 'package:app_pym/core/utils/string_utils.dart';
import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/mobility/trip.dart';
import 'package:app_pym/domain/usecases/mobility/fetch_bus_route.dart';
import 'package:injectable/injectable.dart';
import 'package:dartx/dartx.dart';

@prod
@lazySingleton
@injectable
class FetchBusTrips extends Usecase<Future<List<Trip>>, NoParams> {
  final FetchBusRoute fetchBusRoute;

  const FetchBusTrips(this.fetchBusRoute);

  @override
  Future<List<Trip>> call(NoParams _) async {
    return _fetchTrips();
  }

  Future<List<Trip>> _fetchTrips() async {
    final route = await fetchBusRoute(const NoParams());

    final DateTime now = DateTime.now();
    final DateTime midnight =
        DateTime(now.year, now.month, now.day, 0, 0, 0) + 1.days;
    final int today = now.weekday - 1;
    final int tomorrow = (today + 1) % 7;

    //initialisation du temps à minimiser
    final DateTime minTime = DateTime(now.year, now.month, now.day, 23, 59, 59);
    final DateTime minTimeTomorrow = minTime + 1.days;

    final List<DateTime> minTimes = List.generate(12, (int index) => minTime);
    final List<DateTime> minTimesTomorrow =
        List.generate(12, (int index) => minTimeTomorrow);
    final List<Trip> nextTrips = List.generate(12, (int index) => null);
    final List<Trip> nextTripsTomorrow = List.generate(12, (int index) => null);

    for (final trip in route.trips) {
      // On veut afficher les 3 prochains
      if (trip.calendar.weekdays[today]) {
        //StopTime de l'arrêt au pôle
        final stopTimeOfTrip = trip.stop_time
            .where((stop_time) =>
                stop_time.stop.stop_name == MobilityConstants.pymStop)
            .first;
        //heure de l'arrêt
        final arrivalTimeOfTrip = stopTimeOfTrip.arrival_time.timeToDateTime();
        //sens du trajet
        final int sens = trip.direction_id.index;
        if (arrivalTimeOfTrip.isAfter(now) &&
            arrivalTimeOfTrip.isBefore(minTimes[4 + sens])) {
          //si meilleur que le 3e meilleur
          minTimes[4 + sens] = arrivalTimeOfTrip;
          nextTrips[4 + sens] = trip;
          if (arrivalTimeOfTrip.isAfter(now) &&
              arrivalTimeOfTrip.isBefore(minTimes[2 + sens])) {
            //si meilleur que le 2e meilleur
            minTimes[4 + sens] = minTimes[2 + sens];
            nextTrips[4 + sens] = nextTrips[2 + sens];
            minTimes[2 + sens] = arrivalTimeOfTrip;
            nextTrips[2 + sens] = trip;
            if (arrivalTimeOfTrip.isAfter(now) &&
                arrivalTimeOfTrip.isBefore(minTimes[sens])) {
              //si meilleur que le meilleur
              minTimes[2 + sens] = minTimes[sens];
              nextTrips[2 + sens] = nextTrips[sens];
              minTimes[sens] = arrivalTimeOfTrip;
              nextTrips[sens] = trip;
            }
          }
        }
      }
      //on veut les 3 prochains de demain
      if (trip.calendar.weekdays[tomorrow]) {
        //StopTime de l'arrêt à Gardanne
        final stopTimeOfTrip = trip.stop_time
            .where((stop_time) =>
                stop_time.stop.stop_name == MobilityConstants.pymStop)
            .first;
        //l'heure de l'arrêt de demain
        final arrivalTimeOfTrip = stopTimeOfTrip.arrival_time
            .timeToDateTime()
            .add(const Duration(days: 1));
        //sens du trajet
        final int sens = trip.direction_id.index;
        if (arrivalTimeOfTrip.isAfter(midnight) &&
            arrivalTimeOfTrip.isBefore(minTimesTomorrow[4 + sens])) {
          //si meilleur que le 3e meilleur
          minTimesTomorrow[4 + sens] = arrivalTimeOfTrip;
          nextTripsTomorrow[4 + sens] = trip;
          if (arrivalTimeOfTrip.isAfter(midnight) &&
              arrivalTimeOfTrip.isBefore(minTimesTomorrow[2 + sens])) {
            //si meilleur que le 2e meilleur
            minTimesTomorrow[4 + sens] = minTimesTomorrow[2 + sens];
            nextTripsTomorrow[4 + sens] = nextTripsTomorrow[2 + sens];
            minTimesTomorrow[2 + sens] = arrivalTimeOfTrip;
            nextTripsTomorrow[2 + sens] = trip;
            if (arrivalTimeOfTrip.isAfter(midnight) &&
                arrivalTimeOfTrip.isBefore(minTimesTomorrow[sens])) {
              //si meilleur que le meilleur
              minTimesTomorrow[2 + sens] = minTimesTomorrow[sens];
              nextTripsTomorrow[2 + sens] = nextTripsTomorrow[sens];
              minTimesTomorrow[sens] = arrivalTimeOfTrip;
              nextTripsTomorrow[sens] = trip;
            }
          }
        }
      }
    }
    if (nextTrips[4] != null && nextTrips[5] != null) {
      //si assez de trips pour remplir la liste
      return nextTrips;
    } else if (nextTrips[0] == null && nextTrips[1] == null) {
      // Aucun trip aujourd'hui
      return nextTripsTomorrow;
    } else {
      //pas assez de trips aujourd'hui
      //indices du prochain trip de demain à récupérer pour chaque sens
      final List<int> indicesARecuperer = [0, 1];
      for (int i = 0; i < 3; i++) {
        //pour trip aller
        if (nextTrips[2 * i] == null) {
          nextTrips[2 * i] = nextTripsTomorrow[indicesARecuperer[0]];
          indicesARecuperer[0] += 2;
        }
        //pour trip retour
        if (nextTrips[2 * i + 1] == null) {
          nextTrips[2 * i + 1] = nextTripsTomorrow[indicesARecuperer[1]];
          indicesARecuperer[1] += 2;
        }
      }
      //on duplique pour avoir le même format que les trains
      for (int i = 0; i < 6; i++) {
        nextTrips[6 + i] = nextTrips[i];
      }
      return nextTrips;
    }
  }
}
