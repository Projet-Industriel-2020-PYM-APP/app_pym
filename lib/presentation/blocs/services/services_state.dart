part of 'services_bloc.dart';

abstract class ServicesState extends Equatable {
  const ServicesState();

  @override
  // TODO: implement props
  List<Object> get props => [];
}

class ServicesStateInitial extends ServicesState {
  const ServicesStateInitial();
}

class CategoriesError extends ServicesState {
  final String message;

  const CategoriesError({@required this.message});

  @override
  List<Object> get props => [message];
}

class CategoriesLoading extends ServicesState {
  const CategoriesLoading();
}

class CategoriesLoaded extends ServicesState {
  final List<Categorie> categoriesList;
  const CategoriesLoaded({@required this.categoriesList});

  @override
  List<Object> get props => [categoriesList];
}

class ServiceOfCategorieLoading extends ServicesState {
  const ServiceOfCategorieLoading();
}

class ServiceOfCategorieLoaded extends ServicesState {
  final List<Service> servicesList;
  const ServiceOfCategorieLoaded({@required this.servicesList});

  @override
  List<Object> get props => [servicesList];
}
