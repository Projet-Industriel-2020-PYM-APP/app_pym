import 'package:app_pym/data/models/app_pym/action_model.dart';
import 'package:app_pym/domain/entities/app_pym/categorie.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart' show Color;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'categorie_model.freezed.dart';

@freezed
abstract class CategorieModel with _$CategorieModel {
  const factory CategorieModel({
    String id,
    String name,
    String primary_color,
    String img_url,
    ActionModel action,
  }) = _CategorieModel;

  factory CategorieModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data;
    return CategorieModel(
      id: doc.documentID,
      name: data['name'] as String,
      primary_color: data['primary_color'] as String,
      img_url: data['img_url'] as String,
      action: data["action"] == null
          ? null
          : ActionModel.fromMap(data["action"] as Map<String, dynamic>),
    );
  }
}

extension on String {
  Color toColor() {
    final int color = int.tryParse(this, radix: 16);
    return color != null ? Color(color) : null;
  }
}

extension CategorieModelX on CategorieModel {
  Categorie toEntity() {
    return Categorie(
      id: this.id,
      name: this.name,
      primary_color: this.primary_color?.toColor(),
      img_url: img_url,
      action: this.action?.toEntity(),
    );
  }
}
