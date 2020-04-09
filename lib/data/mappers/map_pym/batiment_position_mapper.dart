import 'package:app_pym/data/models/map_pym/batiment_position_model.dart';
import 'package:app_pym/domain/entities/map_pym/batiment_position.dart';
import 'package:app_pym/core/mappers/mapper.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class BatimentPositionMapper
    implements Mapper<BatimentPosition, BatimentPositionModel> {
  const BatimentPositionMapper();

  @override
  BatimentPositionModel mapFrom(BatimentPosition entity) {
    return BatimentPositionModel(
      latitude: entity.latitude,
      longitude: entity.longitude,
      idBatiment: entity.idBatiment,
    );
  }

  @override
  BatimentPosition mapTo(BatimentPositionModel model) {
    return BatimentPosition(
      latitude: model.latitude,
      longitude: model.longitude,
      idBatiment: model.idBatiment,
    );
  }
}
