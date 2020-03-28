import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/mobility/bus.dart';
import 'package:app_pym/domain/repositories/mobility/bus_repository.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class FetchBusAller extends Usecase<Future<List<Bus>>, String> {
  final BusRepository repository;

  FetchBusAller(this.repository);

  @override
  Future<List<Bus>> call(String repo) {
    return repository.fetchBus(repo, 0);
  }
}

@prod
@lazySingleton
@injectable
class FetchBusRetour extends Usecase<Future<List<Bus>>, String> {
  final BusRepository repository;

  FetchBusRetour(this.repository);

  @override
  Future<List<Bus>> call(String repo) {
    return repository.fetchBus(repo, 1);
  }
}
