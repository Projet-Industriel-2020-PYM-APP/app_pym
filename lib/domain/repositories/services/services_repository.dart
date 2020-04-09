import 'package:app_pym/domain/entities/services/service.dart';
import 'package:app_pym/domain/entities/services/categorie.dart';

abstract class ServicesRepository {
  Future<List<Service>> fetchServices(Categorie categorie);
}
