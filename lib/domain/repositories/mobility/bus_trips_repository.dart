import 'package:app_pym/domain/entities/mobility/bus_trip.dart';

abstract class BusTripsRepository {
  Future<List<BusTrip>> getBusTrip(String repo);
}
