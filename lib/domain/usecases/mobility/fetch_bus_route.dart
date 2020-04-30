import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/mobility/route.dart';
import 'package:app_pym/domain/repositories/mobility/route_repository.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class FetchBusRoute extends Usecase<Future<Route>, NoParams> {
  final MetropoleRouteRepository repository;

  const FetchBusRoute(this.repository);

  @override
  Future<Route> call(NoParams params) {
    final route = repository.fetchRoutes().first;

    return route;
  }
}
