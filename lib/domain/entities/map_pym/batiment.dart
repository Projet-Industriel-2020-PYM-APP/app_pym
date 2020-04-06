import 'package:equatable/equatable.dart';

class Batiment extends Equatable {
  final int id;
  final String nom;
  final int nbEtage;
  final String description;
  final bool accesHandicape;
  final String url;
  final String adresse;

  const Batiment({
    this.id,
    this.nom,
    this.nbEtage,
    this.description,
    this.accesHandicape,
    this.url,
    this.adresse,
  });
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
}
