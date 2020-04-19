import 'package:app_pym/domain/entities/app_pym/categorie.dart';
import 'package:app_pym/domain/entities/app_pym/contact_type.dart';

abstract class ContactTypeRepository {
  Stream<List<ContactType>> fetchContactTypesOf(Categorie categorie);
}
