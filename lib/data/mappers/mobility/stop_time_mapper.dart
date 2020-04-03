import 'package:app_pym/core/constants/mobility.dart';
import 'package:app_pym/core/mappers/mapper.dart';
import 'package:app_pym/data/mappers/mobility/stop_mapper.dart';
import 'package:app_pym/data/models/mobility/stop_time_model.dart';
import 'package:app_pym/domain/entities/mobility/stop.dart';
import 'package:app_pym/domain/entities/mobility/stop_time.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class StopTimeMapper implements Mapper<StopTime, StopTimeModel> {
  const StopTimeMapper();

  @override
  StopTimeModel mapFrom(StopTime entity) {
    return StopTimeModel(
      trip_id: entity.trip_id,
      arrival_time: entity.arrival_time,
      departure_time: entity.departure_time,
      stop_id: entity.stop_id,
      stop_sequence: entity.stop_sequence,
    );
  }

  @override
  StopTime mapTo(StopTimeModel model) {
    return StopTime(
      trip_id: model.trip_id,
      arrival_time: model.arrival_time,
      departure_time: model.departure_time,
      stop_id: model.stop_id,
      stop_sequence: model.stop_sequence,
      stops: <Stop>[],
    );
  }

  String mapToString(StopTime stopTime) {
    const StopMapper stopMapper = StopMapper();
    StringBuffer stopTimeString;
    final List<String> separe = MobilityConstants.separators;
    stopTimeString.write(stopTime.trip_id +
        separe[3] +
        stopTime.arrival_time +
        separe[3] +
        stopTime.departure_time +
        separe[3] +
        stopTime.stop_id +
        separe[3] +
        stopTime.stop_sequence +
        separe[3]);
    stopTimeString.write(
        stopTime.stops.map((stop) => stopMapper.mapToString(stop)).toList()[0] +
            separe[3]);
    return stopTimeString.toString();
  }

  StopTime mapFromString(String stopTimeString) {
    const StopMapper stopMapper = StopMapper();
    final List<String> elements =
        stopTimeString.split(MobilityConstants.separators[3]);
    return StopTime(
      trip_id: elements[0],
      arrival_time: elements[1],
      departure_time: elements[2],
      stop_id: elements[3],
      stop_sequence: elements[4],
      stops: [stopMapper.mapFromString(elements[5])],
    );
  }
}
