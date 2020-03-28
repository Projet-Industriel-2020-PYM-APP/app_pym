import 'package:app_pym/core/constants/mobility.dart';
import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/mobility/route.dart';
import 'package:app_pym/domain/repositories/mobility/route_repository.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class FetchRoute extends Usecase<Future<List<Route>>, Direction> {
  final RouteRepository repository;

  FetchRoute(this.repository);

  @override
  Future<List<Route>> call(Direction direction) async {
    return sortForDisplay(await repository.fetchRoute(), direction);
  }

  List<Route> sortForDisplay(List<Route> routes, Direction direction) {
    final stop = direction == Direction.Retour
        ? MobilityConstants.busRetourStopList.first
        : MobilityConstants.busAllerStopList.first;
    final int length = direction == Direction.Retour
        ? MobilityConstants.busRetourStopList.length
        : MobilityConstants.busAllerStopList.length;

    final List<Bus> order = buses
        .where((Bus bus) => bus.stop_name == stop)
        .toList()
          ..sort((a, b) => a.arrival_time.compareTo(b.arrival_time));
    final List<Bus> sortedBus = <Bus>[];

    order.where((bus) => false);
    for (final Bus bus in order) {
      for (int index = 0; index < buses.length; index += length) {
        if (buses[index].trip_id == bus.trip_id) {
          for (int i = 0; i < length; i++) {
            sortedBus.add(buses[index + i]);
          }
        }
      }
    }
    return sortedBus;
  }
}
