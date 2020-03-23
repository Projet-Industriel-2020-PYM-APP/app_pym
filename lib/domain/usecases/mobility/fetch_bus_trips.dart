import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/mobility/bus_trip.dart';
import 'package:app_pym/domain/repositories/mobility/bus_trips_repository.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class FetchBusTrips extends Usecase<Future<List<BusTrip>>, String> {
  final BusTripsRepository repository;

  FetchBusTrips(this.repository);

  @override
  Future<List<BusTrip>> call(String repo) {
    return repository.getBusTrip(repo);
  }
}
