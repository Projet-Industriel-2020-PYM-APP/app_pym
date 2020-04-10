import 'package:app_pym/data/models/app_pym/action_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class ServiceModel extends Equatable {
  final String id;
  final String title;
  final String categorie_id;
  final String subtitle;
  final String address;
  final String img_url;
  final List<ActionModel> actions;

  const ServiceModel({
    this.id,
    this.title,
    this.categorie_id,
    this.subtitle,
    this.address,
    this.img_url,
    this.actions,
  });
  @override
  List<Object> get props => <Object>[
        id,
        title,
        categorie_id,
        subtitle,
        address,
        img_url,
        actions,
      ];

  factory ServiceModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data;

    return ServiceModel(
      id: doc.documentID,
      title: data['title'] as String ?? '',
      categorie_id: data['categorie_id'] as String ?? '',
      subtitle: data['subtitle'] as String ?? '',
      address: data['address'] as String ?? '',
      img_url: data['img_url'] as String ?? '',
      actions: (data["actions"] as List)
          ?.map((dynamic e) => ActionModel.fromMap(e as Map<String, dynamic>))
          ?.toList(),
    );
  }

  @override
  bool get stringify => true;
}
