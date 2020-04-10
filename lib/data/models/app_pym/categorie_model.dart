import 'package:app_pym/data/models/app_pym/action_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class CategorieModel extends Equatable {
  final String id;
  final String name;
  final ActionModel action;

  const CategorieModel({
    this.id,
    this.name,
    this.action,
  });

  @override
  List<Object> get props => <Object>[
        id,
        name,
        action,
      ];

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

  @override
  bool get stringify => true;
}
