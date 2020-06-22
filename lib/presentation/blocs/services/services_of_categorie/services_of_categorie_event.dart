part of 'services_of_categorie_bloc.dart';

@freezed
abstract class ServicesOfCategorieEvent with _$ServicesOfCategorieEvent {
  const factory ServicesOfCategorieEvent.fetch(ServiceCategorie categorie) =
      FetchServicesOfCategorieEvent;
  const factory ServicesOfCategorieEvent.refresh(List<Service> services) =
      RefreshServicesOfCategorieEvent;
}
