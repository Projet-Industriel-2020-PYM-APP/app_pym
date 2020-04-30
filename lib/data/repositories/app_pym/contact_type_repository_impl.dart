import 'package:app_pym/data/datasources/firestore_data_source.dart';
import 'package:app_pym/data/models/app_pym/contact_type_model.dart';
import 'package:app_pym/domain/entities/app_pym/categorie.dart';
import 'package:app_pym/domain/entities/app_pym/contact_type.dart';
import 'package:app_pym/domain/repositories/app_pym/contact_type_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@prod
@RegisterAs(ContactTypeRepository)
@lazySingleton
@injectable
class ContactTypeRepositoryImpl implements ContactTypeRepository {
  final FirestoreDataSource dataSource;

  const ContactTypeRepositoryImpl({
    @required this.dataSource,
  });

  @override
  Stream<List<ContactType>> fetchContactTypesOf(Categorie categorie) async* {
    yield* dataSource
        .fetchContactTypesOf(categorie.id)
        .map((list) => list.map((e) => e.toEntity()).toList());
  }
}
