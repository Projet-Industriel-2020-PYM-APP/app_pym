part of 'services_of_categorie_bloc.dart';

abstract class ServicesOfCategorieState extends Equatable {
  const ServicesOfCategorieState();

  @override
  List<Object> get props => [];
}

class ServicesOfCategorieInitial extends ServicesOfCategorieState {
  const ServicesOfCategorieInitial();
}

class ServicesOfCategorieError extends ServicesOfCategorieState {
  final String message;

  const ServicesOfCategorieError({@required this.message});

  @override
  List<Object> get props => [message];
}

class ServicesOfCategorieLoading extends ServicesOfCategorieState {
  const ServicesOfCategorieLoading();
}

class ServicesOfCategorieLoaded extends ServicesOfCategorieState {
  final List<Service> services;

  const ServicesOfCategorieLoaded(this.services);

  @override
  List<Object> get props => services;
}
