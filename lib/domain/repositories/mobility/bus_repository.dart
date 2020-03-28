import 'package:app_pym/domain/entities/mobility/bus.dart';

abstract class BusRepository {
  Future<List<Bus>> fetchBus(String repo, int direction);
}
