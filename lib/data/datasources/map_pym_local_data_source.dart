import 'package:app_pym/core/error/exceptions.dart';
import 'package:app_pym/data/models/map_pym/batiment_model.dart';
import 'package:app_pym/data/models/map_pym/batiment_position_model.dart';
import 'package:app_pym/data/models/map_pym/entreprise_model.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

abstract class MapPymLocalDataSource {
  Future<void> cacheBatimentsPosition(
      List<BatimentPositionModel> batimentPositionModels);

  Future<List<BatimentPositionModel>> fetchBatimentsPosition();

  Future<void> cacheBatiment(BatimentModel batiment);

  Future<BatimentModel> fetchBatiment(int id);

  Future<void> cacheEntreprise(EntrepriseModel entreprise);

  Future<void> cacheAllEntreprise(Iterable<EntrepriseModel> entreprises);

  Future<List<EntrepriseModel>> fetchEntreprisesOfBatiment(int idBatiment);
}

@RegisterAs(MapPymLocalDataSource)
@prod
@lazySingleton
@injectable
class MapPymLocalDataSourceImpl implements MapPymLocalDataSource {
  final Box<List<BatimentPositionModel>> batimentsPositionBox;
  final Box<BatimentModel> batimentsBox;
  final Box<EntrepriseModel> entreprisesBox;

  const MapPymLocalDataSourceImpl({
    @required this.batimentsBox,
    @required this.batimentsPositionBox,
    @required this.entreprisesBox,
  });

  @override
  Future<void> cacheBatimentsPosition(
      List<BatimentPositionModel> batimentPositionModels) {
    return batimentsPositionBox.put(
      '/batiments_position',
      batimentPositionModels,
    );
  }

  @override
  Future<List<BatimentPositionModel>> fetchBatimentsPosition() async {
    final List<BatimentPositionModel> batimentPositionModels =
        batimentsPositionBox.get('/batiments_position');
    if (batimentPositionModels != null) {
      return batimentPositionModels;
    } else {
      throw CacheException('No Batiment Position in cache.');
    }
  }

  @override
  Future<void> cacheBatiment(BatimentModel batiment) {
    return batimentsBox.put(
      '/batiments/${batiment.id}',
      batiment,
    );
  }

  @override
  Future<BatimentModel> fetchBatiment(int id) async {
    final BatimentModel batimentModel = batimentsBox.get('/batiments/${id}');
    if (batimentModel != null) {
      return batimentModel;
    } else {
      throw CacheException('No Batiment Position in cache.');
    }
  }

  @override
  Future<void> cacheEntreprise(EntrepriseModel entreprise) {
    return entreprisesBox.put(
      '/entreprises/${entreprise.id}',
      entreprise,
    );
  }

  @override
  Future<List<EntrepriseModel>> fetchEntreprisesOfBatiment(
      int idBatiment) async {
    return entreprisesBox.values
        .where((element) => element.idBatiment == idBatiment)
        .toList();
  }

  @override
  Future<void> cacheAllEntreprise(Iterable<EntrepriseModel> entreprises) async {
    return entreprises.forEach(cacheEntreprise);
  }
}
