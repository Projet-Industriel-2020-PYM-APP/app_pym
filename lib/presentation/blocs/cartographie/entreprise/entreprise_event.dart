part of 'entreprise_bloc.dart';

@freezed
abstract class EntrepriseEvent with _$EntrepriseEvent {
  const factory EntrepriseEvent.getEntreprisesOfBatiment(int idBatiment) =
      GetEntreprisesOfBatimentEvent;
}
