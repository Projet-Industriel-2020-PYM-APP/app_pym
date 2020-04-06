import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'batiment_model.g.dart';

@HiveType(typeId: 1)
@JsonSerializable(explicitToJson: true)
class BatimentModel extends Equatable {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String nom;
  @HiveField(2)
  final int nbEtage;
  @HiveField(3)
  final String description;
  @HiveField(4)
  final bool accesHandicape;
  @HiveField(5)
  final String url;
  @HiveField(6)
  final String adresse;

  const BatimentModel({
    this.id,
    this.nom,
    this.nbEtage,
    this.description,
    this.accesHandicape,
    this.url,
    this.adresse,
  });

  factory BatimentModel.fromJson(Map<String, dynamic> json) =>
      _$BatimentModelFromJson(json);

  @override
  List<Object> get props => <Object>[
        this.id,
        this.nom,
        this.nbEtage,
        this.description,
        this.accesHandicape,
        this.url,
        this.adresse,
      ];

  Map<String, dynamic> toJson() => _$BatimentModelToJson(this);
}
