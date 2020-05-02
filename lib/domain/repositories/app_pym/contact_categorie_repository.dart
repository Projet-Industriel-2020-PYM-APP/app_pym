import 'package:app_pym/domain/entities/app_pym/contact_categorie.dart';

abstract class ContactCategorieRepository {
  Future<List<ContactCategorie>> fetchAll();
}
