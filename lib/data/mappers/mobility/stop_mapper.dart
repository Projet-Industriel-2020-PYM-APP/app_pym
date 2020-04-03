import 'package:app_pym/core/constants/mobility.dart';
import 'package:app_pym/core/mappers/mapper.dart';
import 'package:app_pym/data/models/mobility/stop_model.dart';
import 'package:app_pym/domain/entities/mobility/stop.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class StopMapper implements Mapper<Stop, StopModel> {
  const StopMapper();

  @override
  StopModel mapFrom(Stop entity) {
    return StopModel(
      stop_id: entity.stop_id,
      stop_code: entity.stop_code,
      stop_name: entity.stop_name,
      stop_lat: entity.stop_lat,
      stop_long: entity.stop_long,
    );
  }

  @override
  Stop mapTo(StopModel model) {
    return Stop(
      stop_id: model.stop_id,
      stop_code: model.stop_code,
      stop_name: model.stop_name,
      stop_lat: model.stop_lat,
      stop_long: model.stop_long,
    );
  }

  String mapToString(Stop stop) {
    StringBuffer stopString;
    final List<String> separe = MobilityConstants.separators;
    stopString.write(stop.stop_id +
        separe[4] +
        stop.stop_code +
        separe[4] +
        stop.stop_name +
        separe[4] +
        stop.stop_lat +
        separe[4] +
        stop.stop_long +
        separe[4]);
    return stopString.toString();
  }

  Stop mapFromString(String stopString) {
    final List<String> elements =
        stopString.split(MobilityConstants.separators[4]);
    return Stop(
      stop_id: elements[0],
      stop_code: elements[1],
      stop_name: elements[2],
      stop_lat: elements[3],
      stop_long: elements[4],
    );
  }
}
