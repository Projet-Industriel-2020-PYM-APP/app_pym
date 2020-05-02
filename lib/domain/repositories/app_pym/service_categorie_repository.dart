import 'package:app_pym/domain/entities/app_pym/service_categorie.dart';

abstract class ServiceCategorieRepository {
  Future<List<ServiceCategorie>> fetchAll();
}
