import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/mobility/bus.dart';
import 'package:app_pym/domain/repositories/mobility/bus_repository.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class FetchBus extends Usecase<Future<List<Bus>>, String> {
  final BusRepository repository;

  FetchBus(this.repository);

  @override
  Future<List<Bus>> call(String repo) {
    return repository.getBus(repo);
  }
}
