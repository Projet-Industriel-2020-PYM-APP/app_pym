import 'package:app_pym/core/constants/mobility.dart';
import 'package:app_pym/core/mappers/mapper.dart';
import 'package:app_pym/data/mappers/mobility/calendar_mapper.dart';
import 'package:app_pym/data/mappers/mobility/stop_time_mapper.dart';
import 'package:app_pym/data/models/mobility/trip_model.dart';
import 'package:app_pym/domain/entities/mobility/calendar.dart';
import 'package:app_pym/domain/entities/mobility/stop_time.dart';
import 'package:app_pym/domain/entities/mobility/trip.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class TripMapper implements Mapper<Trip, TripModel> {
  const TripMapper();

  @override
  TripModel mapFrom(Trip entity) {
    return TripModel(
      service_id: entity.service_id,
      trip_id: entity.trip_id,
      direction_id: entity.direction_id,
      route_id: entity.route_id,
      trip_headsign: entity.trip_headsign,
    );
  }

  @override
  Trip mapTo(TripModel model) {
    return Trip(
      service_id: model.service_id,
      trip_id: model.trip_id,
      direction_id: model.direction_id,
      route_id: model.route_id,
      trip_headsign: model.trip_headsign,
      calendar: <Calendar>[],
      stop_time: <StopTime>[],
    );
  }

  String mapToString(Trip trip) {
    const CalendarMapper calendarMapper = CalendarMapper();
    const StopTimeMapper stopTimeMapper = StopTimeMapper();
    StringBuffer tripString;
    final List<String> separe = MobilityConstants.separators;
    tripString.write(trip.service_id + separe[1] + trip.trip_id + separe[1]);
    if (trip.direction_id == Direction.Aller) {
      tripString.write('Aller' + separe[1]);
    } else {
      tripString.write('Retour' + separe[1]);
    }
    tripString
        .write(trip.route_id + separe[1] + trip.trip_headsign + separe[1]);
    tripString.write(trip.calendar
            .map((calendar) => calendarMapper.mapToString(calendar))
            .toList()[0] +
        separe[1]);
    tripString.writeAll(
        trip.stop_time
            .map((stopTime) => stopTimeMapper.mapToString(stopTime))
            .toList(),
        separe[2]);
    return tripString.toString();
  }

  Trip mapFromString(String tripString) {
    const CalendarMapper calendarMapper = CalendarMapper();
    const StopTimeMapper stopTimeMapper = StopTimeMapper();
    final List<String> elements =
        tripString.split(MobilityConstants.separators[1]);
    return Trip(
      service_id: elements[0],
      trip_id: elements[1],
      direction_id: (elements[2].compareTo('Retour') == 0) as Direction,
      route_id: elements[3],
      trip_headsign: elements[4],
      calendar: [calendarMapper.mapFromString(elements[5])],
      stop_time: elements[6]
          .split(MobilityConstants.separators[2])
          .map((stopTimeString) => stopTimeMapper.mapFromString(stopTimeString))
          .toList(),
    );
  }
}
