import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/mobility/bus_stop_time.dart';
import 'package:app_pym/domain/repositories/mobility/bus_stop_times_repository.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class FetchBusStopTimes extends Usecase<Future<List<BusStopTime>>, String> {
  final BusStopTimesRepository repository;

  FetchBusStopTimes(this.repository);

  @override
  Future<List<BusStopTime>> call(String repo) {
    return repository.getBusTime(repo);
  }
}
