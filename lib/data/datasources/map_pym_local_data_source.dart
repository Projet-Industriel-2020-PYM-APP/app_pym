import 'package:app_pym/core/error/exceptions.dart';
import 'package:app_pym/data/models/map_pym/batiment_model.dart';
import 'package:app_pym/data/models/map_pym/batiment_position_model.dart';
import 'package:app_pym/data/models/map_pym/entreprise_model.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

abstract class MapPymLocalDataSource {
  Future<void> cacheAllBatimentPosition(
      Iterable<BatimentPositionModel> batimentPositionModels);

  Future<void> cacheAllEntreprise(Iterable<EntrepriseModel> entreprises);

  Future<void> cacheBatiment(BatimentModel batiment);

  BatimentModel fetchBatiment(int id);

  List<BatimentPositionModel> fetchBatimentsPosition();

  List<EntrepriseModel> fetchEntreprisesOfBatiment(int idBatiment);
}

@RegisterAs(MapPymLocalDataSource)
@prod
@lazySingleton
@injectable
class MapPymLocalDataSourceImpl implements MapPymLocalDataSource {
  final Box<BatimentPositionModel> batimentPositionBox;
  final Box<BatimentModel> batimentsBox;
  final Box<EntrepriseModel> entreprisesBox;

  const MapPymLocalDataSourceImpl({
    @required this.batimentsBox,
    @required this.batimentPositionBox,
    @required this.entreprisesBox,
  });

  @override
  Future<void> cacheAllBatimentPosition(
      Iterable<BatimentPositionModel> batimentPositionModels) async {
    return batimentPositionModels.forEach(_cacheBatimentPosition);
  }

  @override
  Future<void> cacheAllEntreprise(Iterable<EntrepriseModel> entreprises) async {
    return entreprises.forEach(_cacheEntreprise);
  }

  @override
  Future<void> cacheBatiment(BatimentModel batiment) {
    return batimentsBox.put(
      '/batiments/${batiment.id}',
      batiment,
    );
  }

  Future<void> _cacheEntreprise(EntrepriseModel entreprise) {
    return entreprisesBox.put(
      '/entreprises/${entreprise.id}',
      entreprise,
    );
  }

  @override
  BatimentModel fetchBatiment(int id) {
    final BatimentModel batimentModel = batimentsBox.get('/batiments/${id}');
    if (batimentModel != null) {
      return batimentModel;
    } else {
      throw CacheException('No Batiment Position in cache.');
    }
  }

  @override
  List<BatimentPositionModel> fetchBatimentsPosition() {
    final List<BatimentPositionModel> batimentPositionModels =
        batimentPositionBox?.values?.toList();
    if (batimentPositionModels != null && batimentPositionModels.isNotEmpty) {
      return batimentPositionModels;
    } else {
      throw CacheException('No Batiment Position in cache.');
    }
  }

  @override
  List<EntrepriseModel> fetchEntreprisesOfBatiment(int idBatiment) {
    final entreprisesOfBatiment = entreprisesBox?.values
        ?.where((element) => element.idBatiment == idBatiment)
        ?.toList();
    if (fetchEntreprisesOfBatiment != null &&
        entreprisesOfBatiment.isNotEmpty) {
      return entreprisesOfBatiment;
    } else {
      throw CacheException(
          'No Entreprises of Batiment ${idBatiment} in cache.');
    }
  }

  /// Cache one BatimentPosition. The id identify the object.
  Future<void> _cacheBatimentPosition(
      BatimentPositionModel batimentPositionModel) {
    return batimentPositionBox.put(
      '/batiment_position/${batimentPositionModel.idBatiment}',
      batimentPositionModel,
    );
  }
}
