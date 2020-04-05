import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'entreprise_model.g.dart';

@HiveType(typeId: 2)
@JsonSerializable(explicitToJson: true)
class EntrepriseModel extends Equatable {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String nom;
  @HiveField(2)
  final String site_internet;
  @HiveField(3)
  final int nb_salaries;
  @HiveField(4)
  final String telephone;
  @HiveField(5)
  final String mail;
  @HiveField(6)
  final String logo;
  @HiveField(7)
  final int idBatiment;

  const EntrepriseModel({
    this.id,
    this.nom,
    this.site_internet,
    this.nb_salaries,
    this.telephone,
    this.mail,
    this.logo,
    this.idBatiment,
  });

  factory EntrepriseModel.fromJson(Map<String, dynamic> json) =>
      _$EntrepriseModelFromJson(json);

  @override
  List<Object> get props => <Object>[
        this.id,
        this.nom,
        this.site_internet,
        this.nb_salaries,
        this.telephone,
        this.mail,
        this.logo,
        this.idBatiment,
      ];

  Map<String, dynamic> toJson() => _$EntrepriseModelToJson(this);
}
