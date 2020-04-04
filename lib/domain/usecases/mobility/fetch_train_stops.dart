import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/mobility/stop.dart';
import 'package:app_pym/domain/usecases/mobility/fetch_train_trips.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class FetchTrainStops extends Usecase<Future<List<Stop>>, NoParams> {
  final FetchTrainNextTrip fetchTrainNextTrip;

  const FetchTrainStops(this.fetchTrainNextTrip);

  @override
  Future<List<Stop>> call(NoParams params) async {
    final trip = await fetchTrainNextTrip(const NoParams());
    return trip.stop_time.map((e) => e.stop).toList();
  }
}
