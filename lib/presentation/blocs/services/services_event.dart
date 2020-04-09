part of 'services_bloc.dart';

abstract class ServicesEvent extends Equatable {
  const ServicesEvent();

  @override
  List<Object> get props => [];
}

class FetchCategoriesEvent extends ServicesEvent {
  const FetchCategoriesEvent();
}

class FetchServicesOfCategorieEvent extends ServicesEvent {
  const FetchServicesOfCategorieEvent();
}

class FetchServiceEvent extends ServicesEvent {
  const FetchServiceEvent();
}
