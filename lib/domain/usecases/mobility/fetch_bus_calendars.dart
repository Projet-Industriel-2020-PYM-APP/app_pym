import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/mobility/bus_calendar.dart';
import 'package:app_pym/domain/repositories/mobility/bus_calendars_repository.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class FetchBusCalendars extends Usecase<Future<List<BusCalendar>>, String> {
  final BusCalendarsRepository repository;

  FetchBusCalendars(this.repository);

  @override
  Future<List<BusCalendar>> call(String repo) {
    return repository.getBusCalendar(repo);
  }
}
