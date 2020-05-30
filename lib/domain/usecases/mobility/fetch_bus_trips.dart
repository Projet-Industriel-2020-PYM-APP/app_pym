import 'package:app_pym/core/constants/mobility.dart';
import 'package:app_pym/core/utils/string_utils.dart';
import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/mobility/stop_time.dart';
import 'package:app_pym/domain/entities/mobility/trip.dart';
import 'package:app_pym/domain/usecases/mobility/fetch_bus_route.dart';
import 'package:injectable/injectable.dart';
import 'package:dartx/dartx.dart';

@prod
@lazySingleton
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
        final StopTime stopTimeOfTrip = trip.stop_time.firstWhere((stop_time) =>
            stop_time.stop.stop_name == MobilityConstants.pymStop);
        //heure de l'arrêt
        final DateTime arrivalTimeOfTrip =
            stopTimeOfTrip.arrival_time.timeToDateTime();
        //sens du trajet
        final int sens = trip.direction_id.index;

        bool alreadyExists = false; //évite les doublons
        for (int i = 0; i < minTimes.length / 2; i++) {
          alreadyExists |=
              minTimes[2 * i + sens].compareTo(arrivalTimeOfTrip) == 0;
        }
        if (!alreadyExists) {
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
          if (sens == 1 &&
              trip.stop_time[1].stop.stop_name !=
                  MobilityConstants.stopLaPlaine) {
            // La Plaine n'apparait pas pour tous les trips du sens ZA Avon -> 8 mai
            // on les traite donc différement
            if (arrivalTimeOfTrip.isAfter(now) &&
                arrivalTimeOfTrip.isBefore(minTimes[10 + sens])) {
              //si meilleur que le 3e meilleur
              minTimes[10 + sens] = arrivalTimeOfTrip;
              nextTrips[10 + sens] = trip;
              if (arrivalTimeOfTrip.isAfter(now) &&
                  arrivalTimeOfTrip.isBefore(minTimes[8 + sens])) {
                //si meilleur que le 2e meilleur
                minTimes[10 + sens] = minTimes[8 + sens];
                nextTrips[10 + sens] = nextTrips[8 + sens];
                minTimes[8 + sens] = arrivalTimeOfTrip;
                nextTrips[8 + sens] = trip;
                if (arrivalTimeOfTrip.isAfter(now) &&
                    arrivalTimeOfTrip.isBefore(minTimes[6 + sens])) {
                  //si meilleur que le meilleur
                  minTimes[8 + sens] = minTimes[6 + sens];
                  nextTrips[8 + sens] = nextTrips[6 + sens];
                  minTimes[6 + sens] = arrivalTimeOfTrip;
                  nextTrips[6 + sens] = trip;
                }
              }
            }
          }
        }
        //on veut les 3 prochains de demain
        if (trip.calendar.weekdays[tomorrow]) {
          //StopTime de l'arrêt à Gardanne
          final StopTime stopTimeOfTrip = trip.stop_time.firstWhere(
              (stop_time) =>
                  stop_time.stop.stop_name == MobilityConstants.pymStop);
          //l'heure de l'arrêt de demain
          final DateTime arrivalTimeOfTrip = stopTimeOfTrip.arrival_time
              .timeToDateTime()
              .add(const Duration(days: 1));
          //sens du trajet
          final int sens = trip.direction_id.index;

          bool alreadyExists = false; //évite les doublons
          for (int i = 0; i < minTimesTomorrow.length / 2; i++) {
            alreadyExists |=
                minTimesTomorrow[2 * i + sens].compareTo(arrivalTimeOfTrip) ==
                    0;
          }
          if (!alreadyExists) {
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
            if (sens == 1 &&
                trip.stop_time[1].stop.stop_name !=
                    MobilityConstants.stopLaPlaine) {
              // La Plaine n'apparait pas pour tous les trips du sens ZA Avon -> 8 mai
              // on les traite donc différement
              if (arrivalTimeOfTrip.isAfter(midnight) &&
                  arrivalTimeOfTrip.isBefore(minTimes[10 + sens])) {
                //si meilleur que le 3e meilleur
                minTimesTomorrow[10 + sens] = arrivalTimeOfTrip;
                nextTripsTomorrow[10 + sens] = trip;
                if (arrivalTimeOfTrip.isAfter(midnight) &&
                    arrivalTimeOfTrip.isBefore(minTimesTomorrow[8 + sens])) {
                  //si meilleur que le 2e meilleur
                  minTimesTomorrow[10 + sens] = minTimesTomorrow[8 + sens];
                  nextTripsTomorrow[10 + sens] = nextTripsTomorrow[8 + sens];
                  minTimesTomorrow[8 + sens] = arrivalTimeOfTrip;
                  nextTripsTomorrow[8 + sens] = trip;
                  if (arrivalTimeOfTrip.isAfter(midnight) &&
                      arrivalTimeOfTrip.isBefore(minTimesTomorrow[6 + sens])) {
                    //si meilleur que le meilleur
                    minTimesTomorrow[8 + sens] = minTimesTomorrow[6 + sens];
                    nextTripsTomorrow[8 + sens] = nextTripsTomorrow[6 + sens];
                    minTimesTomorrow[6 + sens] = arrivalTimeOfTrip;
                    nextTripsTomorrow[6 + sens] = trip;
                  }
                }
              }
            }
          }
        }
      }
    }
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
      //pour trip retour qui ne vont pas à La Plaine
      if (nextTrips[2 * i + 1] == null) {
        nextTrips[2 * i + 1] = nextTripsTomorrow[indicesARecuperer[1]];
        indicesARecuperer[1] += 2;
      }
    }
    //on duplique le sens Aller pour avoir le même format que les trains
    for (int i = 0; i < 3; i++) {
      nextTrips[6 + 2 * i] = nextTrips[2 * i];
    }
    return nextTrips;
  }
}
