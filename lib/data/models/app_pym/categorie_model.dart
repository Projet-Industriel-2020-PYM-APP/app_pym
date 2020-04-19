import 'package:app_pym/data/models/app_pym/action_model.dart';
import 'package:app_pym/domain/entities/app_pym/categorie.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'categorie_model.freezed.dart';

@freezed
abstract class CategorieModel with _$CategorieModel {
  const factory CategorieModel({
    String id,
    String name,
    ActionModel action,
  }) = _CategorieModel;

  factory CategorieModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data;
    return CategorieModel(
      id: doc.documentID,
      name: data['name'] as String ?? '',
      action: data["action"] == null
          ? null
          : ActionModel.fromMap(data["action"] as Map<String, dynamic>),
    );
  }
}

extension CategorieModelX on CategorieModel {
  Categorie toEntity() {
    return Categorie(
      id: this.id,
      name: this.name,
      action: this.action.toEntity(),
    );
  }
}
