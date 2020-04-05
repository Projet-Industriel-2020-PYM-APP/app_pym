part of 'entreprise_bloc.dart';

abstract class EntrepriseEvent extends Equatable {
  const EntrepriseEvent();
}

class GetEntreprisesOfBatimentEvent extends EntrepriseEvent {
  final int idBatiment;

  const GetEntreprisesOfBatimentEvent(this.idBatiment);

  @override
  List<Object> get props => [];
}

class GetEntrepriseDetailEvent extends EntrepriseEvent {
  final int id;

  const GetEntrepriseDetailEvent(this.id);

  @override
  List<Object> get props => [];
}
