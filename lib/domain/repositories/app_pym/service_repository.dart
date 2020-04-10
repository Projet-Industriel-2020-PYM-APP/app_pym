import 'package:app_pym/domain/entities/app_pym/categorie.dart';
import 'package:app_pym/domain/entities/app_pym/service.dart';

abstract class ServiceRepository {
  Stream<List<Service>> fetchServicesOf(Categorie categorie);
}
