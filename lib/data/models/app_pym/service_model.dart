import 'package:app_pym/data/models/app_pym/action_model.dart';
import 'package:app_pym/domain/entities/app_pym/service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_model.freezed.dart';

@freezed
abstract class ServiceModel with _$ServiceModel {
  const factory ServiceModel({
    String id,
    String title,
    String categorie_id,
    String subtitle,
    String address,
    String img_url,
    List<ActionModel> actions,
  }) = _ServiceModel;

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
}

extension ServiceModelX on ServiceModel {
  Service toEntity() {
    return Service(
      id: this.id,
      title: this.title,
      categorie_id: this.categorie_id,
      subtitle: this.subtitle,
      address: this.address,
      img_url: this.img_url,
      actions: this.actions.map((e) => e.toEntity()).toList(),
    );
  }
}
