import 'package:app_pym/domain/entities/map_pym/batiment.dart';

abstract class BatimentRepository {
  Future<Batiment> fetch(int id);
  Future<List<Batiment>> fetchAll();
}
