part of 'services_bloc.dart';

abstract class ServicesEvent extends Equatable {
  const ServicesEvent();

  @override
  List<Object> get props => null;
}

class FetchCategoriesEvent extends ServicesEvent {
  const FetchCategoriesEvent();
}

class FetchServiceOfCategorieEvent extends ServicesEvent {
  const FetchServiceOfCategorieEvent();
}

class FetchServiceEvent extends ServicesEvent {
  const FetchServiceEvent();
}
