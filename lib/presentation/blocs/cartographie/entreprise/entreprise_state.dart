part of 'entreprise_bloc.dart';

@freezed
abstract class EntrepriseState with _$EntrepriseState {
  const factory EntrepriseState.initial() = EntrepriseInitial;
  const factory EntrepriseState.entreprisesOfBatimentLoaded(
      List<Entreprise> entreprises) = EntreprisesOfBatimentLoaded;
  const factory EntrepriseState.loading() = EntrepriseLoading;
  const factory EntrepriseState.error(Exception error) = EntrepriseError;
}
