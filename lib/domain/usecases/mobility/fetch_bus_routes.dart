import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/mobility/bus_route.dart';
import 'package:app_pym/domain/repositories/mobility/bus_routes_repository.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class FetchBusRoutes extends Usecase<Future<List<BusRoute>>, String> {
  final BusRoutesRepository repository;

  FetchBusRoutes(this.repository);

  @override
  Future<List<BusRoute>> call(String repo) {
    return repository.getBusRoute(repo);
  }
}
