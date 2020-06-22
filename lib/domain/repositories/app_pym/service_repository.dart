import 'package:app_pym/domain/entities/app_pym/service.dart';

abstract class ServiceRepository {
  Future<List<Service>> fetchServicesOf(int categorie_id);
}
