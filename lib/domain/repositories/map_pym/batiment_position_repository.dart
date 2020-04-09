import 'package:app_pym/domain/entities/map_pym/batiment_position.dart';

abstract class BatimentPositionRepository {
  Future<List<BatimentPosition>> fetchBatimentsPosition();
}
