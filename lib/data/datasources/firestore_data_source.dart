import 'package:app_pym/data/models/app_pym/categorie_model.dart';
import 'package:app_pym/data/models/app_pym/contact_type_model.dart';
import 'package:app_pym/data/models/app_pym/service_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

abstract class FirestoreDataSource {
  /// Retourne un observable/stream affichant les services d'une catégorie
  Stream<List<ServiceModel>> fetchServicesOf(String categorie_id);

  /// Retourne un observable/stream affichant les catégories de services
  Stream<List<CategorieModel>> fetchServiceCategories();

  /// Retourne un observable/stream affichant les contact_type d'une catégorie
  Stream<List<ContactTypeModel>> fetchContactTypesOf(String categorie_id);

  /// Retourne un observable/stream affichant les catégories de contact_type
  Stream<List<CategorieModel>> fetchContactTypeCategories();
}

@RegisterAs(FirestoreDataSource)
@prod
@lazySingleton
@injectable
class FirestoreDataSourceImpl implements FirestoreDataSource {
  final Firestore firestore;

  const FirestoreDataSourceImpl({@required this.firestore});

  @override
  Stream<List<CategorieModel>> fetchServiceCategories() async* {
    final snaps = firestore.collection('service_categories').snapshots();

    yield* snaps.map((snap) => snap.documents
        .map((document) => CategorieModel.fromFirestore(document))
        .toList());
  }

  @override
  Stream<List<ServiceModel>> fetchServicesOf(String categorie_id) async* {
    final ref =
        firestore.collection('service_categories').document(categorie_id);
    final snaps = firestore
        .collection('services')
        .where("categorie_ref", isEqualTo: ref)
        .snapshots();

    yield* snaps.map((snap) => snap.documents
        .map((document) => ServiceModel.fromFirestore(document))
        .toList());
  }

  @override
  Stream<List<CategorieModel>> fetchContactTypeCategories() async* {
    final snaps = firestore.collection('contact_categories').snapshots();

    yield* snaps.map((snap) => snap.documents
        .map((document) => CategorieModel.fromFirestore(document))
        .toList());
  }

  @override
  Stream<List<ContactTypeModel>> fetchContactTypesOf(
      String categorie_id) async* {
    final ref =
        firestore.collection('contact_categories').document(categorie_id);

    final snaps = firestore
        .collection('contact_type')
        .where("categorie_ref", isEqualTo: ref)
        .snapshots();

    yield* snaps.map((snap) => snap.documents
        .map((document) => ContactTypeModel.fromFirestore(document))
        .toList());
  }
}
