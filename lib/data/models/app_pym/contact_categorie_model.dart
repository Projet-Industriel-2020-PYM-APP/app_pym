import 'package:app_pym/data/models/app_pym/action_model.dart';
import 'package:app_pym/domain/entities/app_pym/contact_categorie.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'contact_categorie_model.freezed.dart';
part 'contact_categorie_model.g.dart';

@freezed
abstract class ContactCategorieModel with _$ContactCategorieModel {
  @JsonSerializable(explicitToJson: true)
  @HiveType(typeId: 7)
  const factory ContactCategorieModel({
    @required @HiveField(0) int id,
    @nullable @required @HiveField(1) String title,
    @nullable @required @HiveField(2) String subtitle,
    @nullable @required @HiveField(3) String address,
    @nullable @required @HiveField(4) String img_url,
    @nullable @required @HiveField(5) List<ActionModel> actions,
    @nullable @required @HiveField(6) int contact_id,
  }) = _ContactCategorieModel;

  factory ContactCategorieModel.fromJson(Map<String, dynamic> json) =>
      _$ContactCategorieModelFromJson(json);
}

extension ContactCategorieModelX on ContactCategorieModel {
  ContactCategorie toEntity() {
    return ContactCategorie(
      id: this.id,
      title: this.title,
      subtitle: this.subtitle,
      address: this.address,
      img_url: this.img_url,
      actions: this.actions.map((e) => e.toEntity()).toList(),
      contact_id: contact_id,
    );
  }
}

TypeAdapter<ContactCategorieModel> ContactCategorieModelAdapter() =>
    _$_ContactCategorieModelAdapter();
