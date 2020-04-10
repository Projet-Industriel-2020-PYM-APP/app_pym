import 'package:app_pym/data/models/app_pym/categorie_model.dart';
import 'package:app_pym/data/models/app_pym/service_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

abstract class FirestoreDataSource {
  /// Retourne un observable/stream affichant les services d'une catégorie
  Stream<List<ServiceModel>> fetchServicesOf(String categorie_id);

  /// Retourne un observable/stream affichant les catégories
  Stream<List<CategorieModel>> fetchCategories();
}

@RegisterAs(FirestoreDataSource)
@prod
@lazySingleton
@injectable
class FirestoreDataSourceImpl implements FirestoreDataSource {
  final Firestore firestore;

  const FirestoreDataSourceImpl({@required this.firestore});

  @override
  Stream<List<CategorieModel>> fetchCategories() async* {
    final snaps = firestore.collection('categories').snapshots();

    yield* snaps.map((snap) => snap.documents
        .map((document) => CategorieModel.fromFirestore(document))
        .toList());
  }

  @override
  Stream<List<ServiceModel>> fetchServicesOf(String categorie_id) async* {
    final snaps = firestore
        .collection('services')
        .where("categorie_id", isEqualTo: categorie_id)
        .snapshots();

    yield* snaps.map((snap) => snap.documents
        .map((document) => ServiceModel.fromFirestore(document))
        .toList());
  }
}
