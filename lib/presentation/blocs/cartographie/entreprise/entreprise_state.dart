part of 'entreprise_bloc.dart';

abstract class EntrepriseState extends Equatable {
  const EntrepriseState();
}

class EntrepriseUnloaded extends EntrepriseState {
  const EntrepriseUnloaded();
  @override
  List<Object> get props => [];
}

class EntrepriseLoading extends EntrepriseState {
  const EntrepriseLoading();

  @override
  List<Object> get props => [];
}

class EntreprisesOfBatimentLoaded extends EntrepriseState {
  final List<Entreprise> entreprises;

  const EntreprisesOfBatimentLoaded(this.entreprises);

  @override
  List<Object> get props => [entreprises];
}

class EntrepriseError extends EntrepriseState {
  final dynamic error;

  const EntrepriseError(this.error);
  @override
  List<Object> get props => [error];
}
