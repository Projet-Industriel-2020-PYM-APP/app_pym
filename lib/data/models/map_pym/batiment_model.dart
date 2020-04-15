import 'package:app_pym/domain/entities/map_pym/batiment.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'batiment_model.g.dart';
part 'batiment_model.freezed.dart';

@freezed
abstract class BatimentModel with _$BatimentModel {
  @HiveType(typeId: 1)
  @JsonSerializable(explicitToJson: true)
  const factory BatimentModel({
    @required @HiveField(0) int id,
    @required @HiveField(1) String nom,
    @required @HiveField(2) int nbEtage,
    @required @HiveField(3) String description,
    @required @HiveField(4) bool accesHandicape,
    @required @HiveField(5) String url,
    @required @HiveField(6) String adresse,
  }) = _BatimentModel;

  factory BatimentModel.fromJson(Map<String, dynamic> json) =>
      _$BatimentModelFromJson(json);
}

TypeAdapter<BatimentModel> BatimentModelAdapter() => _$_BatimentModelAdapter();

extension BatimentModelX on BatimentModel {
  Batiment toEntity() {
    return Batiment(
      accesHandicape: this.accesHandicape,
      adresse: this.adresse,
      description: this.description,
      nbEtage: this.nbEtage,
      nom: this.nom,
      url: this.url,
      id: this.id,
    );
  }
}