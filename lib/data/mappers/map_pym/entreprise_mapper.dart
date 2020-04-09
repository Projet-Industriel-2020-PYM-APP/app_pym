import 'package:app_pym/core/mappers/mapper.dart';
import 'package:app_pym/data/models/map_pym/entreprise_model.dart';
import 'package:app_pym/domain/entities/map_pym/entreprise.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class EntrepriseMapper implements Mapper<Entreprise, EntrepriseModel> {
  const EntrepriseMapper();

  @override
  EntrepriseModel mapFrom(Entreprise entity) {
    return EntrepriseModel(
      id: entity.id,
      logo: entity.logo,
      mail: entity.mail,
      nb_salaries: entity.nb_salaries,
      nom: entity.nom,
      site_internet: entity.site_internet,
      telephone: entity.telephone,
      idBatiment: entity.idBatiment,
    );
  }

  @override
  Entreprise mapTo(EntrepriseModel model) {
    return Entreprise(
      id: model.id,
      logo: model.logo,
      mail: model.mail,
      nb_salaries: model.nb_salaries,
      nom: model.nom,
      site_internet: model.site_internet,
      telephone: model.telephone,
      idBatiment: model.idBatiment,
    );
  }
}
