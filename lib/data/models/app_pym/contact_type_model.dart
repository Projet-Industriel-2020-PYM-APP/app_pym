import 'package:app_pym/data/models/app_pym/action_model.dart';
import 'package:app_pym/data/models/app_pym/contact_model.dart';
import 'package:app_pym/domain/entities/app_pym/contact_type.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_type_model.freezed.dart';

@freezed
abstract class ContactTypeModel with _$ContactTypeModel {
  const factory ContactTypeModel({
    String id,
    String title,
    DocumentReference categorie_ref,
    String subtitle,
    String address,
    String img_url,
    List<ActionModel> actions,
    ContactModel contact,
  }) = _ContactTypeModel;

  factory ContactTypeModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data;

    return ContactTypeModel(
      id: doc.documentID,
      title: data['title'] as String,
      categorie_ref: data['categorie_ref'] as DocumentReference,
      subtitle: data['subtitle'] as String,
      address: data['address'] as String,
      img_url: data['img_url'] as String,
      contact: ContactModel.fromJson(data['contact'] as Map<String, dynamic>),
      actions: (data["actions"] as List)
          ?.map((dynamic e) => ActionModel.fromMap(e as Map<String, dynamic>))
          ?.toList(),
    );
  }
}

extension ContactTypeModelX on ContactTypeModel {
  ContactType toEntity() {
    return ContactType(
      id: this.id,
      title: this.title,
      categorie_ref: this.categorie_ref.toString(),
      subtitle: this.subtitle,
      address: this.address,
      img_url: this.img_url,
      actions: this.actions.map((e) => e.toEntity()).toList(),
      contact: contact.toEntity(),
    );
  }
}
