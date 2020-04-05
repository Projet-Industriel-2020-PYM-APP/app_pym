import 'package:equatable/equatable.dart';

class Entreprise extends Equatable {
  final int id;
  final String nom;
  final String site_internet;
  final int nb_salaries;
  final String telephone;
  final String mail;
  final String logo;
  final int idBatiment;

  const Entreprise({
    this.id,
    this.nom,
    this.site_internet,
    this.nb_salaries,
    this.telephone,
    this.mail,
    this.logo,
    this.idBatiment,
  });

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
}
