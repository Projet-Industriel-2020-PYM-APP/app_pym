part of 'services_of_categorie_bloc.dart';

abstract class ServicesOfCategorieEvent extends Equatable {
  const ServicesOfCategorieEvent();

  @override
  List<Object> get props => [];
}

class FetchServicesOfCategorieEvent extends ServicesOfCategorieEvent {
  final Categorie categorie;

  const FetchServicesOfCategorieEvent(this.categorie);

  @override
  List<Object> get props => [categorie];
}

class RefreshServicesOfCategorieEvent extends ServicesOfCategorieEvent {
  final List<Service> services;

  const RefreshServicesOfCategorieEvent(this.services);

  @override
  List<Object> get props => services;
}
