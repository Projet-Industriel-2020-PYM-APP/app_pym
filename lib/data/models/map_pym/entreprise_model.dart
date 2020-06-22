import 'package:app_pym/domain/entities/map_pym/entreprise.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'entreprise_model.g.dart';
part 'entreprise_model.freezed.dart';

@freezed
abstract class EntrepriseModel with _$EntrepriseModel {
  @HiveType(typeId: 2)
  @JsonSerializable(explicitToJson: true)
  const factory EntrepriseModel({
    @required @HiveField(0) int id,
    @nullable @required @HiveField(1) String nom,
    @nullable @required @HiveField(2) String site_internet,
    @nullable @required @HiveField(3) int nb_salaries,
    @nullable @required @HiveField(4) String telephone,
    @nullable @required @HiveField(5) String mail,
    @nullable @required @HiveField(6) String logo,
    @nullable @required @HiveField(7) int idBatiment,
  }) = _EntrepriseModel;

  factory EntrepriseModel.fromJson(Map<String, dynamic> json) =>
      _$EntrepriseModelFromJson(json);
}

TypeAdapter<EntrepriseModel> EntrepriseModelAdapter() =>
    _$_EntrepriseModelAdapter();

extension EntrepriseModelX on EntrepriseModel {
  Entreprise toEntity() {
    return Entreprise(
      id: this.id,
      logo: this.logo,
      mail: this.mail,
      nb_salaries: this.nb_salaries,
      nom: this.nom,
      site_internet: this.site_internet,
      telephone: this.telephone,
      idBatiment: this.idBatiment,
    );
  }
}
