import 'package:app_pym/domain/entities/map_pym/entreprise.dart';

abstract class EntrepriseRepository {
  Future<List<Entreprise>> fetchEntreprisesOfBatiment(int idBatiment);
}
