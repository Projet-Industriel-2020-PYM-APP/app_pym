import 'package:app_pym/domain/entities/app_pym/contact.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'contact_model.freezed.dart';
part 'contact_model.g.dart';

@freezed
abstract class ContactModel with _$ContactModel {
  @JsonSerializable(explicitToJson: true)
  @HiveType(typeId: 6)
  const factory ContactModel({
    @required @HiveField(0) int id,
    @required @nullable @HiveField(1) String nom,
    @required @nullable @HiveField(2) String prenom,
    @required @nullable @HiveField(3) String mail,
    @required @nullable @HiveField(4) String telephone,
    @required @nullable @HiveField(5) int idEntreprise,
  }) = _ContactModel;

  factory ContactModel.fromJson(Map<String, dynamic> json) =>
      _$ContactModelFromJson(json);
}

extension ContactModelX on ContactModel {
  Contact toEntity() {
    return Contact(
      id: this.id,
      nom: this.nom,
      prenom: this.prenom,
      mail: this.mail,
      telephone: this.telephone,
      idEntreprise: this.idEntreprise,
    );
  }
}

TypeAdapter<ContactModel> ContactModelAdapter() => _$_ContactModelAdapter();
