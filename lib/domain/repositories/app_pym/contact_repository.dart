import 'package:app_pym/domain/entities/app_pym/contact.dart';

abstract class ContactRepository {
  Future<Contact> fetch(int id);
}
