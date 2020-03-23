import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/mobility/bus_stop.dart';
import 'package:app_pym/domain/repositories/mobility/bus_stops_repository.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class FetchBusStops extends Usecase<Future<List<BusStop>>, String> {
  final BusStopsRepository repository;

  FetchBusStops(this.repository);

  @override
  Future<List<BusStop>> call(String repo) {
    return repository.getBusStop(repo);
  }
}
