import 'package:app_pym/data/models/map_pym/batiment_model.dart';
import 'package:app_pym/domain/entities/map_pym/batiment.dart';
import 'package:app_pym/core/mappers/mapper.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class BatimentMapper implements Mapper<Batiment, BatimentModel> {
  const BatimentMapper();

  @override
  BatimentModel mapFrom(Batiment entity) {
    return BatimentModel(
      accesHandicape: entity.accesHandicape,
      adresse: entity.adresse,
      description: entity.description,
      nbEtage: entity.nbEtage,
      nom: entity.nom,
      url: entity.url,
      id: entity.id,
    );
  }

  @override
  Batiment mapTo(BatimentModel model) {
    return Batiment(
      accesHandicape: model.accesHandicape,
      adresse: model.adresse,
      description: model.description,
      nbEtage: model.nbEtage,
      nom: model.nom,
      url: model.url,
      id: model.id,
    );
  }
}
