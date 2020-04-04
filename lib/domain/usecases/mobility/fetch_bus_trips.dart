import 'package:app_pym/core/constants/mobility.dart';
import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/mobility/route.dart';
import 'package:app_pym/domain/entities/mobility/trip.dart';
import 'package:app_pym/domain/repositories/mobility/route_repository.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class FetchBusTrips extends Usecase<Future<List<Trip>>, NoParams> {
  final MetropoleRouteRepository repository;

  const FetchBusTrips(this.repository);

  @override
  Future<List<Trip>> call(NoParams _) async {
    final List<Trip> trips = selectForDisplay(await repository.fetchRoutes());
    return trips;
  }

  // TODO: Ok wtf
  List<Trip> selectForDisplay(List<Route> routes) {
    final DateTime now = DateTime.now();
    final int weekday = now.weekday - 1;
    final List<int> indexes = [0, 0, 0, 0, 0, 0];
    final List<DateTime> minTimes = [
      DateTime(now.year, now.month, now.day, 23, 59, 59),
      DateTime(now.year, now.month, now.day, 23, 59, 59),
      DateTime(now.year, now.month, now.day, 23, 59, 59),
      DateTime(now.year, now.month, now.day, 23, 59, 59),
      DateTime(now.year, now.month, now.day, 23, 59, 59),
      DateTime(now.year, now.month, now.day, 23, 59, 59)
    ];
    for (int i = 0; i < routes[0].trips.length; i++) {
      if (routes[0].trips[i].calendar[0].weekdays[weekday]) {
        final List<int> busHour = routes[0]
            .trips[i]
            .stop_time
            .where((stop_time) =>
                stop_time.stops[0].stop_name == MobilityConstants.pymStop)
            .toList()[0]
            .arrival_time
            .split(':')
            .map(int.parse)
            .toList();
        final DateTime busTime = DateTime(
          now.year,
          now.month,
          now.day,
          busHour[0],
          busHour[1],
          busHour[2],
        );
        if (busTime.compareTo(now) > 0) {
          final int direction = routes[0].trips[i].direction_id.index;
          if (busTime.compareTo(minTimes[4 + direction]) < 0) {
            minTimes[4 + direction] = busTime;
            indexes[4 + direction] = i;
            if (busTime.compareTo(minTimes[2 + direction]) < 0) {
              minTimes[4 + direction] = minTimes[2 + direction];
              indexes[4 + direction] = indexes[2 + direction];
              minTimes[2 + direction] = busTime;
              indexes[2 + direction] = i;
              if (busTime.compareTo(minTimes[direction]) < 0) {
                minTimes[2 + direction] = minTimes[direction];
                indexes[2 + direction] = indexes[direction];
                minTimes[direction] = busTime;
                indexes[direction] = i;
              }
            }
          }
        }
      }
    }
    final List<Trip> selectedTrips = [
      routes[0].trips[indexes[0]],
      routes[0].trips[indexes[1]],
      routes[0].trips[indexes[2]],
      routes[0].trips[indexes[3]],
      routes[0].trips[indexes[4]],
      routes[0].trips[indexes[5]],
    ];
    return selectedTrips;
  }
}
