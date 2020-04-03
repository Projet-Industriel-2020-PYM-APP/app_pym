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

class CategoriesStateError extends ServicesState {
  final String message;

  const CategoriesStateError({@required this.message});

  @override
  List<Object> get props => [message];
}

class CategoriesStateLoading extends ServicesState {
  const CategoriesStateLoading();
}

class CategoriesStateLoaded extends ServicesState {
  final List<Categorie> categoriesList;
  const CategoriesStateLoaded({@required this.categoriesList});

  @override
  List<Object> get props => [categoriesList];
}

class ServiceOfCategorieStateLoading extends ServicesState {
  const ServiceOfCategorieStateLoading();
}

class ServiceOfCategorieStateLoaded extends ServicesState {
  final List<Service> servicesList;
  const ServiceOfCategorieStateLoaded({@required this.servicesList});

  @override
  List<Object> get props => [servicesList];
}
